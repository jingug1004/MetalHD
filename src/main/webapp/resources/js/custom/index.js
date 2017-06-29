$(document).ready(function() {
	$(".lrArrow").hide();
});

$(".menuclass").on("click", function() {
	var menu = $(this).attr('id');
	$.ajax({
		url : "./" + menu,
		success : function(data) {
			$("#content-panel").html(data);
		},
		fail : function() {
			alert(fail);
		}
	});
});

$("#loginPage").on("click", function() {
	$.ajax({
		url : "./loginPage",
		success : function(data) {
			$("#content-panel").html(data);
		},
		fail : function() {
			alert(fail);
		}
	});
});

$("#logout").on("click", function() {
	$.ajax({
		url : "./invalidate",
		method : 'POST',
		success : function(data) {
			alert('로그아웃성공');
			setTimeout(function() {
				location.href = "./";
			}, 1500);
		}
	});
});
var lrArrow = new Array();
var arrowLength = 0;
$(".lrArrow").on('click', function() {

	var selectArrow = $(this).attr('id');
	arrowAction(selectArrow);
});
function arrowAction(key) {
	// arrowLength==key == "lrleft"?arrowLength--:arrowLength++;
	var aindex = 0;
	if (key == "lrleft" && arrowLength != 0) {
		aindex = arrowLength - 2;
		arrowLength--;
		$("#lrright").show(0);
		
		arrowLength != 0?arrowAction2(lrArrow[aindex]):alert("더 이상 뒤로 갈 수 없습니다.");
		
	}
	if (key == "lrright" && lrArrow.length != arrowLength) {

		aindex = arrowLength;
		arrowLength != lrArrow.length-1?arrowAction2(lrArrow[aindex]):alert("더 이상 앞으로 갈 수 없습니다.");
		arrowLength++;
	}

}
function arrowAction2(actionUrl) {
	$.ajax({
		url : actionUrl,
		success : function(data) {
			$("#content-panel").html(data);
		},
		fail : function() {
			alert(fail);
		}
	});
}
$(".menuclass").on('click', function() {
	$("#lrleft").show(0);
	lrArrow[arrowLength] = $(this).attr('id');
	console.log(lrArrow[arrowLength]);
	arrowLength++;
});