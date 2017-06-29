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

$(function() {
	$('table').addClass("table table-bordered");
	$('thead').addClass("bg-primary text-white");
	$('th').addClass("bg-primary text-white");
	$('th').attr('nowrap', "nowrap");
	$('td').addClass("form-group form-animate-text");
	$('td').append("<span class='bar'></span>");
	$('input').addClass("form-text ips");
});

//숫자만 입력
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

//주민번호 하이픈 생성
var peopleNo = $('.peopleNo');
    peopleNo.keyup(function(event) {
	event = event || window.event;
	var a = this.value.trim();
	this.value = autoHypenPeople(a);
});

function autoHypenPeople(str) {
	str = str.replace(/[^0-9]/g, '');
	var tmp='';
	     tmp += str.substr(0, 6);
	    tmp += '-';
	    tmp += str.substr(6, 7);
	    return tmp;
	
}

var peopleNo = $('.peopleNo');
peopleNo.keyup(function(event) {
event = event || window.event;
var a = this.value.trim();
this.value = autoHypenPeople(a);
});

function autoHypenPeople(str) {
str = str.replace(/[^0-9]/g, '');
var tmp='';
     tmp += str.substr(0, 6);
    tmp += '-';
    tmp += str.substr(6, 7);
    return tmp;

}

//사번
var empNo = $('.empNo');
empNo.keyup(function(event) {
event = event || window.event;
var a = this.value.trim();
this.value = autoHypenEmp(a);
});

function autoHypenEmp(str) {
str = str.replace(/[^0-9]/g, '');
var tmp='';
     tmp += str.substr(0, 4);
    tmp += '-';
    tmp += str.substr(4, 3);
    return tmp;

}



