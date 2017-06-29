</html><%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<link rel="stylesheet" type="text/css"
	href="resources/css/custom/mEdit.css" />

<div class="col-md-12" id="content-panel">
	<div class='panel' id='input-panel'>
		<div class="panel-body">
			<div class='col-md-12'>
				<span class="m_title" style="visibility: hidden;">생산 관리2</span>
				<div id=tableS style="overflow-x: auto;">
					<table class='table table-striped table-bordered'>
						<thead>
							<c:forTokens
								items="production_seq:NO,ORDER_NUM:주문번호,ORDER_NAME:발주처(상호),ORDER_ITEM:주문서품명,PRODUCTS_REMARK:비고,CONTRACT_NAME:계약명,REQUEST_DATE:납품요청일,REQUEST_EXPECTED:납품예정일,PRODUCTION_DATE:생산예정일,P_DATE:도장소요일,ORDER_STATES:납품완료,CONSIGNEE_LOCATION:납품장소,PRODUCTION_REMARK:생산시주의사항,SIZE_T:규격(T),SIZE_P:규격(P),SIZE_M:규격(M),ORDER_LOCATION:발주처(주소),MANAGER_NAME:발주담당(이름),MANAGER_TEL:발주담당(연락처),SALES:영업담당,PRICE:단가,T_PRICE:행 금액,ORDER_DELEGATE_NAME:대표자,ORDER_TEL:발주처(연락처),ORDER_FAX:발주처(팩스),LOT_NO:LOT_NO,M_NO:M_NO,CONSIGNEE_RANK:인수자 직급,CONSIGNEE_NAME:인수자,CONSIGNEE_TEL:인수자(연락처),ORDER_DATE:접수일,DISPATCHER_COMPANY:화물업체,DISPATCHER_NO:배차 NO,DISPATCHER_TYPE:차종,DISPATCHER_TEL:기사 연락처,DISPATCHER_FARE:운임비용,DISPATCHER_WEIGHT:총중량,TOTAL_PRICE:총금액"
								delims="," var="cTitle">
								<c:forTokens items="${cTitle }" delims=":" var="cTitleSort"
									begin="0" step="2">
									<c:forTokens items="${cTitle }" delims=":" var="cTitleName"
										begin="1" step="2">
										<th class="${cTitleSort } sorting">${cTitleName }
											<c:choose>
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
						</thead>
						<tbody>
							<c:forEach items="${detailed_information }" var="list">
								<tr>
									<c:forTokens
										items="production_seq:NO,ORDER_NUM:주문번호,ORDER_NAME:발주처(상호),ORDER_ITEM:주문서품명,PRODUCTS_REMARK:비고,CONTRACT_NAME:계약명,REQUEST_DATE:납품요청일,REQUEST_EXPECTED:납품예정일,PRODUCTION_DATE:생산예정일,P_DATE:도장소요일,ORDER_STATES:납품완료,CONSIGNEE_LOCATION:납품장소,PRODUCTION_REMARK:생산시주의사항,SIZE_T:규격(T),SIZE_P:규격(P),SIZE_M:규격(M),ORDER_LOCATION:발주처(주소),MANAGER_NAME:발주담당(이름),MANAGER_TEL:발주담당(연락처),SALES:영업담당,PRICE:단가,T_PRICE:행 금액,ORDER_DELEGATE_NAME:대표자,ORDER_TEL:발주처(연락처),ORDER_FAX:발주처(팩스),LOT_NO:LOT_NO,M_NO:M_NO,CONSIGNEE_RANK:인수자 직급,CONSIGNEE_NAME:인수자,CONSIGNEE_TEL:인수자(연락처),ORDER_DATE:접수일,DISPATCHER_COMPANY:화물업체,DISPATCHER_NO:배차 NO,DISPATCHER_TYPE:차종,DISPATCHER_TEL:기사 연락처,DISPATCHER_FARE:운임비용,DISPATCHER_WEIGHT:총중량,TOTAL_PRICE:총금액"
										delims="," var="cTitle">
										<c:forTokens items="${cTitle }" delims=":" var="cTitleSort"
											begin="0" step="2">
											<c:if test="${fn:toLowerCase(cTitleSort) == 'order_num'}">
												<td class="${fn:toLowerCase(cTitleSort) }s">${list[fn:toLowerCase(cTitleSort)] }</td>
											</c:if>
											<c:if test="${fn:toLowerCase(cTitleSort) != 'order_num'}">
												<td class="${fn:toLowerCase(cTitleSort) }">${list[fn:toLowerCase(cTitleSort)] }</td>
											</c:if>
										</c:forTokens>
									</c:forTokens>
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