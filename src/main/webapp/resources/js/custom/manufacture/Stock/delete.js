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

//삭제버튼
$("#input-delete").on(
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
				if (confirm(array + ' : 선택 항목을 삭제 하시겠습니까?')) {
					deleteInventory();
					return true;
				} else {
					return false;
				}
			} else {
				alert('선택한 항목이 없습니다.');
			}
		});

// 삭제버튼 - delete
function deleteInventory() {
	var map = newMap();
	for (var i = 0; i < $('.inputRow').length; i++) {
		var gridArrValue = {
			item : $('.inputRow').eq(i).children().find('input').eq(1).val(),
		};
		map.put("srow", gridArrValue);
		$.ajax({
			url : "./manufacture/stockdelete",
			data : map,
			success : function(data) {
				setTimeout(function() {
					returnPage();
				}, 500);
			}
		});
	}
	alert("선택 항목이 삭제되었습니다.");
}
