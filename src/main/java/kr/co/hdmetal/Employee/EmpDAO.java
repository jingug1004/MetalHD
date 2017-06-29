package kr.co.hdmetal.Employee;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.hdmetal.VO.HdEmpAcademicVO;
import kr.co.hdmetal.VO.HdEmpCareerVO;
import kr.co.hdmetal.VO.HdEmpFamilyVO;
import kr.co.hdmetal.VO.HdEmpFileVO;
import kr.co.hdmetal.VO.HdEmpLicenseVO;
import kr.co.hdmetal.VO.HdEmployeeVO;

@Repository
public class EmpDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public void insertInfo(HdEmployeeVO vo){
		sqlSession.insert("employeeInsert.insertEmp",vo);
		sqlSession.insert("employeeInsert.personalInfo",vo);
		sqlSession.insert("employeeInsert.management",vo);
		sqlSession.insert("employeeInsert.hobbyInsert",vo);
		sqlSession.insert("employeeInsert.companyInsert",vo);
		sqlSession.insert("employeeInsert.militaryInsert",vo);
	}
	
	public void licenseInsert(HdEmpLicenseVO vo){
		sqlSession.insert("employeeInsert.licenseInsert",vo);
	}
	
	public void careerInsert(HdEmpCareerVO vo){
		sqlSession.insert("employeeInsert.careerInsert",vo);
	}
	
	public void familyInsert(HdEmpFamilyVO vo){
		sqlSession.insert("employeeInsert.familyInsert",vo);
	}
	
	public void schoolInsert(HdEmpAcademicVO vo){
		sqlSession.insert("employeeInsert.schoolInsert",vo);
	}
	
	public void imageUpload(HdEmpFileVO vo){
		sqlSession.insert("employeeInsert.imageUpload",vo);
	}
	
	public List<HdEmployeeVO> employeeList(){
		return sqlSession.selectList("employeeEdit.employeeList");
	}
	
	public HdEmployeeVO employeeAll(String emp_no){
		return sqlSession.selectOne("employeeEdit.employeeAll",emp_no);
	}
	
	public List<HdEmpAcademicVO> empSchoolSelect(String emp_no){
		return sqlSession.selectList("employeeEdit.empSchoolSelect",emp_no);
	}
	
	public List<HdEmpFileVO> imageSelect(String emp_no){
		return sqlSession.selectList("employeeEdit.imageSelect",emp_no);
	}
	
	public List<HdEmpFamilyVO> empFamilySelect(String emp_no){
		return sqlSession.selectList("employeeEdit.empFamilySelect",emp_no);
	}
	
	public List<HdEmpCareerVO> empCareerSelect(String emp_no){
		return sqlSession.selectList("employeeEdit.empCareerSelect",emp_no);
	}
	
	public List<HdEmpLicenseVO> empLicenseSelect(String emp_no){
		return sqlSession.selectList("employeeEdit.empLicenseSelect",emp_no);
	}
	
	public void updateInfo(HdEmployeeVO vo){
		sqlSession.update("employeeUpdate.updateEmp",vo);
		sqlSession.update("employeeUpdate.updateCompany",vo);
		sqlSession.update("employeeUpdate.updateHobby",vo);
		sqlSession.update("employeeUpdate.updateMilitary",vo);
		sqlSession.update("employeeUpdate.updatePi",vo);
		sqlSession.update("employeeUpdate.updatePm",vo);
	}
	
	public void deleteSchool(String emp_no){
		sqlSession.delete("employeeUpdate.deleteSchool",emp_no);
	}
	
	public void deleteCareer(String emp_no){
		sqlSession.delete("employeeUpdate.deleteCareer",emp_no);
	}
	
	public void deleteFamily(String emp_no){
		sqlSession.delete("employeeUpdate.deleteFamily",emp_no);
	}
	
	public void deleteLicense(String emp_no){
		sqlSession.delete("employeeUpdate.deleteLicense",emp_no);
	}
	

}
