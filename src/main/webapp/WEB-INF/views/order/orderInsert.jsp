<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" type="text/css"
	href="resources/css/custom/order.css">
<div class="col-md-12" id="content-panel">
	<div class='panel' id='input-panel'>
		<div class="panel-body">
			<div class='col-md-12'>
				<h1>제품주문서(신규)</h1>
				<br>
			</div>
			<!-- 주문서 입력 테이블 -->
			<div style="width: 100%; overflow: hidden;">
				<!-- 주문 정보 -->
				<div>
					<table>
						<tr>
							<th>주문번호</th>
							<td colspan="4"><input type="text" id="order_Num"
								name="order_num" readonly="readonly" class="chkval"></td>
							<th colspan="2">배차 정보</th>
						</tr>
						<tr>
							<th>접수일</th>
							<td colspan="2"><input type="datetime-local" id="order_Date"
								name="order_date" readonly="readonly" class="chkval"></td>
							<th>납품 요청일</th>
							<td><input type="date" id="request_Date" name="request_date"
								class="chkval"></td>
							<th>총 중량</th>
							<td><input type="text" id="dispatcher_Weight"
								name="dispatcher_weight" class="chkval" placeholder="kg">
							</td>
						</tr>
						<tr>
							<th>발주처</th>
							<td colspan="2"><input type="text" id="order_Name"
								name="order_name" onclick="showSelect(this)"
								onkeyup="showSelectOC(this)" class="chkval" placeholder="클릭하세요">
							</td>
							<th>발주담당</th>
							<td><input type="text" id="manager_Name" name="manager_name"
								onclick="showSelect(this)" class="chkval" placeholder="클릭하세요">
							</td>
							<th>화물 업체</th>
							<td><input type="text" id="dispatcher_Company"
								name="dispatcher_company" class="chkval" placeholder="업체명">
							</td>
						</tr>
						<tr>
							<th>견적 NO</th>
							<td colspan="2"><input type="text" id="order_Num2"
								readonly="readonly"></td>
							<th>연락처</th>
							<td><input type="text" id="manager_Tel" name="MANAGER_TEL"
							    class="chkval phone"
								placeholder="010-0000-0000" onkeydown='return onlyNumber(event)'
								onkeyup='removeChar(event)' style='ime-mode: disabled;'>
							</td>
							<th>배차 NO</th>
							<td><input type="text" id="dispatcher_No"
								name="DISPATCHER_NO" class="chkval" placeholder="배차정보">
							</td>
						</tr>
						<tr>
							<th>계약명</th>
							<td colspan="2"><input type="text" id="contract_Name"
								name="CONTRACT_NAME" class="chkval" placeholder="계약명"></td>
							<th>영업담당</th>
							<td><input type="text" id="sales" name="SALES"
								class="chkval" placeholder="담당자 성함"></td>
							<th>차종</th>
							<td><input type="text" id="dispatcher_Type"
								name="DISPATCHER_TYPE" class="chkval" placeholder="차종">
							</td>
						</tr>
						<tr>
							<th>납품장소</th>
							<td colspan="4"><input type="text" id="consignee_Location"
								name="CONSIGNEE_LOCATION" class="chkval" placeholder="납품장소">
							</td>
							<th>기사 연락처</th>
							<td><input type="text" id="dispatcher_Tel"
								name="DISPATCHER_TEL" class="chkval phone"
								placeholder="010-0000-0000" onkeydown='return onlyNumber(event)'
								onkeyup='removeChar(event)' style='ime-mode: disabled;'>
							</td>
						</tr>
						<tr>
							<th>인수자</th>
							<td><input type="text" id="consignee_Rank"
								name="CONSIGNEE_RANK" placeholder="인수자 직급" class="chkval">
							</td>
							<td><input type="text" id="consignee_Name"
								name="CONSIGNEE_NAME" placeholder="인수자 이름" class="chkval">
							</td>
							<th>연락처</th>
							<td><input type="text" id="consignee_Tel"
								name="CONSIGNEE_TEL" class="chkval phone"
								placeholder="010-0000-0000" onkeydown='return onlyNumber(event)'
								onkeyup='removeChar(event)' style='ime-mode: disabled;'>
							</td>
							<th>운임 비용</th>
							<td><select id="dispatcher_Fare" name="DISPATCHER_FARE"
								class="chkval form-text ips">
									<option value="0">착불</option>
									<option value="1">선불</option>

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
								name="ORDER_DELEGATE_NAME" class="chkval" placeholder="대표자">
							</td>
						</tr>
						<tr>
							<td><input type="date" id="request_Date2"></td>
							<td><input type="date" id="request_Expected"
								name="REQUEST_EXPECTED" class="chkval"></td>
							<td><input type="date" id="production_Date"
								name="PRODUCTION_DATE" class="chkval"></td>
							<td><input type="text" id="p_Date" name="P_DATE"
								class="chkval" placeholder="도장"></td>
							<td><select id="order_States" name="ORDER_STATES"
								class="chkval form-text ips">
									<option value="0">미납</option>
									<option value="1">납품</option>
							</select></td>
							<th>연락처</th>
							<td><input type="text" id="order_tel" name="ORDER_TEL"
								class="chkval phone" placeholder="010-0000-0000"
								onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)'
								style='ime-mode: disabled;'></td>
						</tr>
						<tr>
							<th>생산시 주의 사항</th>
							<td colspan="4"><input type="text" id="production_Remark"
								name="PRODUCTION_REMARK" class="chkval" placeholder="주의사항">
							</td>
							<th>주소</th>
							<td><input type="text" id="order_Location"
								name="ORDER_LOCATION" class="chkval" placeholder="주소"></td>
						</tr>
					</table>
				</div>
				<!-- 추가 정보 종료 -->
				<br>
				<!-- 버튼 구역 -->
				<div style="float: right;">
					<button type="button" id="addBtn" class="btn btn-gradient btn-info">행
						추가</button>
					<button type="button" id="delBtn"
						class="btn btn-gradient btn-warning" name="delBtn">행 삭제</button>
					<button type="button" id="insert"
						class="btn btn-gradient btn-success">저장</button>
				</div>

				<!-- 버튼 구역 종료 -->
				<!-- 생산품 리스트 -->
				<table style="width: 100%">
					<!-- NO -->
					<col width="1%">
					<!-- 주문서 품명 -->
					<col width="8%">
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

					<thead>
						<tr>
							<th rowspan="2">NO</th>
							<th rowspan="2">주문서 품명</th>
							<th rowspan="2">품명</th>
							<th colspan="5">규격</th>
							<th rowspan="2">수량</th>
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
			          <tr class="contentList">
					  <td class="number">1</td>
					  <td><input type="text" id="order_Item" name="ORDER_ITEM"
						    class="chkval"></td>
					  <td><input type="text" id="item" name="ITEM"
								onclick="showSelect(this)" class="chkval"></td>
							<td><input type="text" id="size_L" name="SIZE_L"
								onclick="showSelect(this)" class="chkval"></td>
							<td><input type="text" id="size_S" name="SIZE_S"
								onclick="showSelect(this)" class="chkval"></td>
							<td><input type="text" id="size_T" name="SIZE_T"
								class="chkval"></td>
							<td><select id="size_P" name="SIZE_P"
								class="chkval form-text ips">
									<option value="">선택</option>
									<c:forTokens items="P1,P2,P3,P4,P5" delims="," var="sizeP">
										<option value="${sizeP }">${sizeP }</option>
									</c:forTokens>
							</select></td>
							<td><select id="size_M" name="SIZE_M"
								style="white-space: nowrap;" class="chkval form-text ips">
									<option value="">선택</option>
									<c:forTokens items="M1,M2,M3,M4,M5" delims="," var="sizeM">
										<option value="${sizeM }">${sizeM }</option>
									</c:forTokens>
							</select></td>
							<td><input type="text" id="volume" name="volume"
								class="chkval quantity" style='ime-mode: disabled;' value="0">
							</td>
						</tr>
						
					</tbody>
				</table>


				<input type="hidden" id="log_Remark" name="log_Remark"
					class="chkval"> <input type="hidden" id="log_Logininfo"
					name="log_Logininfo" class="chkval">
			</div>
			<!-- 주문서 입력 테이블 종료 -->

			<!-- 			<table> -->

			<%-- 				<col width="42%"> --%>

			<%-- 				<col width="16%"> --%>
			<%-- 				<col width="5%"> --%>
			<%-- 				<col width="15%"> --%>
			<!-- 				<tbody> -->
			<!-- 					<tr> -->
			<!-- 						<td></td> -->
			<!-- 						<td> -->
			<!-- 							<h4>합계 금액</h4> -->
			<!-- 						</td> -->
			<!-- 						<td> -->
			<!-- 							<input type="text" id="total_Price" name="total_Price" -->
			<!-- 								readonly="readonly" value="0"> -->
			<!-- 						</td> -->
			<!-- 						<td></td> -->
			<!-- 					</tr> -->
			<!-- 				</tbody> -->
			<!-- 			</table> -->


			<!-- 인풋 셀렉트 -->
			<div id="in-select">
				<table></table>
			</div>
		</div>
	</div>
</div>
<script src="resources/js/custom/order/customfunction.js"></script>
<script src="resources/js/custom/order/inputsetting.js"></script>
<script>
function newMap() {
	var length = 0;
	var map = {};
	var inkey={};
	map.value = {};
	
	map.getKey = function(id) {
		return id;
	};
	map.put = function(id, value) {
		var key = map.getKey(id);
		map.value[key] = value;
		length++;
	};
	
	return map;
}
	// 총합 카운팅
	$('.quantity').attr('onkeyup', 'totalPrice(this); removeChar(event)');
	$('.quantity').attr('onkeydown', 'onlyNumber(event);');
	$('[name="SIZE_L"],[name="SIZE_S"]').attr('onkeydown',
			'focusMove(this,event)');
	
	
		$(function() {
		$('[name="order_date"]').val(moment().format('YYYY-MM-DDTHH:mm'));
	
 			//주문번호 자동생성
			var da = new Date();
			var year = da.getFullYear();
			var month = da.getMonth() + 1;
			if (month.toString().length == 1)
				month = '0' + month.toString();
			var day = da.getDate();
			if (day.toString().length == 1)
				day = '0' + day.toString()
			var now = year + '-' + month + '' + day;
			var a = now.substr(2);
			var c = parseInt("${service}")+1;	
			if (c.toString().length == 1)
				c = '0' + c.toString()
// 			else c = null ? '01' :  c+1;
			var b = autoHypen('HD' + a + '-' + c);
						
	
			$("#order_Num").val(b);
			$("#order_Num2").val(b);
	
			//주문번호 하이픈생성
			function autoHypen(str) {
				str = str.replace(/\s/g, '');
				var tmp = '';
				if (str.length < 11) {
					tmp += str.substr(0, 4);
					tmp += '-';
					tmp += str.substr(4, 4);
					tmp += '-';
					tmp += str.substr(8);
					return tmp;
				}
				return str;
			}

	});  

	// page title 복구
	$('.menuclass').click(function() {
		$('.panel-body').find('.fadeInLeft').text("합동메탈");
	});

	// 입력란추가삭제버튼
	var rnum = 1;
	$('#addBtn').on("click", function() {
		$('.contentList').eq(0).clone().appendTo("#insertBody");
		$('.contentList').last().find('input').val("");
		$('.contentList').last().find('select').val("");
		$('.number').last().text(++rnum);
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
 			   if($('.contentList').eq(i).children().find('input').eq(1).val()==key[j]){
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
	if ($(".contentList").length != 1){
		$(".contentList").last().remove();
 		dispatcherweight();
		--rnum;
	}
	
});



	

	//==============================
	$("#request_Date").on("change", function() {
		var rd = $("#request_Date").val();
		$("#request_Date2").val(rd);
	});
	$("#request_Date2").on("change", function() {
		var rd2 = $("#request_Date2").val();
		$("#request_Date").val(rd2);
	});

	$("#insert").on("click", function() {
		if (confirm('등록하시겠습니까?')) {
			insert();
			return true;
		} else {
			return false;
		}

	});
	
	
	
	
	// 빈칸검사
	// 	$("#insert").on("click", function() {
	// 		formCheck();
	// 	});

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
			if (confirm('등록하시겠습니까?')) {
				insert();
				return true;
			} else {
				return false;
			}
		}
	}

	//==============================

	
		
		
		
    function insert() {
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
			log_Remark : $('#log_Remark').val(),
			log_Logininfo : $('#log_Logininfo').val()
		// 			total_Price : $('#total_Price').val(),

		}

		var rows = newMap();
		
		for (var i = 0; i < $('.contentList').length; i++) {
			var row = {
				order_Item : $('.contentList').eq(i).children().find('input')
						.eq(0).val(),
			    item : $('.contentList').eq(i).children().find('input').eq(1)
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
						'input').eq(8).val()
			};
                rows.put(i, row);
   }
   
		
		
		 $.ajax({
			url : "./orderInsertAll",
			data : {
				"info" : info,
				"rows" : rows
			},
			type : 'POST',
			success : function(data) {
				alert('등록이 완료되었습니다.');
				move();
			},
			fail : function() {
				alert('등록오류');
				alert(fail);
			}
		});

	}

	//==============================

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
