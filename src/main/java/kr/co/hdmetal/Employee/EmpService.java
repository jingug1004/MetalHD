package kr.co.hdmetal.Employee;

import java.util.List;

import kr.co.hdmetal.VO.HdEmpAcademicVO;
import kr.co.hdmetal.VO.HdEmpCareerVO;
import kr.co.hdmetal.VO.HdEmpFamilyVO;
import kr.co.hdmetal.VO.HdEmpFileVO;
import kr.co.hdmetal.VO.HdEmpLicenseVO;
import kr.co.hdmetal.VO.HdEmployeeVO;

public interface EmpService {
	
	public void insertInfo(HdEmployeeVO vo);
	public void licenseInsert(HdEmpLicenseVO vo);
	public void careerInsert(HdEmpCareerVO vo);
	public void familyInsert(HdEmpFamilyVO vo);
	public void schoolInsert(HdEmpAcademicVO vo);
	
	public void imageUpload(List<HdEmpFileVO> list);
	
	public List<HdEmployeeVO> employeeList();
	public HdEmployeeVO employeeAll(String emp_no);
	public List<HdEmpAcademicVO> empSchoolSelect(String emp_no);
	public List<HdEmpFamilyVO> empFamilySelect(String emp_no);
	public List<HdEmpCareerVO> empCareerSelect(String emp_no);
	public List<HdEmpLicenseVO> empLicenseSelect(String emp_no);
	public List<HdEmpFileVO> imageSelect(String emp_no);
	
	public void updateInfo(HdEmployeeVO vo);
	public void deleteLicense(String emp_no);
	public void deleteCareer(String emp_no);
	public void deleteFamily(String emp_no);
	public void deleteSchool(String emp_no);
	

}
