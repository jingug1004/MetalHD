package kr.co.hdmetal.Employee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hdmetal.VO.HdEmpAcademicVO;
import kr.co.hdmetal.VO.HdEmpCareerVO;
import kr.co.hdmetal.VO.HdEmpFamilyVO;
import kr.co.hdmetal.VO.HdEmpFileVO;
import kr.co.hdmetal.VO.HdEmpLicenseVO;
import kr.co.hdmetal.VO.HdEmployeeVO;

@Service
public class EmpServiceImpl implements EmpService{

	@Autowired
	private EmpDAO dao;
	
	
	@Override
	public void insertInfo(HdEmployeeVO vo) {
		dao.insertInfo(vo);
		
	}

	@Override
	public void licenseInsert(HdEmpLicenseVO vo) {
		dao.licenseInsert(vo);
		
	}

	@Override
	public void careerInsert(HdEmpCareerVO vo) {
		dao.careerInsert(vo);
		
	}

	@Override
	public void familyInsert(HdEmpFamilyVO vo) {
		dao.familyInsert(vo);
		
	}

	@Override
	public void schoolInsert(HdEmpAcademicVO vo) {
		dao.schoolInsert(vo);
		
	}
	
	public List<HdEmployeeVO> employeeList(){
		return dao.employeeList();
	}

	@Override
	public HdEmployeeVO employeeAll(String emp_no) {
		return dao.employeeAll(emp_no);
	}

	@Override
	public List<HdEmpAcademicVO> empSchoolSelect(String emp_no) {
		return dao.empSchoolSelect(emp_no);
	}

	@Override
	public List<HdEmpFamilyVO> empFamilySelect(String emp_no) {
		return dao.empFamilySelect(emp_no);
	}

	@Override
	public List<HdEmpCareerVO> empCareerSelect(String emp_no) {
		return dao.empCareerSelect(emp_no);
	}

	@Override
	public List<HdEmpLicenseVO> empLicenseSelect(String emp_no) {
		return dao.empLicenseSelect(emp_no);
	}
	
	public List<HdEmpFileVO> imageSelect(String emp_no){
		return dao.imageSelect(emp_no);
	}

	@Override
	public void updateInfo(HdEmployeeVO vo) {
		dao.updateInfo(vo);
	}

	@Override
	public void deleteLicense(String emp_no) {
		dao.deleteLicense(emp_no);
	}

	@Override
	public void deleteCareer(String emp_no) {
		dao.deleteCareer(emp_no);
	}

	@Override
	public void deleteFamily(String emp_no) {
		dao.deleteFamily(emp_no);
	}

	@Override
	public void deleteSchool(String emp_no) {
	    dao.deleteSchool(emp_no);
	}
	
	public void imageUpload(List<HdEmpFileVO> list){
		for(int i=0; i<list.size(); i++){
			dao.imageUpload(list.get(i));
		}
		
	}
	
	
	
}
