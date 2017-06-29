<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css"
	href="resources/css/custom/order.css">
<div class="col-md-12" id="content-panel">
	<div class='panel' id='input-panel'>
		<div class="panel-body">
			<div class='col-md-12'>
				<h1>제품주문서(수정)</h1>
				<br>
			</div>
			<div id="orderEditDetail"></div>
			<br>
			<div class="responsive-table">
				<table class="table table-striped table-bordered" width="100%"
					cellspacing="0">
					<thead>
						<tr>
							<th rowspan="2">주문서 번호</th>
							<th rowspan="2">발주처</th>
							<th rowspan="2">품명</th>
							<th colspan="2">사이즈(규격)</th>
							<th rowspan="2">수량</th>
							<th rowspan="2">납품요청일</th>
						</tr>
						<tr>
							<th>L</th>
							<th>S</th>
						</tr>
					</thead>
					<tbody>
				 		<c:forEach items="${list }" var="vo">
							<tr>
								<td class="order_num" id="${vo.order_num }" style="cursor: pointer; color: #2196F3">${vo.order_num }</td>								
								<td class="order_name">${vo.order_name }</td>
						    	<td class="item">${vo.item }</td>
						     	<td class="size_l">${vo.size_l}</td>
								<td class="size_s">${vo.size_s}</td>
								<td class="volume">${vo.volume }</td> 
								<td class="request_date">${vo.request_date}</td>
							</tr>
							</c:forEach> 
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<script src="resources/js/custom/order/customfunction.js"></script>
<!-- <script src="resources/js/custom/order/inputsetting.js"></script> -->
<script type="text/javascript">
	$(".order_num").on("click", function() {
		var num = $(this).attr("id");
		$.ajax({
			url : "./orderEditView",
			data : {
				"num" : num
			},
			success : function(data) {
				$('#orderEditDetail').html(data);	
			},
			fail : function() {
				alert(fail);
			}
		});
	});
</script>