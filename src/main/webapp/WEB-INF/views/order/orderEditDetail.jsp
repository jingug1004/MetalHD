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
					name="order_name" onclick="showSelect(this)"
					onkeyup="showSelectOC(this)" class="chkval"
					value="${detail.order_Name }" placeholder="클릭하세요"></td>
				<th>발주담당</th>
				<td><input type="text" id="manager_Name" name="manager_name"
					onclick="showSelect(this)" class="chkval" placeholder="클릭하세요"
					value="${detail.manager_Name }"></td>
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
					onclick="showSelect(this)" class="chkval phone"
					placeholder="010-0000-0000" value="${detail.manager_Tel }"
					onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)'
					style='ime-mode: disabled;'></td>
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
					name="DISPATCHER_TEL" class="chkval phone"
					placeholder="010-0000-0000" onkeydown='return onlyNumber(event)'
					onkeyup='removeChar(event)' style='ime-mode: disabled;'
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
					value="${detail.consignee_Tel }" class="chkval phone"
					onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)'
					style='ime-mode: disabled;' placeholder="010-0000-0000"></td>
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
					value="${detail.order_tel }" class="chkval phone"
					onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)'
					style='ime-mode: disabled;' placeholder="010-0000-0000"></td>
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
		<button type="button" id="del" class="btn btn-gradient btn-danger">선택항목
			삭제</button>
		<button type="button" id="addBtn" class="btn btn-gradient btn-info">행
			추가</button>
		<button type="button" id="delBtn" class="btn btn-gradient btn-warning">행
			삭제</button>
		<button type="button" id="edit" class="btn btn-gradient btn-success">수정
			완료</button>
		<button type="button" id="cancelBtn"
			class="btn btn-gradient btn-primary">취소</button>
	</div>
	<!-- 버튼 구역 종료 -->
	<!-- 생산품 리스트 -->
	<table style="width: 100%" id="tableCheck">

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
				<th rowspan="2">
					<div class="form-animate-checkbox">
						<input type="checkbox" class="checkbox" id="checkAll"
							name="checkAll">
					</div>
				</th>
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
		<tbody id="insertBody">
			<c:forEach items="${products }" var="p">
				<tr class="contentList">
					<td>
						<div class="form-animate-checkbox">
							<input type="checkbox" class="checkbox checkone" name="checkone"
								id="checkone">
						</div>
					</td>
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
						value="${p.size_l }" onclick="showSelect(this)" class="chkval">
					</td>
					<td><input type="text" id="size_S" name="SIZE_S"
						value="${p.size_s }" onclick="showSelect(this)" class="chkval">
					</td>
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
						class="chkval quantity" value="${p.volume }"
						onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)'
						style='ime-mode: disabled;'></td>
					<td><input type="text" id="price" name="PRICE"
						class="chkval quantity" value="${p.price }"
						onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)'
						style='ime-mode: disabled;'></td>
					<td><input type="text" id="lot_No" name="LOT_NO"
						class="chkval" value="${p.lot_no }"></td>
					<td><input type="text" id="products_Remark"
						value="${p.products_remark }" name="PRODUCTS_REMARK"
						class="chkval"> <input type="hidden" id="products_seq"
						value="${p.products_seq }" name="products_seq"></td>
				</tr>
			</c:forEach>
			<input type="hidden" id="session_id" value="${id.mb_id }" />
		</tbody>
	</table>
	<table>
		<thead>
			<th style="width: 50%">REMARK</th>
			<th style="width: 50%">로그 정보</th>
		</thead>
		<tbody>
			<tr>
				<td><textarea id="log_Remark" name="log_Remark" rows="10"
						cols="70" style="resize: none;"><c:forEach
							items="${comment }" var="comment">${comment.order_comment }
				</c:forEach></textarea></td>
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
<script src="resources/js/custom/order/customfunction.js"></script>
<script src="resources/js/custom/order/inputsetting.js"></script>
<script type="text/javascript">
	//===================

	$(function() {

		$('[name="SIZE_L"],[name="SIZE_S"]').attr('onkeydown',
				'focusMove(this,event)');

		var table = $("#tableCheck");
		$('#checkAll').change(function() {
			$(".checkone").prop("checked", this.checked);
			$(".checkone", table).trigger("change");
		});
		$(".checkone", table).change(
				function() {
					if ($(this).is(":checked")) {
						$(this).parent().parent().parent().addClass(
								"bg-light-grey");
						$(this).parent().parent().parent()
								.addClass("deleteRow");
					} else {
						$(this).parent().parent().parent().removeClass(
								"bg-light-grey");
						$(this).parent().parent().parent().removeClass(
								"deleteRow");
					}
				});

	});

	// 입력란추가삭제버튼
	$('#addBtn')
			.on(
					"click",
					function() {
						$("#insertBody")
								.append(
										"<tr class='contentList insertRow'> <td class='form-group form-animate-text'><input type='hidden'><span class='bar'></span></td>"
												+ "<td class='form-group form-animate-text'><input type='text' id='order_Item' name='ORDER_ITEM' class='chkval form-text ips'><span class='bar'></span></td>"
												+ "<td class='form-group form-animate-text'><select id='item' name='ITEM' class='chkval form-text ips'>"
												+ "<option value=''>선택</option>"
												+ "<c:forTokens items='SS 131,SS 132,SS 133,SS 241,SS 242,SS 243,SS 341,SS 342,SS 343,SG 342-1,SG 342-2,SG 342-3, SG 362,SG 363,SG 364,SS 511,SS 512,SS 513,SS 632,HDS-1,HDS-2,HDS-3,HDS-4' delims=',' var='item_n'>"
												+ "<option value='${item_n }'>${item_n }</option>"
												+ "	</c:forTokens>"
												+ "	</select><span class='bar'></span></td>"
												+ "	<td class='form-group form-animate-text'><input type='text' id='size_L' name='SIZE_L'"
												+ "		onclick='showSelect(this)' class='chkval form-text ips'><span class='bar'></span></td>"
												+ "	<td class='form-group form-animate-text'><input type='text' id='size_S' name='SIZE_S'"
												+ "		onclick='showSelect(this)' class='chkval form-text ips'><span class='bar'></span></td>"
												+ "	<td class='form-group form-animate-text'><input type='text' id='size_T' name='SIZE_T' class='chkval form-text ips'><span class='bar'></span></td>"
												+ "	<td class='form-group form-animate-text'><select id='size_P' name='SIZE_P' class='chkval form-text ips'>"
												+ "			<option value=''>선택</option>"
												+ "		<c:forTokens items='P1,P2,P3,P4,P5' delims=',' var='sizeP'>"
												+ "			<option value='${sizeP }'>${sizeP }</option>"
												+ "		</c:forTokens>"
												+ "	</select><span class='bar'></span></td>"
												+ "	<td class='form-group form-animate-text'><select id='size_M' name='SIZE_M'"
			+"		style='white-space: nowrap;' class='chkval form-text ips'>"
												+ "			<option value=''>선택</option>"
												+ "		<c:forTokens items='M1,M2,M3,M4,M5' delims=',' var='sizeM'>"
												+ "			<option value='${sizeM }'>${sizeM }</option>"
												+ "		</c:forTokens>"
												+ "</select><span class='bar'></span></td>"
												+ "<td class='form-group form-animate-text'><input type='text' id='volume' name='VOLUME' class='chkval quantity form-text ips' onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' style='ime-mode: disabled;'><span class='bar'></span></td>"
												+ "	<td class='form-group form-animate-text'><input type='text' id='price' name='PRICE' class='chkval quantity form-text ips' onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' style='ime-mode: disabled;'><span class='bar'></span></td>"
												+ "	<td class='form-group form-animate-text'><input type='text' id='lot_No' name='LOT_NO' class='chkval form-text ips'><span class='bar'></span></td>"
												+ "	<td class='form-group form-animate-text'><input type='text' id='products_Remark'"
			+"	name='PRODUCTS_REMARK' class='chkval form-text ips'><input type='hidden' id='products_seq'"
			+"		value='0' name='products_seq'><span class='bar'></span></td></tr>");
					});

	
function dispatcherweight(){
		
		var specW = new newMap();
 		var lsmap = new newMap();
 		var totalweight = 0;
 	    var weight = 0;
 	    var goodsvalue = 0;
	    var lvalue = 0;
 	    var svalue = 0;
	    
		var key=["SS 131","SS 132","SS 133","SS 241","SS 242","SS 243","SS 244","SS 341",
 			        "SS 342","SS 343","SG 342-1","SG 342-2","SG 342-3","SG 362","SG 363",
 		        "SG 364","SS 511","SS 512","SS 513","SS 632"];
	    var value=[2.36,4.19,9.03,2.28,4.1,8,11,3.19,5.91,10.4,14.5,19.4,24.9,13.7,18.3,23.6,
 			           2.53,4.02,7.06,3.19];
	    
 	    var lskey = [ "1'(306)", "2'(610)", "3'(914)", "4'(1219)","5'(1524)", "6'(1820)", "7'(2134)", 
 	                  "8'(2438)", "9'(2743)","10'(3048)" ];
	    var lsvalue = [ 306, 610, 914, 1219,1524, 1820, 2134, 2438, 2743,3048 ];
	    
 	 for (var i = 0; i < key.length; i++){
 		  specW.put(key[i],value[i]);
 	 }
	 
	 for (var i=0;i<lskey.length; i++){
 		 lsmap.put(lskey[i],lsvalue[i]);
 	 }	
	 
 		for(var i = 0; i < $('.contentList').length; i++){   
			for(var j = 0; j<key.length; j++){
 			   if($('.contentList').eq(i).children().find('select').eq(0).val()==key[j]){
 				  goodsvalue = specW.value[key[j]];
 			   }
			}
 		    
			for(var y = 0; y<lskey.length; y++){
			   if($('.contentList').eq(i).children().find('input').eq(2).val()==lskey[y]){
				   lvalue = lsmap.value[lskey[y]];
			   }else if($('.contentList').eq(i).children().find('input').eq(2).val()>=0){
				   lvalue = $('.contentList').eq(i).children().find('input').eq(2).val();
			   } 
 		    }
		    
 		    for(var k = 0; k<lskey.length; k++){
 				 if($('.contentList').eq(i).children().find('input').eq(3).val()==lskey[k]){
				      svalue = lsmap.value[lskey[k]];
				  }else if($('.contentList').eq(i).children().find('input').eq(3).val()>=0){
					  svalue = $('.contentList').eq(i).children().find('input').eq(3).val();
			      }   
 		   }
				 
 			 weight=(lvalue*svalue)/1000000*goodsvalue*$('.contentList').eq(i).children().find('input').eq(5).val();
			 totalweight+=weight;
        }
 		totalweight = totalweight.toString();
 	    totalweight = totalweight.substring(0,6);
 		totalweight+="kg";
	 
 		$("#dispatcher_Weight").val(totalweight);
 }
	
	$("#insertBody").on("keyup",'.contentList' ,function(){
		dispatcherweight();
	});
	
	$("#delBtn").on("click", function() {
		if ($(".insertRow").length > 0){
			$(".insertRow").last().remove();
		     dispatcherweight();
		}
	});

	//==============================

	$("#edit").on("click", function() {
		if (confirm('선택항목을 수정하시겠습니까?')) {
			update();
			return true;
		} else {
			return false;
		}
	});

	$("#del").on("click", function() {
		if ($(".deleteRow").length < 1) {
			alert('선택한 행이 없습니다.')
		} else {
			if (confirm('선택항목을 삭제하시겠습니까?')) {
				del();
				return true;
			} else {
				return false;
			}
		}
	});

	//==============================
	function formCheck() {
		var checkval = true;
		for (var i = 0; i < $('.chkval').length; i++) {
			if (!$('.chkval').eq(i).val()) {
				alert("내용이 없습니다. 값을 입력하세요.");
				checkval = false;
				$('.chkval').eq(i).focus();
				break;
			}
		}
		if (checkval == true) {
			if (confirm('수정하시겠습니까?')) {
				update();

			} else {

			}
		}
	}

	//==============================

	function del() {
		var info = {
			order_Num : $('#order_Num').val()
		}
		var rows = newMap();
		for (var i = 0; i < $('.deleteRow').length; i++) {
			var row = {
				products_seq : $('.deleteRow').eq(i).children().find('input')
						.eq(9).val()
			};
			rows.put(i, row);
		}

		$.ajax({
			url : "./orderDelete",
			data : {
				"info" : info,
				"rows" : rows
			},
			type : 'POST',
			success : function(data) {
				alert('삭제가 완료되었습니다.');
				move();
			},
			fail : function() {
				alert('등록오류');
				alert(fail);
			}
		});

	}

	//==============================
	function update() {

		session_id = $('#session_id').val();
		comment = $('#log_Remark').val();
		d = new Date();
		var s = leadingZeros(d.getFullYear(), 4) + '-'
				+ leadingZeros(d.getMonth() + 1, 2) + '-'
				+ leadingZeros(d.getDate(), 2) + ' ' +

				leadingZeros(d.getHours(), 2) + ':'
				+ leadingZeros(d.getMinutes(), 2) + ':'
				+ leadingZeros(d.getSeconds(), 2);

		function leadingZeros(n, digits) {
			var zero = '';
			n = n.toString();

			if (n.length < digits) {
				for (i = 0; i < digits - n.length; i++)
					zero += '0';
			}
			return zero + n;
		}

		var info = {
			order_Num : $('#order_Num').val(),
			order_Date : $('#order_Date').val(),
			request_Date : $('#request_Date').val(),
			order_Name : $('#order_Name').val(),
			manager_Name : $('#manager_Name').val(),

			manager_Tel : $('#manager_Tel').val(),
			contract_Name : $('#contract_Name').val(),
			sales : $('#sales').val(),
			consignee_Location : $('#consignee_Location').val(),
			consignee_Rank : $('#consignee_Rank').val(),

			consignee_Name : $('#consignee_Name').val(),
			consignee_Tel : $('#consignee_Tel').val(),
			dispatcher_Weight : $('#dispatcher_Weight').val(),
			dispatcher_Company : $('#dispatcher_Company').val(),
			dispatcher_No : $('#dispatcher_No').val(),

			dispatcher_Type : $('#dispatcher_Type').val(),
			dispatcher_Tel : $('#dispatcher_Tel').val(),
			dispatcher_Fare : $('#dispatcher_Fare').val(),
			order_delegate_Name : $('#order_delegate_Name').val(),
			request_Expected : $('#request_Expected').val(),

			production_Date : $('#production_Date').val(),
			p_Date : $('#p_Date').val(),
			order_States : $('#order_States').val(),
			order_tel : $('#order_tel').val(),
			production_Remark : $('#production_Remark').val(),

			order_Location : $('#order_Location').val(),
			log_Logininfo : session_id,
			log_Remark : s,
			order_comment : comment
		// 			total_Price : $('#total_Price').val(),

		}

		var rows = newMap();
		for (var i = 0; i < $('.contentList').length; i++) {
			var row = {
				order_Item : $('.contentList').eq(i).children().find('input')
						.eq(1).val(),
				item : $('.contentList').eq(i).children().find('select').eq(0)
						.val(),
				size_L : $('.contentList').eq(i).children().find('input').eq(2)
						.val(),
				size_S : $('.contentList').eq(i).children().find('input').eq(3)
						.val(),
				size_T : $('.contentList').eq(i).children().find('input').eq(4)
						.val(),
				size_P : $('.contentList').eq(i).children().find('select')
						.eq(1).val(),
				size_M : $('.contentList').eq(i).children().find('select')
						.eq(2).val(),
				volume : $('.contentList').eq(i).children().find('input').eq(5)
						.val(),
				price : $('.contentList').eq(i).children().find('input').eq(6)
						.val(),
				lot_No : $('.contentList').eq(i).children().find('input').eq(7)
						.val(),
				products_Remark : $('.contentList').eq(i).children().find(
						'input').eq(8).val(),
				products_seq : $('.contentList').eq(i).children().find('input')
						.eq(9).val()
			};
			rows.put(i, row);
		}

		$.ajax({
			url : "./orderUpdate",
			data : {
				"info" : info,
				"rows" : rows,

			},
			type : 'POST',
			success : function(data) {
				alert('수정이 완료되었습니다.');
				move();
			},
			fail : function() {
				alert('등록오류');
				alert(fail);
			}
		});

	}

	//==============================
	$("#cancelBtn").on("click", function() {
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