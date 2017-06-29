<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css"
	href="resources/css/custom/order.css">
<div class="col-md-12" id="content-panel">
	<div class='panel' id='input-panel'>
		<div class="panel-body">
			<div class='col-md-12'>
				<h1>사원 관리</h1>
				</br>
			</div>
			<div id="empEditList"></div>
			</br>
			<div class="responsive-table">
				<table class="table table-striped table-bordered" width="100%" cellspacing="0">
				  <thead>
						<tr>
							<th>사원번호</th>
							<th>성명</th>
							<th>연령</th>
							<th>직급</th>
							<th>부서</th>
						</tr>
				   <thead>
				   <tbody>
				 		<c:forEach items="${list }" var="vo">
							<tr>
								<td class="emp_no"  id="${vo.emp_no }"style="cursor: pointer; color: #2196F3">${vo.emp_no }</td>								
								<td class="emp_name">${vo.emp_name }</td>
						    	<td class="age">${vo.age }</td>
						     	<td class="emp_position">${vo.emp_position}</td>
								<td class="depart_name">${vo.depart_name}</td>
							</tr>
						</c:forEach> 
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<script src="resources/js/jquery-2.2.3.js"></script>
<script src="resources/js/custom/employee/employeefunction.js"></script>
<script>
$(".emp_no").on("click", function() {
	var emp_no = $(this).attr("id");
	$.ajax({
		url : "./empEditView",
		data : {
			"emp_no" : emp_no
		},
		success : function(data) {
			$('#empEditList').html(data);	
		},
		fail : function() {
			alert(fail);
		}
	});
});
</script>