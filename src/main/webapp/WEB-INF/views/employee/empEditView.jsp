<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div style="width: 100%; overflow: hidden;">
    <div>
         <table>
                         <tr>
                              <th rowspan="3" >사진</th>
                              <th width="15%">사원번호</th>
                              <td width="20%"><input type="text" id="emp_no" name="emp_no"
								class="empNo" value=${emp.emp_no }
								placeholder="0000-000" onkeydown='return onlyNumber(event)'
								onkeyup='removeChar(event)' style='ime-mode: disabled;'>
							</td>
                              <th width="10%">성명</th>
                              <td width="15%"><input type="text" id="emp_name" class="emp_name" value=${emp.emp_name }></td>
                              <th width="10%">영문</th>
                              <td width="15%"><input type="text" id="eng_name" class="chkval" value=${emp.eng_name }></td>
                         </tr>
                         <tr>
                              <th>주민등록번호</th>
                              <td><input type="text" id="people_no" name="peopleNo"
								class="peopleNo" value=${emp.people_no }
								placeholder="000000-0000000" onkeydown='return onlyNumber(event)'
								onkeyup='removeChar(event)' style='ime-mode: disabled;'>
							</td>
                              <th>성별</th>
                              <td>
                              <c:choose>
                                 <c:when test="${emp.gender eq '남'}">
                                      <input type="checkbox" id="gender" class="chkval" value="남" checked="checked">남
                                      <input type="checkbox" id="gender" class="chkval" value="여">여</td>
                                 </c:when>
                                 <c:when test="${emp.gender eq '여'}">
                                       <input type="checkbox" id="gender" class="chkval" value="남">남
                                      <input type="checkbox" id="gender" class="chkval" value="여" checked="checked">여</td>
                                  </c:when>
                                </c:choose>
                              <th>생년월일</th>
                              <td><input type="date" id="birthday" name="birthday"
								class="chkval" value=${emp.birthday }></td>
                         </tr>
                         <tr>
                             <th>주소</th>
                             <td><input type="text" id="address" class="chkval" value=${emp.address }></td>
                             <th>핸드폰번호</th>
                             <td><input type="text" id="handphone_num" name="handphone_num"
								class="chkval phone" value=${emp.handphone_num }
								placeholder="010-0000-0000" onkeydown='return onlyNumber(event)'
								onkeyup='removeChar(event)' style='ime-mode: disabled;'>
							</td>
                             <th>연령</th>
                             <td><input type="text" id="age" class="chkval" value=${emp.age }></td>
                 </table>	
              </div>
              </br>
              <div style="width: 100%; overflow: hidden;">
                 <table>
                        <tr>
                             <th width="10%">부서</th>
                             <td width="20%"><input type ="text" id="depart_name" class="chkval" value=${emp.depart_name }></td>
                             <th width="10%">직급</th>
                             <td width="15%"><input type ="text" id="emp_position" class="chkval" value=${emp.emp_position }></td>
                             <th width="10%">연봉</th>
                             <td><input type ="text" id="salary" class="chkval" value=${emp.salary }></td>
                             <th width="10%">취미</th>
                             <td><input type ="text" id="hobby_name" class="chkval" value=${emp.hobby_name }></td>
                        </tr>
                        <tr>
                             <th>입사일</th>
                              <td colspan="2"><input type="date" id="entrance_date" name="entrance_date"
								class="chkval" value=${emp.entrance_date }></td>
                              <th>퇴사일</th>
                              <td colspan="2"><input type="date" id="quit_date" class="chkval" value=${emp.quit_date }></td>
                             <th>특기</th>
                             <td><input type="text" id="special_ability" class="chkval" value=${emp.special_ability }></td>
                        </tr>
                  </table>
                </div>
                </br>
                
                <h3>가족사항</h3>
                 <table style="width: 100%">
                   <thead> 
                       <tr>
                            <th>NO</th>
                            <th>관계</th>
                            <th>성명</th>
                            <th>연령</th>
                       </tr>
                     </thead>
                     <tbody id="familyBody">
			        <c:forEach items="${family }" var="f" varStatus="i">
			           <tr class="familyList">
					        <th class="fnum">${i.index+1 }</th>
                            <td><input type="text" id="family_relation" name="family_relation" class="chkval" value=${f.family_relation }></td>
                            <td><input type="text" id="family_name"  name="family_name" class="chkval" value=${f.family_name }></td>
                            <td><input type="text" id="family_age"  name=family_age" class="chkval" value=${f.family_age }></td>
                       </tr>
                     </c:forEach>
                     </tbody> 
                  </table>
                  
                <h3>학력</h3>
                  <table style="width: 100%">
                     <thead>
                       <tr>
                            <th>NO</th>
                            <th>학교명</th>
                            <th>입학일</th>
                            <th>졸업일</th>
                            <th>위치</th>
                       </tr>
                      </thead>
                     <tbody id="schoolBody">
			          <c:forEach items="${school }" var="s" varStatus="i">
			           <tr class="schoolList">
					        <th class="snum">${i.index+1 }</th>
                            <td><input type="text" id="school_name"  name="school_name" class="chkval" value=${s.school_name }></td>
                            <td><input type="date" id="school_start_date" name="school_start_date" class="chkval" value=${s.school_start_date }></td>
                            <td><input type="date" id="school_end_date" name="school_end_date" class="chkval" value=${s.school_end_date }></td>
                            <td><input type="text" id="school_location" name="school_location" class="chkval" value=${s.school_location }></td>
                       </tr>
                       </c:forEach>
                      </tbody> 
                  </table>
                  
                  <h3>병역</h3>
                  <table>
                           <tr>
                              <th>군별</th>
                              <th>계급</th>
                              <th>입대일</th>
                              <th>전역일</th>
                              <th>미필사유</th>
                          </tr>
                           
                           <tr>
                               <td><input type="text"  id="arm_service" class="chkval" value=${emp.arm_service }></td>
                               <td><input type="text"  id="military_class" class="chkval" value=${emp.military_class }></td>
                               <td><input type="date"  id="military_start_date" class="chkval" value=${emp.military_start_date }></td>
                               <td><input type="date"  id="military_end_date" class="chkval" value=${emp.military_end_date }></td>
                               <td><input type="text"  id="military_reason"  value=${emp.military_reason }></td>
                          </tr>
                  </table>
                  
                <h3>자격증</h3>
                 <table style="width: 100%">
                    <thead> 
                       <tr>
                            <th>NO</th>
                            <th>자격증명</th>
                            <th>취득일</th>
                       </tr>
                      <thead>
                     <tbody id="licenseBody">
			        <c:forEach items="${license }" var="l" varStatus="i">
			           <tr class="licenseList">
					        <th class="lnum">${i.index+1 }</th>
                            <td><input type="text" id="license_name"  name="license_name" class="chkval" value=${l.license_name }></td>
                            <td><input type="date" id="license_date"  name="license_date" class="chkval" value=${l.license_date }></td>
                       </tr>
                      </c:forEach>
                      </tbody> 
                  </table>
                  
                <h3>경력사항</h3>
                <table style="width: 100%">
                   <thead>
                       <tr>
                            <th>NO</th>
                            <th>회사명</th>
                            <th>기간</th>
                            <th>부서명</th>
                            <th>직급</th>
                      </tr>
                     <thead>
                     <tbody id="careerBody">
			          <c:forEach items="${career }"  var="c" varStatus="i">
			           <tr class="careerList">
					        <th class="cnum">${i.index+1 }</th>
                            <td><input type="text" id="company_name"  name="company_name" class="chkval" value=${c.company_name }></td>
                            <td><input type="text" id="work_period" name="work_period" class="chkval" value=${c.work_period }></td>
                            <td><input type="text" id="career_depart"  name="career_depart" class="chkval" value=${c.career_depart }></td>
                            <td><input type="text" id="career_position" name="career_position" class="chkval" value=${c.career_position }></td>
                       </tr>
                       </c:forEach>
                      </tbody> 
                  </table>         
                 <br>
                </div>
               <div style="float: right;">
                  <button type="button" id="edit" class="btn btn-gradient btn-success">수정</button>
		          <button type="button" id="cancel" class="btn btn-gradient btn-primary">취소</button>
	          </div>
	      



<script src="resources/js/jquery-2.2.3.js"></script>
<script src="resources/js/custom/employee/employeefunction.js"></script>
<script>
$(function(){
	$('input').attr("readonly", true);
	$('input').attr("disabled", "disabled");
	$('select').attr("disabled", "disabled");
	$('textarea').attr("disabled", "disabled");
})

$("#edit").on("click",function(){
	var emp_no = $("#emp_no").val();
    $.ajax({
    	url : "./empEditDetail",
    	data : {
    		"emp_no" : emp_no
    	},
    	success : function(data){
    	  $("#empEditList").html(data);
    	},
    	fail : function(){
    		alert(fail);
    	}
    })
})

$("#cancel").on("click",function(){
	$.ajax({
		url : "./empList",
		success : function(data){
			$("#content-panel").html(data);
		},
		fail : function(){
			alert(fail);
		}
	})
})
</script>
    