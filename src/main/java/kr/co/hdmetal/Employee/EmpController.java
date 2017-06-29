package kr.co.hdmetal.Employee;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.hdmetal.VO.HdEmpAcademicVO;
import kr.co.hdmetal.VO.HdEmpCareerVO;
import kr.co.hdmetal.VO.HdEmpFamilyVO;
import kr.co.hdmetal.VO.HdEmpFileVO;
import kr.co.hdmetal.VO.HdEmpLicenseVO;
import kr.co.hdmetal.VO.HdEmployeeVO;


@Controller
public class EmpController {
	
	@Autowired
	private EmpService service;
	
	@Autowired
	private ServletContext servletContext;
	
	
	
	@RequestMapping("/empRegist")
	public String empRegist(){
		return "employee/empRegist";
	}
	
    @RequestMapping("/empList")
	public ModelAndView empList(ModelAndView mav){
        mav.addObject("list",service.employeeList());
		mav.setViewName("employee/empList");
		return mav;
	}
    
    @RequestMapping("/empEditView")
	public ModelAndView empEditView(@RequestParam("emp_no") String emp_no,ModelAndView mav){
		mav.setViewName("employee/empEditView");
		mav.addObject("emp",service.employeeAll(emp_no));
		mav.addObject("school",service.empSchoolSelect(emp_no));
		mav.addObject("family",service.empFamilySelect(emp_no));
		mav.addObject("career",service.empCareerSelect(emp_no));
		mav.addObject("license",service.empLicenseSelect(emp_no));
		mav.addObject("image",service.imageSelect(emp_no));
		return mav;
	}
    
    @RequestMapping("/empEditDetail")
    public ModelAndView empEditDetail(@RequestParam("emp_no") String emp_no,ModelAndView mav){
    	mav.setViewName("employee/empEditDetail");
		mav.addObject("emp",service.employeeAll(emp_no));
		mav.addObject("school",service.empSchoolSelect(emp_no));
		mav.addObject("family",service.empFamilySelect(emp_no));
		mav.addObject("career",service.empCareerSelect(emp_no));
		mav.addObject("license",service.empLicenseSelect(emp_no));
		return mav;
    }
	
	@RequestMapping(value="/empImageUpload",method=RequestMethod.POST)
    public void empImageUpload(@RequestParam HashMap<String, Object> map, 
    		HttpServletRequest req) throws Exception{
		String uploadDir = servletContext.getRealPath("/upload/");
		SimpleDateFormat pathFormat = new SimpleDateFormat("yyyy/MM/dd/");
		String detailPath = pathFormat.format(new Date());
		uploadDir += detailPath;
		File pathFile = new File(uploadDir);
		pathFile.mkdirs();
		
        ArrayList<HdEmpFileVO> fileList = new ArrayList<HdEmpFileVO>();
		MultipartHttpServletRequest mreq = (MultipartHttpServletRequest)req;
		Iterator<String> files = mreq.getFileNames();
		while(files.hasNext()) {
			String fileName = files.next();
			
			MultipartFile mFile = mreq.getFile(fileName);
			
			String oriFileName = mFile.getOriginalFilename();
			if(oriFileName != null && !oriFileName.equals("")) {
				HdEmpFileVO file = new HdEmpFileVO();
				
				String ext = "";
				int idx = oriFileName.lastIndexOf(".");
				if(idx != -1) {
					ext = oriFileName.substring(idx);
				}
				
				String saveFileName = "emp-" + UUID.randomUUID().toString() + ext;
				
				mFile.transferTo(new File(uploadDir + "/" +saveFileName));
				
				String emp_no = (String)map.get("emp[emp_no]");
				System.out.println("emp_no::::::"+emp_no);
				file.setEmp_no(emp_no);
				file.setOriFileName(oriFileName);
				file.setRealFileName(saveFileName);
				file.setFilePath(detailPath);
				fileList.add(file);	
			}
			
		}
		service.imageUpload(fileList);
		
	}
    
    @RequestMapping(value="/empInsertAll",method=RequestMethod.POST)
	public @ResponseBody void empInsertAll(@RequestParam HashMap<String, Object> map,
			HdEmployeeVO emp, HdEmpAcademicVO school,HdEmpLicenseVO license,
			HdEmpCareerVO career,HdEmpFamilyVO family){
		
		emp.setEmp_no((String)map.get("info[emp_no]")==null ? " ":(String)map.get("info[emp_no]"));
		emp.setAge((String)map.get("info[age]")==null ? " ":(String)map.get("info[age]"));
		emp.setEmp_name((String)map.get("info[emp_name]")==null ? " ":(String)map.get("info[emp_name]"));
		emp.setPeople_no((String)map.get("info[people_no]")==null ? " ":(String)map.get("info[people_no]"));
		emp.setEng_name((String)map.get("info[eng_name]")==null ? " ":(String)map.get("info[eng_name]"));
		
		emp.setEntrance_date((String)map.get("info[entrance_date]")==null ? " ":(String)map.get("info[entrance_date]"));
		emp.setQuit_date((String)map.get("info[quit_date]")==null ? " ":(String)map.get("info[quit_date]"));
		emp.setHobby_name((String)map.get("info[hobby_name]")==null ? " ":(String)map.get("info[hobby_name]"));
		emp.setSpecial_ability((String)map.get("info[special_ability]")==null ? " ":(String)map.get("info[special_ability]"));
		emp.setArm_service((String)map.get("info[arm_service]")==null ? " ":(String)map.get("info[arm_service]"));
		
		emp.setMilitary_class((String)map.get("info[military_class]")==null ? " ":(String)map.get("info[military_class]"));
		emp.setMilitary_reason((String)map.get("info[military_reason]")==null ? " ":(String)map.get("info[military_reason]"));
		emp.setMilitary_start_date((String)map.get("info[military_start_date]")==null ? " ":(String)map.get("info[military_start_date]"));
		emp.setMilitary_end_date((String)map.get("info[military_end_date]")==null ? " ":(String)map.get("info[military_end_date]"));
		emp.setAddress((String)map.get("info[address]")==null ? " ":(String)map.get("info[address]"));
		
		emp.setHandphone_num((String)map.get("info[handphone_num]")==null ? " ":(String)map.get("info[handphone_num]"));
		emp.setBirthday((String)map.get("info[birthday]")==null ? " ":(String)map.get("info[birthday]"));
		emp.setGender((String)map.get("info[gender]")==null ? " ":(String)map.get("info[gender]"));
		emp.setSalary((String)map.get("info[salary]")==null ? " ":(String)map.get("info[salary]"));
		emp.setEmp_position((String)map.get("info[emp_position]")==null ? " ":(String)map.get("info[emp_position]"));
		
		emp.setDepart_name((String)map.get("info[emp_position]")==null ? " ":(String)map.get("info[depart_name]"));
		service.insertInfo(emp);
		
		int family_num =Integer.parseInt((String)map.get("list[family_list]"));
		int school_num =Integer.parseInt((String)map.get("list[school_list]"));
		int license_num =Integer.parseInt((String)map.get("list[license_list]"));
		int career_num =Integer.parseInt((String)map.get("list[career_list]"));
		
		for(int i=0; i<family_num; i++){
			family.setEmp_no((String)map.get("info[emp_no]")==null ? " ":(String)map.get("info[emp_no]"));
			family.setFamily_relation((String)map.get("familys[value]["+i+"][family_relation]")==null ? " ":(String)map.get("familys[value]["+i+"][family_relation]"));
			family.setFamily_name((String)map.get("familys[value]["+i+"][family_name]")==null ? " ":(String)map.get("familys[value]["+i+"][family_name]"));
			family.setFamily_age((String)map.get("familys[value]["+i+"][family_age]")==null ? " ":(String)map.get("familys[value]["+i+"][family_age]"));
			service.familyInsert(family);
		}
		
		for(int i=0; i<career_num; i++){
			career.setEmp_no((String)map.get("info[emp_no]")==null ? " ":(String)map.get("info[emp_no]"));
			career.setCompany_name((String)map.get("careers[value]["+i+"][company_name]")==null ? " ":(String)map.get("careers[value]["+i+"][company_name]"));
			career.setWork_period((String)map.get("careers[value]["+i+"][work_period]")==null ? " ":(String)map.get("careers[value]["+i+"][work_period]"));
			career.setCareer_depart((String)map.get("careers[value]["+i+"][career_depart]")==null ? " ":(String)map.get("careers[value]["+i+"][career_depart]"));
			career.setCareer_position((String)map.get("careers[value]["+i+"][career_position]")==null ? " ":(String)map.get("careers[value]["+i+"][career_position]"));
			service.careerInsert(career);
		}
		
		for(int i=0; i<school_num; i++){
			school.setEmp_no((String)map.get("info[emp_no]")==null ? " ":(String)map.get("info[emp_no]"));
			school.setSchool_name((String)map.get("schools[value]["+i+"][school_name]")==null ? " ":(String)map.get("schools[value]["+i+"][school_name]"));
			school.setSchool_start_date((String)map.get("schools[value]["+i+"][school_start_date]")==null ? " ":(String)map.get("schools[value]["+i+"][school_start_date]"));
			school.setSchool_end_date((String)map.get("schools[value]["+i+"][school_end_date]")==null ? " ":(String)map.get("schools[value]["+i+"][school_end_date]"));
			school.setSchool_location((String)map.get("schools[value]["+i+"][school_location]")==null ? " ":(String)map.get("schools[value]["+i+"][school_location]"));
			service.schoolInsert(school);
		}
		
		for(int i=0; i<license_num; i++){
			license.setEmp_no((String)map.get("info[emp_no]")==null ? " ":(String)map.get("info[emp_no]"));
			license.setLicense_name((String)map.get("licenses[value]["+i+"][license_name]")==null ? " ":(String)map.get("licenses[value]["+i+"][license_name]"));
			license.setLicense_date((String)map.get("licenses[value]["+i+"][license_date]")==null ? " ":(String)map.get("licenses[value]["+i+"][license_date]"));
			service.licenseInsert(license);
		}
	}
	
	@RequestMapping(value="/updateEmp",method=RequestMethod.POST)
	public @ResponseBody void updateEmp(@RequestParam HashMap<String, Object> map,
			HdEmployeeVO emp, HdEmpAcademicVO school,HdEmpLicenseVO license,
			HdEmpCareerVO career,HdEmpFamilyVO family){
		
		String emp_no =  (String)map.get("info[emp_no]");
		emp.setEmp_no((String)map.get("info[emp_no]")==null ? " ":(String)map.get("info[emp_no]"));
		emp.setAge((String)map.get("info[age]")==null ? " ":(String)map.get("info[age]"));
		emp.setEmp_name((String)map.get("info[emp_name]")==null ? " ":(String)map.get("info[emp_name]"));
		emp.setPeople_no((String)map.get("info[people_no]")==null ? " ":(String)map.get("info[people_no]"));
		emp.setEng_name((String)map.get("info[eng_name]")==null ? " ":(String)map.get("info[eng_name]"));
		
		emp.setEntrance_date((String)map.get("info[entrance_date]")==null ? " ":(String)map.get("info[entrance_date]"));
		emp.setQuit_date((String)map.get("info[quit_date]")==null ? " ":(String)map.get("info[quit_date]"));
		emp.setHobby_name((String)map.get("info[hobby_name]")==null ? " ":(String)map.get("info[hobby_name]"));
		emp.setSpecial_ability((String)map.get("info[special_ability]")==null ? " ":(String)map.get("info[special_ability]"));
		emp.setArm_service((String)map.get("info[arm_service]")==null ? " ":(String)map.get("info[arm_service]"));
		
		emp.setMilitary_class((String)map.get("info[military_class]")==null ? " ":(String)map.get("info[military_class]"));
		emp.setMilitary_reason((String)map.get("info[military_reason]")==null ? " ":(String)map.get("info[military_reason]"));
		emp.setMilitary_start_date((String)map.get("info[military_start_date]")==null ? " ":(String)map.get("info[military_start_date]"));
		emp.setMilitary_end_date((String)map.get("info[military_end_date]")==null ? " ":(String)map.get("info[military_end_date]"));
		emp.setAddress((String)map.get("info[address]")==null ? " ":(String)map.get("info[address]"));
		
		emp.setHandphone_num((String)map.get("info[handphone_num]")==null ? " ":(String)map.get("info[handphone_num]"));
		emp.setBirthday((String)map.get("info[birthday]")==null ? " ":(String)map.get("info[birthday]"));
		emp.setGender((String)map.get("info[gender]")==null ? " ":(String)map.get("info[gender]"));
		emp.setSalary((String)map.get("info[salary]")==null ? " ":(String)map.get("info[salary]"));
		emp.setEmp_position((String)map.get("info[emp_position]")==null ? " ":(String)map.get("info[emp_position]"));
		
		emp.setDepart_name((String)map.get("info[emp_position]")==null ? " ":(String)map.get("info[depart_name]"));
		service.updateInfo(emp);
		
		int family_num =Integer.parseInt((String)map.get("list[family_list]"));
		int school_num =Integer.parseInt((String)map.get("list[school_list]"));
		int license_num =Integer.parseInt((String)map.get("list[license_list]"));
		int career_num =Integer.parseInt((String)map.get("list[career_list]"));
		
	    ArrayList<HdEmpFamilyVO> familyList = new ArrayList<HdEmpFamilyVO>();
	    for(int i=0; i<family_num; i++){
			family.setEmp_no((String)map.get("info[emp_no]")==null ? " ":(String)map.get("info[emp_no]"));
			family.setFamily_relation((String)map.get("familys[value]["+i+"][family_relation]")==null ? " ":(String)map.get("familys[value]["+i+"][family_relation]"));
			family.setFamily_name((String)map.get("familys[value]["+i+"][family_name]")==null ? " ":(String)map.get("familys[value]["+i+"][family_name]"));
			family.setFamily_age((String)map.get("familys[value]["+i+"][family_age]")==null ? " ":(String)map.get("familys[value]["+i+"][family_age]"));
			familyList.add(family);
		 }
		service.deleteFamily(emp_no);
		for(int i=0; i<familyList.size(); i++){
			service.familyInsert(familyList.get(i));
		}
		
		ArrayList<HdEmpCareerVO> careerList = new ArrayList<HdEmpCareerVO>();
		for(int i=0; i<career_num; i++){
			career.setEmp_no((String)map.get("info[emp_no]")==null ? " ":(String)map.get("info[emp_no]"));
			career.setCompany_name((String)map.get("careers[value]["+i+"][company_name]")==null ? " ":(String)map.get("careers[value]["+i+"][company_name]"));
			career.setWork_period((String)map.get("careers[value]["+i+"][work_period]")==null ? " ":(String)map.get("careers[value]["+i+"][work_period]"));
			career.setCareer_depart((String)map.get("careers[value]["+i+"][career_depart]")==null ? " ":(String)map.get("careers[value]["+i+"][career_depart]"));
			career.setCareer_position((String)map.get("careers[value]["+i+"][career_position]")==null ? " ":(String)map.get("careers[value]["+i+"][career_position]"));
			careerList.add(career);
		}
		service.deleteCareer(emp_no);
		for(int i=0; i<careerList.size();i++){
			service.careerInsert(careerList.get(i));
		}
		
		ArrayList<HdEmpAcademicVO> schoolList = new ArrayList<HdEmpAcademicVO>();
		for(int i=0; i<school_num; i++){
			school.setEmp_no((String)map.get("info[emp_no]")==null ? " ":(String)map.get("info[emp_no]"));
			school.setSchool_name((String)map.get("schools[value]["+i+"][school_name]")==null ? " ":(String)map.get("schools[value]["+i+"][school_name]"));
			school.setSchool_start_date((String)map.get("schools[value]["+i+"][school_start_date]")==null ? " ":(String)map.get("schools[value]["+i+"][school_start_date]"));
			school.setSchool_end_date((String)map.get("schools[value]["+i+"][school_end_date]")==null ? " ":(String)map.get("schools[value]["+i+"][school_end_date]"));
			school.setSchool_location((String)map.get("schools[value]["+i+"][school_location]")==null ? " ":(String)map.get("schools[value]["+i+"][school_location]"));
			schoolList.add(school);
		}
		service.deleteSchool(emp_no);
		for(int i =0; i<schoolList.size(); i++){
			service.schoolInsert(schoolList.get(i));
		}
		
		ArrayList<HdEmpLicenseVO> licenseList = new ArrayList<HdEmpLicenseVO>();
		for(int i=0; i<license_num; i++){
			license.setEmp_no((String)map.get("info[emp_no]")==null ? " ":(String)map.get("info[emp_no]"));
			license.setLicense_name((String)map.get("licenses[value]["+i+"][license_name]")==null ? " ":(String)map.get("licenses[value]["+i+"][license_name]"));
			license.setLicense_date((String)map.get("licenses[value]["+i+"][license_date]")==null ? " ":(String)map.get("licenses[value]["+i+"][license_date]"));
			licenseList.add(license);
		}
		service.deleteLicense(emp_no);
		for(int i=0; i<licenseList.size(); i++){
			service.licenseInsert(licenseList.get(i));
		}
	
	}
	
}
