<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />

<link rel="stylesheet" type="text/css"
	href="resources/css/custom/mEdit.css" />

<script type="text/javascript">
	// 오늘 날짜 표기
	document.getElementById('sedate').valueAsDate = new Date();

	// 스크롤 좌표 설정
	$('#tableS').scrollLeft('${Data.scrollposition}');

	// 검색 일자 고정
	if ('${Data.ssdate}' != null && '${Data.ssdate}' != '')
		$('#ssdate').val('${Data.ssdate}');
	if ('${Data.sedate}' != null && '${Data.sedate}' != '')
		$('#sedate').val('${Data.sedate}');
</script>

<div class="col-md-12" id="content-panel">
	<div class='panel' id='input-panel'>
		<div class="panel-body">
			<div class='col-md-12'>
				<span class="m_title" style="visibility: hidden;">생산 관리</span>
				<div class="m_search" style="height: 3em;">
					<form id="searchForm">
						<input type="date" id="ssdate" name="ssdate">
						~
						<input type="date" id="sedate" name="sedate">
						&nbsp;&nbsp;
						<select name="wheredate">
							<c:choose>
								<c:when test="${empty Data.wheredate }">
									<option value="" selected="selected">선택</option>
								</c:when>
								<c:otherwise>
									<option value="${Data.wheredate }" selected="selected">
										<c:choose>
											<c:when test="${Data.wheredate == 'order_date'}">주문번호(접수일)</c:when>
											<c:when test="${Data.wheredate == 'request_expected'}">납품 예정일</c:when>
											<c:when test="${Data.wheredate == 'request_date'}">납품 요청일</c:when>
											<c:when test="${Data.wheredate == 'production_date'}">생산 예정일</c:when>
										</c:choose>
									</option>
									<option value="">선택</option>
								</c:otherwise>
							</c:choose>
							<c:forTokens
								items="order_date:주문번호(접수일),request_expected:납품 예정일,request_date:납품 요청일,production_date:생산 예정일"
								delims="," var="sTitle">
								<c:forTokens items="${sTitle }" delims=":" var="sTitleTarget"
									begin="0" step="2">
									<c:forTokens items="${sTitle }" delims=":" var="sTitleName"
										begin="1" step="2">
										<option value="${sTitleTarget }">${sTitleName }</option>
									</c:forTokens>
								</c:forTokens>
							</c:forTokens>
						</select>
						&nbsp;&nbsp;
						<select name="company_name">
							<c:choose>
								<c:when test="${empty Data.company_name }">
									<option value="" selected="selected">발주처 선택</option>
								</c:when>
								<c:otherwise>
									<option value="${Data.company_name }" selected="selected">${Data.company_name }</option>
									<option value="">발주처 선택</option>
								</c:otherwise>
							</c:choose>
							<c:forEach items="${companyname }" var="list">
								<option value="${list.order_Name }">${list.order_Name }</option>
							</c:forEach>
						</select>
						&nbsp;&nbsp;
						<select name="nappum_condition">
							<option value="" selected="selected">전체보기</option>
							<option value="1">납품완료</option>
							<option value="0">납품대기</option>
						</select>
						&nbsp;&nbsp;
						<input type="button" value="검색" style="margin-bottom: 1em;"
							class="btn btn-gradient btn-default" id="search">
						<input type="button" value="인쇄" style="float: right;"
							class="btn btn-gradient btn-default" id="printout">&nbsp;&nbsp;
					    <input type="button" value="엑셀 저장"
							class="btn btn-gradient btn-default" id="print"
							style="float: right;" >
<!-- 					    <input type="button" value="엑셀 저장" -->
<!-- 							class="btn btn-gradient btn-default" id="print" -->
<!-- 							style="float: right;" > -->
					</form>
				</div>
				<div id="tableS" style="overflow-x: auto;">
					<table class='table table-striped table-bordered'>
						<thead>
							<tr>
								<th>
									<input type="checkbox" class="chkAll">
								</th>
								<c:forTokens
									items="production_seq:NO,order_num:주문 번호,order_name:발주처 (상호),item:품명,size_l:규격 (L),size_s:규격 (S),volume:수량,request_expected:납품 예정일,request_date:납품 요청일,production_date:생산 예정일,p_date:도장 소요일,order_states:납품 완료,products_remark:비고"
									delims="," var="cTitle">
									<c:forTokens items="${cTitle }" delims=":" var="cTitleSort"
										begin="0" step="2">
										<c:forTokens items="${cTitle }" delims=":" var="cTitleName"
											begin="1" step="2">
											<th class="${cTitleSort } list_sorting">${cTitleName }
												<c:choose>
													<c:when
														test="${fn:toUpperCase(Data.sortName) eq fn:toUpperCase(cTitleSort) }">
														<i class="fa fa-sort-${fn:toLowerCase(Data.sort) }"> </i>
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
							<c:forEach items="${manufactureAlllist }" var="list">
								<tr>
									<td>
										<input type="checkbox" class="chkOne">
									</td>
									<c:forTokens
										items="production_seq:NO,order_num:주문 번호,order_name:발주처 (상호),item:품명,size_l:규격 (L),size_s:규격 (S),volume:수량,request_expected:납품 예정일,request_date:납품 요청일,production_date:생산 예정일,p_date:도장 소요일,order_states:납품 완료,products_remark:비고"
										delims="," var="cTitle">
										<c:forTokens items="${cTitle }" delims=":" var="cTitleSort"
											begin="0" step="2">
											<c:if test="${fn:toLowerCase(cTitleSort) == 'order_num'}">
												<td class="${fn:toLowerCase(cTitleSort) }s"
													id="${fn:toLowerCase(cTitleSort) }s"
													style="cursor: pointer; color: #2196F3">${list[fn:toLowerCase(cTitleSort)] }</td>
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

