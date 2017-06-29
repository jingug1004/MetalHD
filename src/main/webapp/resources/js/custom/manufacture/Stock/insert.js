// MAP 생성
function newMap() {
	var length = 0;
	var map = {};
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

//입력란 추가
$('#inputAdd').on(
		'click',
		function() {
			$("#insertBody").append(
					"<tr class='insert'>"
							+ $('#insertBody').find('tr').eq(0).html()
							+ "</tr>");
		});

// 입력란 삭제
$('#inputDelete').on('click', function() {
	if ($(".insert").length != 1) {
		$(".insert").last().remove();
	}
});

// 등록
$('#inputSave').on('click', function() {
//		formCheck();
	insertInventory();
});

// 등록 - 폼체크
function formCheck() {
	var check = true;
	Loop1: for (var i = 0; i < $('.insert').length; i++) {
		for (var j = 0; j < 10; j++) {
			if (!$('.insert').eq(i).children().find('input').eq(j).val().trim()) {
				alert("내용이 없습니다. 값을 입력하세요.");
				check = false;
				$('.insert').eq(i).children().find('input').eq(j).focus()
				break Loop1;
				break;
			}
		}
	}
	if (check == true) {
		if (confirm((i) + '개의 신규자재를 등록하시겠습니까?')) {
			insertInventory();
			return true;
		} else {
			return false;
		}
	}
}

//등록 - 폼체크 - insert
function insertInventory() {
	var map = newMap();
	var checkMsg = [ "Insert Success!!", "Insert Failed Checked Values" ];
	for (var i = 0; i < $('.insert').length; i++) {
		var gridArrValue = {
			item : $('.insert').eq(i).children().find('select').eq(0).val(),
			scale_l : $('.insert').eq(i).children().find('input').eq(0).val(),
			scale_s : $('.insert').eq(i).children().find('input').eq(1).val(),
			scale_t : $('.insert').eq(i).children().find('input').eq(2).val(),
			scale_p : $('.insert').eq(i).children().find('select').eq(1).val(),
			scale_m : $('.insert').eq(i).children().find('select').eq(2).val(),
			volume : $('.insert').eq(i).children().find('input').eq(3).val()
		};
		map.put("srow", gridArrValue);
		$.ajax({
			url : "./manufacture/stockinsert",
			data : map,
			success : function(data) {
				alert(data);
				// 							alert(checkMsg[data == true ? 0 : 1]);
				var mtx = $("#panelAni").html();
				$("#panelAni").html(
						"<h5 id='fadeMag' class='animated fadeInLeft'>"
								+ checkMsg[data == true ? 0 : 1] + "</h5>");
				if (data == 1) {
					$("#fadeMag").css("color", "green");
					alert('정상적으로 등록 되었습니다.');
				} else {
					$("#fadeMag").css("color", "red");
					alert('등록 실패 : 중복되는 번호있음.');
				}
				setTimeout(function() {
					$("#panelAni").html(mtx);
					pageReload();
				}, 1500);
			}
		});
	}
}

//등록 - 폼체크 - insert 후 페이지 리로드
function pageReload() {
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

// 취소
$('#inputCancel').bind('click', function() {
	$(this).parent().parent().parent().parent().parent().remove();
	inputFT = true;
});