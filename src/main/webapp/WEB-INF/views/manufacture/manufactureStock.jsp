<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="resources/js/custom/manufacture/Stock/list.js"></script>
<script src="resources/js/custom/manufacture/Stock/delete.js"></script>

<style>
.rightBtnPanel {
	float: right;
	margin: 5px;
}

tbody div {
	margin-bottom: 0em !important;
}
</style>

<div class="panel btnPanel">
	<div class="panel-body">
		<div class="col-md-12">
			<button type="button"
				class="btn btn-primary active btn-sm rightBtnPanel"
				id="input-delete">선택항목삭제</button>
			<button type="button"
				class="btn btn-primary active btn-sm rightBtnPanel" id="input-save">선택항목수정</button>
			<button type="button"
				class="btn btn-primary active btn-sm rightBtnPanel" id="input-reset">변경사항초기화</button>
			<button type="button"
				class="btn btn-primary active btn-sm rightBtnPanel" id="input-panel">자재신규등록</button>
		</div>
	</div>
</div>
<div class="panel">
	<div class="panel-body">
		<div class="col-md-12">
			<table class="table table-bordered" id="tableCheck">

				<col width="2%">
				<col width="15%">
				<col width="10%">
				<col width="10%">
				<col width="10%">
				<col width="10%">
				<col width="10%">
				<col width="15%">

				<thead class="bg-primary text-white">
					<tr>
						<th style="text-align: center; vertical-align: middle;"
							rowspan="2">
							<div class="form-animate-checkbox">
								<input type="checkbox" class="checkbox" id="checkAll"
									name="checkAll">
							</div>
						</th>
						<th style="text-align: center; vertical-align: middle;"
							rowspan="2">품명</th>
						<th style="text-align: center; vertical-align: middle;"
							colspan="5">규격</th>
						<th style="text-align: center; vertical-align: middle;"
							rowspan="2">수량</th>
					</tr>
					<tr>
						<th style="text-align: center; vertical-align: middle;">L</th>
						<th style="text-align: center; vertical-align: middle;">S</th>
						<th style="text-align: center; vertical-align: middle;">T</th>
						<th style="text-align: center; vertical-align: middle;">P</th>
						<th style="text-align: center; vertical-align: middle;">M</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${stoklist }" var="va">
						<tr class="editCheck">
							<td>
								<div class="form-animate-checkbox">
									<input type="checkbox" class="checkbox checkone"
										name="checkone" id="checkone">
								</div>
							</td>
							<td>
								<div class='form-group form-animate-text'
									style='margin-top: 0px !important;'>
									<input class="form-text inputtx-100" type="text"
										value="${va.item }" id="item" name="item">
									<span class='bar'></span>
								</div>
							</td>
							<td>
								<div class='form-group form-animate-text'
									style='margin-top: 0px !important;'>
									<input class="form-text inputtx-100" type="text"
										value="${va.size_l }" id="size_l" name="size_l">
									<span class='bar'></span>
								</div>
							</td>
							<td>
								<div class='form-group form-animate-text'
									style='margin-top: 0px !important;'>
									<input class="form-text inputtx-100" type="text"
										value="${va.size_s }" id="size_s" name="size_s">
									<span class='bar'></span>
								</div>
							</td>
							<td>
								<div class='form-group form-animate-text'
									style='margin-top: 0px !important;'>
									<input class="form-text inputtx-100" type="text"
										value="${va.size_t }" id="size_t" name="size_t">
									<span class='bar'></span>
								</div>
							</td>
							<td>
								<div class='form-group form-animate-text'
									style='margin-top: 0px !important;'>
									<input class="form-text inputtx-100" type="text"
										value="${va.size_p }" id="size_p" name="size_p">
									<span class='bar'></span>
								</div>
							</td>
							<td>
								<div class='form-group form-animate-text'
									style='margin-top: 0px !important;'>
									<input class="form-text inputtx-100" type="text"
										value="${va.size_m }" id="size_m" name="size_m">
									<span class='bar'></span>
								</div>
							</td>
							<td>
								<div class='form-group form-animate-text'
									style='margin-top: 0px !important;'>
									<input class="form-text inputtx-100" type="text"
										value="${va.volume }" id="volume" name="volume"
										onkeydown='return onlyNumber(event)'
										onkeyup='removeChar(event)' style='ime-mode: disabled;'>
									<span class='bar'></span>
								</div>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>