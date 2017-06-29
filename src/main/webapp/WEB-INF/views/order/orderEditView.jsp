<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 주문서 입력 테이블 -->
<div style="width: 100%; overflow: hidden;">
	<!-- 주문 정보 -->
	<div>
		<table>
			<tr>
				<th>주문번호</th>
				<td colspan="4"><input type="text" id="order_Num"
					name="order_num" value="${detail.order_Num }" readonly="readonly"
					class="chkval"></td>
				<th colspan="2">배차 정보</th>
			</tr>
			<tr>
				<th>접수일</th>
				<td colspan="2"><input type="datetime-local" id="order_Date"
					name="order_date" value="${detail.order_Date }" readonly="readonly"
					class="chkval"></td>
				<th>납품 요청일</th>
				<td><input type="date" id="request_Date" name="request_date"
					value="${detail.request_Date }" class="chkval"></td>
				<th>총 중량</th>
				<td><input type="text" id="dispatcher_Weight"
					name="dispatcher_weight" class="chkval" placeholder="kg"
					value="${detail.dispatcher_Weight }"></td>
			</tr>
			<tr>
				<th>발주처</th>
				<td colspan="2"><input type="text" id="order_Name"
					name="order_name" class="chkval" value="${detail.order_Name }"
					placeholder="클릭하세요"></td>
				<th>발주담당</th>
				<td><input type="text" id="manager_Name" name="manager_name"
					class="chkval" placeholder="클릭하세요" value="${detail.manager_Name }">
				</td>
				<th>화물 업체</th>
				<td><input type="text" id="dispatcher_Company"
					name="dispatcher_company" class="chkval" placeholder="업체명"
					value="${detail.dispatcher_Company }"></td>
			</tr>
			<tr>
				<th>견적 NO</th>
				<td colspan="2"><input type="text" id="order_Num2"
					readonly="readonly" value="${detail.order_Num }"></td>
				<th>연락처</th>
				<td><input type="text" id="manager_Tel" name="MANAGER_TEL"
					class="chkval" placeholder="010-0000-0000"
					value="${detail.manager_Tel }"></td>
				<th>배차 NO</th>
				<td><input type="text" id="dispatcher_No" name="DISPATCHER_NO"
					class="chkval" placeholder="배차정보" value="${detail.dispatcher_No }">
				</td>
			</tr>
			<tr>
				<th>계약명</th>
				<td colspan="2"><input type="text" id="contract_Name"
					name="CONTRACT_NAME" class="chkval" placeholder="계약명"
					value="${detail.contract_Name }"></td>
				<th>영업담당</th>
				<td><input type="text" id="sales" name="SALES" class="chkval"
					placeholder="담당자 성함" value="${detail.sales }"></td>
				<th>차종</th>
				<td><input type="text" id="dispatcher_Type"
					name="DISPATCHER_TYPE" class="chkval" placeholder="차종"
					value="${detail.dispatcher_Type }"></td>
			</tr>
			<tr>
				<th>납품장소</th>
				<td colspan="4"><input type="text" id="consignee_Location"
					name="CONSIGNEE_LOCATION" class="chkval" placeholder="납품장소"
					value="${detail.consignee_Location }"></td>
				<th>기사 연락처</th>
				<td><input type="text" id="dispatcher_Tel"
					name="DISPATCHER_TEL" class="chkval" placeholder="010-0000-0000"
					value="${detail.dispatcher_Tel }"></td>
			</tr>
			<tr>
				<th>인수자</th>
				<td><input type="text" id="consignee_Rank"
					name="CONSIGNEE_RANK" placeholder="인수자 직급" class="chkval"
					value="${detail.consignee_Rank }"></td>
				<td><input type="text" id="consignee_Name"
					name="CONSIGNEE_NAME" placeholder="인수자 이름" class="chkval"
					value="${detail.consignee_Name }"></td>
				<th>연락처</th>
				<td><input type="text" id="consignee_Tel" name="CONSIGNEE_TEL"
					value="${detail.consignee_Tel }" class="chkval"
					placeholder="010-0000-0000"></td>
				<th>운임 비용</th>
				<td><select id="dispatcher_Fare" name="DISPATCHER_FARE"
					class="chkval form-text ips">
						<option value="0"
							<c:if test="${detail.dispatcher_Fare eq 0 }">selected="selected"</c:if>>착불</option>
						<option value="1"
							<c:if test="${detail.dispatcher_Fare eq 1 }">selected="selected"</c:if>>선불</option>
				</select></td>
			</tr>
		</table>
		<!-- 주문 정보 종료 -->
	</div>
	<br>
	<!-- 주문 추가 정보 -->
	<div>
		<table>
			<col width="2%">
			<col width="2%">
			<col width="2%">
			<col width="2%">
			<col width="6%">
			<col width="5%">
			<col width="5%">
			<col width="15%">
			<tr>
				<th>납품 요청일</th>
				<th>납품 예정일</th>
				<th>생산 예정일</th>
				<th>도장 소요일</th>
				<th>납품 완료</th>
				<th rowspan="3">발주처 정보</th>
				<th>대표자</th>
				<td><input type="text" id="order_delegate_Name"
					name="ORDER_DELEGATE_NAME" class="chkval" placeholder="대표자"
					value="${detail.order_delegate_Name }"></td>
			</tr>
			<tr>
				<td><input type="date" id="request_Date2"
					value="${detail.request_Date }"></td>
				<td><input type="date" id="request_Expected"
					name="REQUEST_EXPECTED" class="chkval"
					value="${detail.request_Expected }"></td>
				<td><input type="date" id="production_Date"
					value="${detail.production_Date }" name="PRODUCTION_DATE"
					class="chkval"></td>
				<td><input type="text" id="p_Date" name="P_DATE" class="chkval"
					value="${detail.p_Date }" placeholder="도장"></td>
				<td><select id="order_States" name="ORDER_STATES"
					class="chkval form-text ips">
						<option value="0"
							<c:if test="${detail.order_States eq 0 }">selected="selected"</c:if>>미납</option>
						<option value="1"
							<c:if test="${detail.order_States eq 1 }">selected="selected"</c:if>>납품</option>
				</select></td>
				<th>연락처</th>
				<td><input type="text" id="order_tel" name="ORDER_TEL"
					value="${detail.order_tel }" class="chkval"
					placeholder="010-0000-0000"></td>
			</tr>
			<tr>
				<th>생산시 주의 사항</th>
				<td colspan="4"><input type="text" id="production_Remark"
					value="${detail.production_Remark }" name="PRODUCTION_REMARK"
					class="chkval" placeholder="주의사항"></td>
				<th>주소</th>
				<td><input type="text" id="order_Location"
					name="ORDER_LOCATION" class="chkval" placeholder="주소"
					value="${detail.order_Location }"></td>
			</tr>
		</table>
	</div>
	<!-- 추가 정보 종료 -->
	<br>
	<!-- 버튼 구역 -->
	<div style="float: right;">
		<button type="button" id="goEdit" class="btn btn-gradient btn-success">수정</button>
		<button type="button" id="cancel" class="btn btn-gradient btn-primary">취소</button>
	</div>
	<!-- 버튼 구역 종료 -->
	<!-- 생산품 리스트 -->
	<table style="width: 100%">
		<!-- NO -->
		<col width="1%">
		<!-- 주문서 품명-->
		<col width="15%">
		<!-- 품명 -->
		<col width="8%">
		<!-- 규격 그룹 -->
		<col width="6%">
		<col width="6%">
		<col width="6%">
		<col width="6%">
		<col width="6%">
		<!-- 수량 -->
		<col width="4%">
		<!-- 단가 -->
		<col width="5%">
		<!-- 제품 NO -->
		<col width="10%">
		<!-- 비고 -->
		<col width="5%">

		<thead>
			<tr>
				<th rowspan="2">NO</th>
				<th rowspan="2">주문서 품명</th>
				<th rowspan="2">품명</th>
				<th colspan="5">규격</th>
				<th rowspan="2">수량</th>
				<th rowspan="2">단가</th>
				<th rowspan="2">제품 NO</th>
				<th rowspan="2">비고</th>
			</tr>
			<tr>
				<th>L</th>
				<th>S</th>
				<th>T</th>
				<th>P</th>
				<th>M</th>
			</tr>
		</thead>
		<tbody id="productsDataBody">
			<c:forEach items="${products }" var="p" varStatus="i">
				<tr class="productsDataBodyRow contentList">
					<td>${i.index+1 }</td>
					<td><input type="text" id="order_Item" name="ORDER_ITEM"
						value="${p.order_item }" class="chkval"></td>
					<td><select id="item" name="ITEM" class="chkval form-text ips">
							<option value="">선택</option>
							<c:forTokens
								items="SS 131,SS 132,SS 133,SS 241,SS 242,SS 243,SS 341,SS 342,SS 343,SG 342-1,SG 342-2,SG 342-3, SG 362,SG 363,SG 364,SS 511,SS 512,SS 513,SS 632,HDS-1,HDS-2,HDS-3,HDS-4"
								delims="," var="item_n">
								<option value="${item_n }"
									<c:if test="${p.item eq item_n }">selected="selected"</c:if>>${item_n }</option>
							</c:forTokens>
					</select></td>
					<td><input type="text" id="size_L" name="SIZE_L"
						value="${p.size_l }" class="chkval"></td>
					<td><input type="text" id="size_S" name="SIZE_S"
						value="${p.size_s }" class="chkval"></td>
					<td><input type="text" id="size_T" name="SIZE_T"
						value="${p.size_t }" class="chkval"></td>
					<td><select id="size_P" name="SIZE_P"
						class="chkval form-text ips">
							<option value="">선택</option>
							<c:forTokens items="P1,P2,P3,P4,P5" delims="," var="sizeP">
								<option value="${sizeP }"
									<c:if test="${p.size_p eq sizeP }">selected="selected"</c:if>>${sizeP }</option>
							</c:forTokens>
					</select></td>
					<td><select id="size_M" name="SIZE_M"
						style="white-space: nowrap;" class="chkval form-text ips">
							<option value="">선택</option>
							<c:forTokens items="M1,M2,M3,M4,M5" delims="," var="sizeM">
								<option value="${sizeM }"
									<c:if test="${p.size_m eq sizeM }">selected="selected"</c:if>>${sizeM }</option>
							</c:forTokens>
					</select></td>
					<td><input type="text" id="volume" name="VOLUME"
						class="chkval" value="${p.volume }"></td>
					<td><input type="text" id="price" name="PRICE" class="chkval"
						value="${p.price }"></td>
					<td><input type="text" id="lot_No" name="LOT_NO"
						class="chkval" value="${p.lot_no }"></td>
					<td><input type="text" id="products_Remark"
						value="${p.products_remark }" name="PRODUCTS_REMARK"
						class="chkval"></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<table>
		<thead>
			<th style="width: 50%">REMARK</th>
			<th style="width: 50%">로그 정보</th>
		</thead>
		<tbody>
			<tr>
				<td style="text-align: left; height: 200px;"><c:forEach
						items="${comment }" var="comment">
				${comment.order_comment } <br> 수정자 : ${comment.log_logininfo }
				</c:forEach></td>
				<td style="text-align: left; height: 200px;"><c:forEach
						items="${loglog}" var="loglog">
						수정일 : ${loglog.log_Remark } , 수정자 : ${loglog.log_Logininfo}<br>
					</c:forEach></td>
			</tr>
		</tbody>
	</table>
</div>
<!-- 주문서 입력 테이블 종료 -->

<!-- 인풋 셀렉트 -->
<div id="in-select">
	<table></table>
</div>
<script type="text/javascript">
	$(function() {
		$('table').addClass("table table-bordered");
		$('thead').addClass("bg-primary text-white");
		$('th').addClass("bg-primary text-white");
		$('th').attr('nowrap', "nowrap");
		$('td').addClass("form-group form-animate-text");
		$('td').append("<span class='bar'></span>");
		$('input').addClass("form-text ips");
		$('input').attr("readonly", true);
		$('input').attr("disabled", "disabled");
		$('select').attr("disabled", "disabled");
		$('textarea').attr("disabled", "disabled");
	});

	$("#goEdit").on("click", function() {
		var num = $("#order_Num").val();
		$.ajax({
			url : "./orderEditDetail",
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

	$("#cancel").on("click", function() {
		move();
	});

	function move() {
		$.ajax({
			url : "./orderEdit",
			success : function(data) {
				$("#content-panel").html(data);
			},
			fail : function() {
				alert(fail);
			}
		});
	}
</script>