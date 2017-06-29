<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css"
	href="resources/css/custom/order.css">
<div class="col-md-12" id="content-panel">
	<div class='panel' id='input-panel'>
		<div class="panel-body">
			<div class='col-md-12'>
				<h1>사원 등록</h1>
				<br>
			</div>
			<div style="width: 100%; overflow: hidden;">
                 <table>
                         <tr>
                              <th rowspan="3" >사진</th>
                              <th width="15%">사원번호</th>
                              <td width="20%"><input type="text" id="emp_no" name="emp_no"
								class="empNo"
								placeholder="0000-000" onkeydown='return onlyNumber(event)'
								onkeyup='removeChar(event)' style='ime-mode: disabled;'>
							</td>
                              <th width="10%">성명</th>
                              <td width="15%"><input type="text" id="emp_name" class="emp_name"></td>
                              <th width="10%">영문</th>
                              <td width="15%"><input type="text" id="eng_name" class="chkval"></td>
                         </tr>
                         <tr>
                              <th>주민등록번호</th>
                              <td><input type="text" id="people_no" name="peopleNo"
								class="peopleNo"
								placeholder="000000-0000000" onkeydown='return onlyNumber(event)'
								onkeyup='removeChar(event)' style='ime-mode: disabled;'>
							</td>
                              <th>성별</th>
                              <td><input type="checkbox" id="gender" class="chkval" value="남">남
                                     <input type="checkbox" id="gender" class="chkval" value="여">여</td>
                              <th>생년월일</th>
                              <td><input type="date" id="birthday" name="birthday"
								class="chkval"></td>
                         </tr>
                         <tr>
                             <th>주소</th>
                             <td><input type="text" id="address" class="chkval"></td>
                             <th>핸드폰번호</th>
                             <td><input type="text" id="handphone_num" name="handphone_num"
								class="chkval phone"
								placeholder="010-0000-0000" onkeydown='return onlyNumber(event)'
								onkeyup='removeChar(event)' style='ime-mode: disabled;'>
							</td>
                             <th>연령</th>
                             <td><input type="text" id="age" class="chkval"></td>
                 </table>	
              </div>
              </br>
              <div style="width: 100%; overflow: hidden;">
                 <table>
                        <tr>
                             <th width="10%">부서</th>
                             <td width="20%"><input type ="text" id="depart_name" class="chkval"></td>
                             <th width="10%">직급</th>
                             <td width="15%"><input type ="text" id="emp_position" class="chkval"></td>
                             <th width="10%">연봉</th>
                             <td><input type ="text" id="salary" class="chkval"></td>
                             <th width="10%">취미</th>
                             <td><input type ="text" id="hobby_name" class="chkval"></td>
                        </tr>
                        <tr>
                             <th>입사일</th>
                              <td colspan="2"><input type="date" id="entrance_date" name="entrance_date"
								class="chkval"></td>
                              <th>퇴사일</th>
                              <td colspan="2"><input type="date" id="quit_date" class="chkval"></td>
                             <th>특기</th>
                             <td><input type="text" id="special_ability" class="chkval"></td>
                        </tr>
                  </table>
                </div>
                </br>
                
                <h3>가족사항</h3>
                <div style="float: right;">
					<button type="button" id="familyAddBtn" class="btn btn-gradient btn-info">행
						추가</button>
					<button type="button" id="familyDelBtn"
						class="btn btn-gradient btn-warning" name="familyDelBtn">행 삭제</button>
				</div>
                
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
			           <tr class="familyList">
					        <th class="fnum">1</th>
                            <td><input type="text" id="family_relation" name="family_relation" class="chkval"></td>
                            <td><input type="text" id="family_name"  name="family_name" class="chkval"></td>
                            <td><input type="text" id="family_age"  name=family_age" class="chkval"></td>
                       </tr>
                     </tbody> 
                  </table>
                  
                <h3>학력</h3>
                <div style="float: right;">
					<button type="button" id="schoolAddBtn" class="btn btn-gradient btn-info">행
						추가</button>
					<button type="button" id="schoolDelBtn"
						class="btn btn-gradient btn-warning" name="schoolDelBtn">행 삭제</button>
				</div>
                
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
			           <tr class="schoolList">
					        <th class="snum">1</th>
                            <td><input type="text" id="school_name"  name="school_name" class="chkval"></td>
                            <td><input type="date" id="school_start_date" name="school_start_date" class="chkval"></td>
                            <td><input type="date" id="school_end_date" name="school_end_date" class="chkval"></td>
                            <td><input type="text" id="school_location" name="school_location" class="chkval"></td>
                       </tr>
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
                               <td><input type="text"  id="arm_service" class="chkval"></td>
                               <td><input type="text"  id="military_class" class="chkval"></td>
                               <td><input type="date"  id="military_start_date" class="chkval"></td>
                               <td><input type="date"  id="military_end_date" class="chkval"></td>
                               <td><input type="text"  id="military_reason" ></td>
                          </tr>
                  </table>
                  
                <h3>자격증</h3>
                <div style="float: right;">
					<button type="button" id="licenseAddBtn"  name="licenseAddBtn" class="btn btn-gradient btn-info">행
						추가</button>
					<button type="button" id="licenseDelBtn"
						class="btn btn-gradient btn-warning" name="licenseDelBtn">행 삭제</button>
				</div>
                
                <table style="width: 100%">
                    <thead> 
                       <tr>
                            <th>NO</th>
                            <th>자격증명</th>
                            <th>취득일</th>
                       </tr>
                      <thead>
                     <tbody id="licenseBody">
			           <tr class="licenseList">
					        <th class="lnum">1</th>
                            <td><input type="text" id="license_name"  name="license_name" class="chkval"></td>
                            <td><input type="date" id="license_date"  name="license_date" class="chkval"></td>
                       </tr>
                      </tbody> 
                  </table>
                  
                <h3>경력사항</h3>
                <div style="float: right;">
					<button type="button" id="careerAddBtn" class="btn btn-gradient btn-info">행
						추가</button>
					<button type="button" id="careerDelBtn"
						class="btn btn-gradient btn-warning" name="careerDelBtn">행 삭제</button>
				</div>
                
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
			           <tr class="careerList">
					        <th class="cnum">1</th>
                            <td><input type="text" id="company_name"  name="company_name" class="chkval"></td>
                            <td><input type="text" id="work_period" name="work_period" class="chkval"></td>
                            <td><input type="text" id="career_depart"  name="career_depart" class="chkval"></td>
                            <td><input type="text" id="career_position" name="career_position" class="chkval"></td>
                       </tr>
                      </tbody> 
                  </table>         
                 <br>
                </div>
               <div style="float: right;">
                    
                	<button type="button" id="insert" class="btn btn-gradient btn-success">저장</button>
	           </div>
	      </div>
</div>

<script src="resources/js/jquery-2.2.3.js"></script>
<script src="resources/js/jquery.ui.min.js"></script>
<script src="resources/js/jquery.form.js"></script>
<script src="resources/js/custom/employee/employeefunction.js"></script>
<script>



//가족사항 버튼
var fnum = 1;
$('#familyAddBtn').on("click", function() {
	$('.familyList').eq(0).clone().appendTo("#familyBody");
	$('.familyList').last().find('input').val("");
	$('.familyList').last().find('select').val("");
	$('.fnum').last().text(++fnum);
});

$("#familyDelBtn").on("click", function() {
	if ($(".familyList").length != 1){
		$(".familyList").last().remove();
		--fnum;
	}
});

//학력버튼
var snum = 1;
$('#schoolAddBtn').on("click", function() {
	$('.schoolList').eq(0).clone().appendTo("#schoolBody");
	$('.schoolList').last().find('input').val("");
	$('.schoolList').last().find('select').val("");
	$('.snum').last().text(++snum);
});

$("#schoolDelBtn").on("click", function() {
	if ($(".schoolList").length != 1){
		$(".schoolList").last().remove();
		--snum;
	}
});

//자격증 버튼
var lnum = 1;
$('#licenseAddBtn').on("click", function() {
	$('.licenseList').eq(0).clone().appendTo("#licenseBody");
	$('.licenseList').last().find('input').val("");
	$('.licenseList').last().find('select').val("");
	$('.lnum').last().text(++lnum);
});

$("#licenseDelBtn").on("click", function() {
	if ($(".licenseList").length != 1){
		$(".licenseList").last().remove();
		--lnum;
	}
});


//경력 버튼
var cnum = 1;
$('#careerAddBtn').on("click", function() {
	$('.careerList').eq(0).clone().appendTo("#careerBody");
	$('.careerList').last().find('input').val("");
	$('.careerList').last().find('select').val("");
	$('.cnum').last().text(++cnum);
});

$("#careerDelBtn").on("click", function() {
	if ($(".careerList").length != 1){
		$(".careerList").last().remove();
		--cnum;
	}
});

$("#insert").on("click", function() {
	if (confirm('등록하시겠습니까?')) {
		insert();
		return true;
	} else {
		return false;
	}

});

function insert(){
	var info = {
			emp_no : $("#emp_no").val(),
			age : $("#age").val(),
			emp_name : $("#emp_name").val(),
			people_no : $("#people_no").val(),
			eng_name : $("#eng_name").val(),
			
			address : $("#address").val(),
			handphone_num : $("#handphone_num").val(),
			birthday : $("#birthday").val(),
			gender : $("#gender").val(),
			entrance_date : $("#entrance_date").val(),
			
			quit_date : $("#quit_date").val(),
			salary : $("#salary").val(),
			emp_position : $("#emp_position").val(),
			depart_name : $("#depart_name").val(),
			military_class : $("#military_class").val(),
			
			arm_service : $("#arm_service").val(),
			military_start_date : $("#military_start_date").val(),
			military_end_date : $("#military_end_date").val(),
			military_reason : $("#military_reason").val(),
			hobby_name : $("#hobby_name").val(),
			
			special_ability : $("#special_ability").val()
			
		}
	 
	var familys = newMap();
    for(var i=0; i<$('.familyList').length; i++){
    	var family = {
    			family_relation : $('.familyList').eq(i).children().find('input').eq(0).val(),
    			family_name : $('.familyList').eq(i).children().find('input').eq(1).val(),
    			family_age : $('.familyList').eq(i).children().find('input').eq(2).val()
    			
    	};
    	familys.put(i,family);
    }
    
    var schools = newMap();
    for(var i=0; i<$('.schoolList').length; i++){
    	var school = {
    			school_name : $('.schoolList').eq(i).children().find('input').eq(0).val(),
    			school_start_date : $('.schoolList').eq(i).children().find('input').eq(1).val(),
    			school_end_date : $('.schoolList').eq(i).children().find('input').eq(2).val(),
    			school_location : $('.schoolList').eq(i).children().find('input').eq(3).val()
    	};
    	schools.put(i,school);
    }
    
    var licenses = newMap();
    for(var i=0; i<$('.licenseList').length; i++){
    	var license = {
    			license_name : $('.licenseList').eq(i).children().find('input').eq(0).val(),
    			license_date :  $('.licenseList').eq(i).children().find('input').eq(1).val()
    	};
    	licenses.put(i,license);
    }
    
    var careers = newMap();
    for(var i=0; i<$('.careerList').length; i++){
    	var career = {
    			company_name : $(".careerList").eq(i).children().find('input').eq(0).val(),
    			work_period : $(".careerList").eq(i).children().find('input').eq(1).val(),
    			career_depart : $(".careerList").eq(i).children().find('input').eq(2).val(),
    			career_position : $(".careerList").eq(i).children().find('input').eq(3).val()
    	};
        careers.put(i,career);
    }
    
    var list={
    		family_list : $('.familyList').length,
    		school_list : $('.schoolList').length,
    		license_list : $('.licenseList').length,
    		career_list : $('.careerList').length
    }
    
    $.ajax({
    	url : "./empInsertAll",
    	data : {
    		"info" : info,
    		"familys" : familys,
    		"schools" : schools,
    		"licenses" : licenses,
    		"careers" : careers,
    		"list" : list
    	},
    	type : "post",
    	success : function(data){
    		alert("등록이 완료 되었습니다.");
    		move();
    	},
    	fail : function(){
    		alert("등록오류");
    		alert(fail);
    	}
    });
   
}



function move() {
	$.ajax({
		url : "./empList",
		success : function(data) {
			$("#content-panel").html(data);
		},
		fail : function() {
			alert(fail);
		}
	});
}






</script>