//숫자만 입력되게 하여라. input에 입력
// onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)' style='ime-mode: disabled;'
function onlyNumber(event) {
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if ((keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105)
			|| keyID == 8 || keyID == 9 || keyID == 46 || keyID == 37
			|| keyID == 39)
		return;
	else
		return false;
}
function removeChar(event) {
	event = event || window.event;
	var keyID = (event.which) ? event.which : event.keyCode;
	if (keyID == 8 || keyID == 9 || keyID == 46 || keyID == 37 || keyID == 39)
		return;
	else
		event.target.value = event.target.value.replace(/[^0-9]/g, "");
}

//전화번호 하이픈 생성
var phonenum = $('.phone');
phonenum.keyup(function(event) {
	event = event || window.event;
	var a = this.value.trim();
	this.value = autoHypenPhone(a);
});
function autoHypenPhone(str) {
	str = str.replace(/[^0-9]/g, '');
	var tmp = '';
	if (str.length < 4) {
		return str;
	} else if (str.length < 7) {
		tmp += str.substr(0, 3);
		tmp += '-';
		tmp += str.substr(3, 4);
		return tmp;
	} else if (str.length < 11) {
		tmp += str.substr(0, 3);
		tmp += '-';
		tmp += str.substr(3, 3);
		tmp += '-';
		tmp += str.substr(6, 4);
		return tmp;
	} else {
		tmp += str.substr(0, 3);
		tmp += '-';
		tmp += str.substr(3, 4);
		tmp += '-';
		tmp += str.substr(7, 4);
		return tmp;
	}
	return str;
};

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

// div id값 안에있는것 인쇄
function printDiv(divName) {
	var printContents = document.getElementById(divName).innerHTML;
	var originalContents = document.body.innerHTML;
	document.body.innerHTML = printContents;
	window.print();
	document.body.innerHTML = originalContents;
}

$(function() {
	$('table').addClass("table table-bordered");
	$('thead').addClass("bg-primary text-white");
	$('th').addClass("bg-primary text-white");
	$('th').attr('nowrap', "nowrap");
	$('td').addClass("form-group form-animate-text");
	$('td').append("<span class='bar'></span>");
	$('input').addClass("form-text ips");
	
	tableIndex();
});



//테이블 번호 부여
function tableIndex() {
	var trName = "";
	
	for (var i = 0; i < $('table > tbody > tr').length; i++) {
		var target = $('table>tbody>tr').eq(i);
		var targetName = target.find('.order_num');
		var targetOrder_name = target.find('.order_name')
		if (trName == "") {
			trName = targetName.text().replace(' ', '');
			target.addClass(trName);
		} else if (trName == targetName.text().replace(' ', '')) {
			targetName.text("");
			targetName.removeAttr('style');
			targetName.removeClass('order_num');
			targetOrder_name.text("");
			target.addClass(trName);
		} else if (trName != targetName.text().replace(' ', '')) {
			trName = targetName.text().replace(' ', '');
			target.addClass(trName);
		}
	}
}
