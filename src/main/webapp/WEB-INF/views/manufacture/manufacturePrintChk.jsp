<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<!--<meta name="viewport" content="width=device-width, initial-scale=1">-->
<meta name="format-detection" content="telephone=no" />

<link rel="stylesheet" type="text/css"
	href="resources/css/custom/mEdit.css" />

<style>
* {
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
}

div#tableS {
	overflow: auto;
	height: 100%;
	position: relative;
}

table {
	width: 650px;
	text-align: center;
	border: 1px solid black;
	border-collapse: collapse;
}

thead {
	position: relative;
	top: expression(this.offsetParent.scrollTop);
}

tbody {
	width: 100%;
	max-height: 80%;
	overflow: auto;
}
</style>

<div class="col-md-12" id="content-panel">
	<div class='panel' id='input-panel'>
		<div class="panel-body">
			<div class='col-md-12'>
				<span class="m_title" style="visibility: hidden;">D/B 프린트</span>

				<div id="tableS">
					<table class='table table-striped table-bordered'>
						<thead>
							<tr>
							<c:forEach items="chkprint" var="chkprint">
								${chkprint}
							</c:forEach>
								<c:forTokens items="production_seq:NO,ORDER_NUM:주문번호,ORDER_NAME:발주처(상호),ORDER_ITEM:주문서 품명,PRODUCTS_REMARK:비고,CONTRACT_NAME:계약명,REQUEST_DATE:납품요청일,REQUEST_EXPECTED:납품예정일,PRODUCTION_DATE:생산예정일,P_DATE:도장소요일,ORDER_STATES:납품완료,CONSIGNEE_LOCATION:납품장소,PRODUCTION_REMARK:생산시주의사항,ITEM:품명,SIZE_L:규격(l),SIZE_S:규격(S),SIZE_T:규격(T),SIZE_P:규격(P),SIZE_M:규격(M),VOLUME:수량,ORDER_LOCATION:발주처(주소),MANAGER_NAME:발주담당(이름),MANAGER_TEL:발주담당(연락처),SALES:영업담당,PRICE:단가,T_PRICE:행 금액,ORDER_DELEGATE_NAME:대표자,ORDER_TEL:발주처(연락처),ORDER_FAX:발주처(팩스),LOT_NO:LOT_NO,M_NO:M_NO,CONSIGNEE_RANK:인수자 직급,CONSIGNEE_NAME:인수자,CONSIGNEE_TEL:인수자(연락처),ORDER_DATE:접수일,DISPATCHER_COMPANY:화물업체,DISPATCHER_NO:배차 NO,DISPATCHER_TYPE:차종,DISPATCHER_TEL:기사 연락처,DISPATCHER_FARE:운임비용,DISPATCHER_WEIGHT:총중량,TOTAL_PRICE:총금액" delims="," var="cTitle"> --%>
 									<c:forTokens items="${cTitle }" delims=":" var="cTitleSort" 
										begin="0" step="2"> 
										<c:forTokens items="${cTitle }" delims=":" var="cTitleName" 
											begin="1" step="2"> 
											<th class="${cTitleSort } print_sorting">${cTitleName } 
												<c:choose> --%>
													<c:when
 														test="${sortData.sortName eq fn:toUpperCase(cTitleSort) }">
 														<i class="fa fa-sort-${fn:toLowerCase(sortData.sort) }"> 
														</i>
													</c:when>
													<c:otherwise>
														<i class="fa fa-sort"></i>
													</c:otherwise>
												</c:choose>
											</th>
										</c:forTokens>
									</c:forTokens>
								</c:forTokens>
							</tr>
						</thead>
						<tbody class="ordernum_row">
							<c:forEach items="${chkprint }" var="chkprint">
								<tr>
									${chkprint }
									<td class="">${chkprint.value[srow][order_num] }</td>
								</tr>

							</c:forEach>

						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="resources/js/custom/manufacture/manufacture_main.js"></script>
<script type="text/javascript">
	// 스크롤 좌표 설정
	$('#FixedHeaderTableDiv').scrollLeft('${Data.scrollposition}');

	$(function() {
	})

	// 	function itoStr($num) {
	// 		$num < 10 ? $num = '0' + $num : $num;
	// 		return $num.toString();
	// 	}

	// 	var btn = $('#print');
	// 	var tbl = 'tableS';

	// 	btn.click(function(e) {

	// 		var dt = new Date();
	// 		var year = itoStr(dt.getFullYear());
	// 		var month = itoStr(dt.getMonth() + 1);
	// 		var day = itoStr(dt.getDate());
	// 		var hour = itoStr(dt.getHours());
	// 		var mins = itoStr(dt.getMinutes());

	// 		var postfix = year + month + day + "_" + hour + mins;
	// 		var fileName = "MyTable_" + postfix + ".xls";

	// 		var a = document.createElement('a');
	// 		var data_type = 'data:application/vnd.ms-excel';
	// 		var table_div = document.getElementById(tbl);
	// 		console.log(table_div);
	// 		var table_html = table_div.outerHTML.replace(/ /g, '%20');

	// 		a.href = data_type + ', ' + table_html;
	// 		a.download = fileName;
	// 		a.click();

	// 		e.preventDefault();
	// 	});

	// 	$('.noPrint').change(function(e) {
	// 		console.log(e);
	// 	})
</script>