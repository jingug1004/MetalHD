<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class='panel' id='input-panel'>
	<form id="insertForm">
		<div class='panel-body'>
			<div class='col-md-12'>
				<div class="panel">
					<div class="panel-body">
						<div class="col-md-12">
							<button type="button"
								class="btn btn-primary active btn-sm rightBtnPanel"
								id='inputCancel'>등록 취소</button>
							<button type="reset"
								class="btn btn-primary active btn-sm rightBtnPanel"
								id="inputReset">입력 초기화</button>
							<button type="button"
								class="btn btn-primary active btn-sm rightBtnPanel"
								id="inputSave">등록</button>
							<button type="button"
								class="btn btn-primary active btn-sm rightBtnPanel"
								id="inputDelete">입력란 삭제</button>
							<button type="button"
								class="btn btn-primary active btn-sm rightBtnPanel"
								id="inputAdd">입력란 추가</button>
						</div>
					</div>
				</div>
				<table class='table table-bordered'>
					<col width="15%">
					<col width="10%">
					<col width="10%">
					<col width="10%">
					<col width="10%">
					<col width="10%">
					<col width="15%">
					<thead class="bg-primary text-white">
						<tr>
							<th style='text-align: center; vertical-align: middle;'
								rowspan='2'>품명</th>
							<th style='text-align: center; vertical-align: middle;'
								colspan='5'>규격</th>
							<th style='text-align: center; vertical-align: middle;'
								rowspan='2'>수량</th>
						</tr>
						<tr>
							<th style='text-align: center; vertical-align: middle;'>L</th>
							<th style='text-align: center; vertical-align: middle;'>S</th>
							<th style='text-align: center; vertical-align: middle;'>T</th>
							<th style='text-align: center; vertical-align: middle;'>P</th>
							<th style='text-align: center; vertical-align: middle;'>M</th>
						</tr>
					</thead>
					<tbody id="insertBody">
						<tr class="insert">
							<td>
								<div class="form-group form-animate-text"
									style="margin-top: 0px !important;">
									<!-- 									<input type="text" class="form-text ips" required> -->
									<select id="item" name="ITEM" class="chkval form-text ips">
										<option value="">선택</option>
										<c:forTokens
											items="SS131,SS132,SS133,SS241,SS242,SS243,SS341,SS342,SS343,SG342-1,SG342-2,SG342-3, SG362,SG363,SG364,SS511,SS512,SS513,SS632,HDS-1,HDS-2,HDS-3,HDS-4"
											delims="," var="item_n">
											<option value="${item_n }">${item_n }</option>
										</c:forTokens>
									</select>
									<span class="bar"></span>
									<label>Item</label>
								</div>
							</td>
							<td>
								<div class="form-group form-animate-text"
									style="margin-top: 0px !important;">
									<input type="text" class="form-text ips" required>
									<span class="bar"></span>
									<label>Size_L</label>
								</div>
							</td>
							<td>
								<div class="form-group form-animate-text"
									style="margin-top: 0px !important;">
									<input type="text" class="form-text ips" required>
									<span class="bar"></span>
									<label>Size_S</label>
								</div>
							</td>
							<td>
								<div class="form-group form-animate-text"
									style="margin-top: 0px !important;">
									<input type="text" class="form-text ips" required>
									<span class="bar"></span>
									<label>Size_T</label>
								</div>
							</td>
							<td>
								<div class="form-group form-animate-text"
									style="margin-top: 0px !important;">
									<select id="size_P" name="SIZE_P" class="chkval form-text ips">
										<option value="">선택</option>
										<c:forTokens items="P1,P2,P3,P4,P5" delims="," var="sizeP">
											<option value="${sizeP }">${sizeP }</option>
										</c:forTokens>
									</select>
									<span class="bar"></span>
									<label>Size_P</label>
								</div>
							</td>
							<td>
								<div class="form-group form-animate-text"
									style="margin-top: 0px !important;">
									<select id="size_M" name="SIZE_M" style="white-space: nowrap;"
										class="chkval form-text ips">
										<option value="">선택</option>
										<c:forTokens items="M1,M2,M3,M4,M5" delims="," var="sizeM">
											<option value="${sizeM }">${sizeM }</option>
										</c:forTokens>
									</select>
									<span class="bar"></span>
									<label>Size_M</label>
								</div>
							</td>
							<td>
								<div class="form-group form-animate-text"
									style="margin-top: 0px !important;">
									<input type="text" class="form-text ips" required>
									<span class="bar"></span>
									<label>volume</label>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</form>
</div>

<script src="resources/js/custom/manufacture/Stock/insert.js"></script>