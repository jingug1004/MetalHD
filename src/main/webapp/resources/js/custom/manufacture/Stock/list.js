// 시작 후 로드 : 체크박스
$(document).ready(function() {
	var table = $("#tableCheck");
	$("#checkAll").change(function() {
		$(".checkone").prop("checked", this.checked);
		$(".checkone", table).trigger("change");
	});
	$(".checkone", table).change(function() {
		if ($(this).is(":checked")) {
			$(this).parents('tr').addClass("bg-light-grey inputRow");
		} else {
			$(this).parents('tr').removeClass("bg-light-grey inputRow");
		}
	});
});

// 등록페이지 열기 - inputpanel
var inputFT = true;
$('#input-panel').on('click', function() {
	if (inputFT == true) {
		$.ajax({
			url : "./manufacture/showInputPanel",
			success : function(data) {
				$('.btnPanel').before(data);
				inputFT = false;
			}
		});
	}
});

// 초기화버튼 - redirect
$('#input-reset').bind('click', function() {
	returnPage();
});

// redirect - inventory 페이지 다시열기
function returnPage() {
	$.ajax({
		url : "./manufacture/edit",
		success : function(data) {
			$('#content-panel').html(data);
		},
		fail : function() {
			alert(fail);
		}
	});
}

// 수정버튼
$("#input-save").on(
		'click',
		function() {
			var array = new Array();
			var count = 0
			for (var i = 0; i < $('.inputRow').length; i++) {
				array[count] = ' No.'
						+ $('.inputRow').eq(i).children().find('input').eq(1)
								.val();
				count++
			}
			if (count > 0) {
				if (confirm(array + ' : 선택 항목을 변경 하시겠습니까?')) {
					updateInventory();
					return true;
				} else {
					return false;
				}
			} else {
				alert('선택한 항목이 없습니다.');
			}
		});

//수정버튼 - update
function updateInventory() {
	var map = newMap();
	for (var i = 0; i < $('.inputRow').length; i++) {
		var gridArrValue = {
			item : $('.inputRow').eq(i).children().find('input').eq(1).val(),
			scale_l : $('.inputRow').eq(i).children().find('input').eq(2).val(),
			scale_s : $('.inputRow').eq(i).children().find('input').eq(3).val(),
			scale_t : $('.inputRow').eq(i).children().find('input').eq(4).val(),
			scale_p : $('.inputRow').eq(i).children().find('input').eq(5).val(),
			scale_m : $('.inputRow').eq(i).children().find('input').eq(6).val(),
			volume : $('.inputRow').eq(i).children().find('input').eq(7).val()
		};
		map.put("srow", gridArrValue);
		$.ajax({
			url : "./manufacture/updateInventory",
			data : map,
			success : function(data) {
				setTimeout(function() {
					returnPage();
				}, 500);
			}
		});
	}
	alert("변경사항이 저장되었습니다.");
}

