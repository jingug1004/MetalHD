// input select box
var selectInput;
function showSelect(obj) {
	selectInput = $(obj);
	var nWidth = obj.offsetWidth;
	var nHeight = obj.offsetHeight * 3;
	var nTop = $(obj).offset(); // 클릭한 인풋 데이터 가져옴.
	var name = $(obj).attr('name'); // 인풋 네임 get

	var list = [];

	// select 초기화
	$("#in-select").find('tr').remove();

	$.post("./orderGetSelect", {
		"new_name" : name,
		"order_name" : $('[name="order_name"]').val(),
		"manager_name" : $('[name="manager_name"]').val()
	}, function(data) {
		if (data.code == 'OK') {
			list = data.ocList;
			$.each(list, function(index, list) {
				if (name == 'order_name') {
					$("#in-select > table").append(
							"<tr><td class='selectChoose'>" + list.ORDER_NAME
									+ "</td></tr>");
				} else if (name == 'manager_name') {
					if ($('[name="order_name"]').val() != ''
							&& list.MANAGER_NAME == 'undefined') {
						$("#in-select > table").append(
								"<tr><td class='selectChoose'>"
										+ list.MANAGER_NAME + "</td></tr>");
					}
				} else if (name == 'MANAGER_TEL') {
					if ($('[name="order_name"]').val() != ''
							&& $('[name="manager_name"]').val() != '') {
						$("#in-select > table").append(
								"<tr><td class='selectChoose'>"
										+ list.MANAGER_TEL + "</td></tr>");
					}
				}

			});


			
					
			var sizeList = [ "1':306", "2':610", "3':914", "4':1219",
					"5':1524", "6':1820", "7':2134", "8':2438", "9':2743",
					"10':3048" ];
			if (name == 'SIZE_L' || name == 'SIZE_S') {
				for (i = 0; i < sizeList.length; i++) {
					var value = sizeList[i].split(":");
					$("#in-select > table").append(
							"<tr><td class='selectChoose'>" + value[0] + "("
									+ value[1] + ")" + "</td></tr>");
				}
			}
			var sizeList = [ "SS 131", "SS 132", "SS 133", "SS 241", "SS 242",
					"SS 243", "SS 341", "SS 342", "SS 343", "SG 342-1",
					"SG 342-2", "SG 342-3", "SG 362", "SG 363", "SG 364",
					"SS 511", "SS 512", "SS 513", "SS 632", "HDS-1", "HDS-2",
					"HDS-3", "HDS-4" ];
			if (name == 'ITEM') {
				for (i = 0; i < sizeList.length; i++) {
					var value = sizeList[i].split(":");
					$("#in-select > table").append(
							"<tr><td class='selectChoose'>" + value[0]
									+ "</td></tr>");
				}
			}
		}
	});

	if ($("#in-select").css("visibility") == "hidden") {

		$('#in-select').offset({
			top : nTop.top + nHeight / 3,
			left : nTop.left
		});

		$('#in-select').css({
			"width" : nWidth,
			"height" : nHeight,
			"visibility" : "visible"
		});

	} else {
		$("#in-select").css("visibility", "hidden");
	}
}

function showSelectOC(obj) {
	selectInput = $(obj);
	var nWidth = obj.offsetWidth;
	var nHeight = obj.offsetHeight * 3;
	var nTop = $(obj).offset(); // 클릭한 인풋 데이터 가져옴.
	var name = $(obj).attr('name'); // 인풋 네임 get

	var list = [];

	// select 초기화
	$("#in-select").find('tr').remove();

	$.post("./orderGetSelect", {
		"new_name" : name,
		"order_name" : $('[name="order_name"]').val(),
	}, function(data) {
		if (data.code == 'OK') {
			list = data.ocList;
			$.each(list, function(index, list) {
				if (name == 'order_name') {
					$("#in-select > table").append(
							"<tr><td class='selectChoose'>" + list.ORDER_NAME
									+ "</td></tr>");
				}
			});
		}
	});

	if ($("#in-select").css("visibility") == "hidden") {

		$('#in-select').offset({
			top : nTop.top + nHeight / 3,
			left : nTop.left
		});

		$('#in-select').css({
			"width" : nWidth,
			"height" : nHeight,
			"visibility" : "visible"
		});

	}
}

// input select box 적용 엘리멘트 이외 장소 클릭시 choose box hidden
$(document).click(function(event) {
	selectBoxClose(event);
})

function selectBoxClose(event) {
	var clickInfo = event.target;
	// input select box value get/set
	if (clickInfo.className == 'selectChoose') {
		var a = clickInfo.textContent;
		selectInput.val(a);
		getOC(a);
		$("#in-select").css("visibility", "hidden");
	}
	if (clickInfo.onclick == null && clickInfo.nodeName != 'input'
			&& $("#in-select").css("visibility") != "hidden")
		$("#in-select").css("visibility", "hidden");
}

// 발주처 정보 get function
function getOC(order_name) {
	var data = [];
	$.post("./getOCData", "order_name=" + order_name, function(data) {
		if (data.code == "OK") {
			data = data.OCData;
			$.each(data,
					function(index, data) {
						$('[name="ORDER_DELEGATE_NAME"]').val(
								data.ORDER_DELEGATE_NAME);
						$('[name="ORDER_TEL"]').val(data.ORDER_TEL);
						$('[name="ORDER_LOCATION"]').val(data.ORDER_LOCATION);
					});

		}
	});
}

// 수량단가 최종 가격 보여주기
function totalPrice() {
	var total = 0;
	for (var i = 0; i < $('.contentList').length; i++) {
		var val = $('.contentList').eq(i).find('.quantity').eq(0).val();
		var price = $('.contentList').eq(i).find('.quantity').eq(1).val();
		total += val * price;
	}
	if (!isNaN(total))
		$('#total_Price').val(total);
}

// 엔터키 입력시 L > S > 수량 순으로 이동
function focusMove(e, event) {
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if (keyID == 13) {
		if ($(e).attr('name') == 'SIZE_L') {
			$(e).parents('tr').find('#size_S').focus();
		} else if ($(e).attr('name') == 'SIZE_S') {
			$(e).parents('tr').find('#volume').focus();
		}
		$("#in-select").css("visibility", "hidden");
		return;
	} else
		return false;
}