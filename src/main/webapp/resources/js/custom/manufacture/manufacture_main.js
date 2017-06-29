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

$(function() {
	tableIndex();
	Dis_fere()

	// 체크 박스
	var table = $("table");
	$(".chkAll").change(function() {
		$(".chkone").prop("checked", this.checked);
		$(".chkone", table).trigger("change");
	});
	$(".chkone", table).change(function() {
		if ($(this).is(":checked")) {
			$(this).parents('tr').addClass("bg-light-grey inputRow");
			var a = $(this).parents('tr').attr('class');
			var b = a.split(' ', 1);
			for (var i = 0; i < $('.' + b).length; i++) {
				$('.' + b).addClass("bg-light-grey inputRow");
			}
		} else {
			$(this).parents('tr').removeClass("bg-light-grey inputRow");
			var a = $(this).parents('tr').attr('class');
			var b = a.split(' ', 1);
			for (var i = 0; i < $('.' + b).length; i++) {
				$('.' + b).removeClass("bg-light-grey inputRow");
			}
		}
	});
})

// page title 전환,
$(function() {
	var title = $('.m_title').text();
	$('.panel-body').find('.fadeInLeft').text(title);
});

// page title 복구
$('.menuclass').click(function() {
	$('.panel-body').find('.fadeInLeft').text("합동메탈");
})

$('.list_sorting').click(function() {
	var data = $('#searchForm').serialize();

	data += "&scrollposition=" + $('#tableS').prop('scrollLeft');

	var clickinfo = $(this).attr('class').split(' ', 1);

	data += "&clickinfo=" + clickinfo;
	$.ajax({
		url : "./manufacture/search_list",
		data : data,
		success : function(data) {
			$("#content-panel").html(data);
		},
		fail : function() {
			alert(fail);
		}
	});
});

// 리스트 클릭했을시 선택된 관련자료 모두 뿌려주기 // 디테일
$('.order_nums').click(function() {
	var order_num = $(this).text()
	var clickinfo = '';

	$.ajax({
		url : "./manufacture/detailed_information",
		data : "sort=" + clickinfo + "&order_num=" + order_num,
		success : function(data) {
			$("#content-panel").html(data);
		},
		fail : function() {
			alert(fail);
		}
	});
});

// 검색
$('#search').click(
		function() {

			var data = $('#searchForm').serialize();

			data += "&scrollposition=" + $('#tableS').prop('scrollLeft');

			var sort, sortName;

			for (var i = 0; i < $('i.fa').length; i++) {
				if ($('i.fa').eq(i).attr('class').length > 10) {
					sort = $('i.fa').eq(i).attr('class').split('-');
					sortName = $('i.fa').eq(i).parent('th').attr('class')
							.split(' ', 1);
				}
			}

			if (sort != null && sort.length >= 3)
				data += "&sort=" + sort[2] + "&sortName=" + sortName;

			$.ajax({
				url : "./manufacture/search_list",
				data : data,
				success : function(data) {
					$("#content-panel").html(data);
				},
				fail : function() {
					alert(fail);
				}
			});
		});

$('.print_sorting').click(function() {
	var data = $('#searchForm').serialize();

	data += "&scrollposition=" + $('#tableS').prop('scrollLeft');

	var clickinfo = $(this).attr('class').split(' ', 1);

	data += "&clickinfo=" + clickinfo;
	$.ajax({
		url : "./manufacture/search_list_print",
		data : data,
		success : function(data) {
			$("#content-panel").html(data);
		},
		fail : function() {
			alert(fail);
		}
	});
});

$('#print_search').click(
		function() {

			var data = $('#searchForm').serialize();

			data += "&scrollposition=" + $('#tableS').prop('scrollLeft');

			var sort, sortName;

			for (var i = 0; i < $('i.fa').length; i++) {
				if ($('i.fa').eq(i).attr('class').length > 10) {
					sort = $('i.fa').eq(i).attr('class').split('-');
					sortName = $('i.fa').eq(i).parent('th').attr('class')
							.split(' ', 1);
				}
			}

			if (sort != null && sort.length >= 3)
				data += "&sort=" + sort[2] + "&sortName=" + sortName;

			$.ajax({
				url : "./manufacture/search_list_print",
				data : data,
				success : function(data) {
					$("#content-panel").html(data);
				},
				fail : function() {
					alert(fail);
				}
			});
		});

// 데이터를 가져와 TABLE만 수정
var sortlavel = "", sortSave = "";
$('.sorting')
		.click(
				function() {
					// 정렬 정보
					var selectSortName = $(this).attr('class').split(' ', 1);

					if (sortSave == "") {
						sortSave = selectSortName[0];
						sortlavel = "desc";
					} else if (sortlavel == "asc"
							&& sortSave == selectSortName[0]) {
						sortlavel = "desc";
					} else if (sortlavel == "desc"
							&& sortSave == selectSortName[0]) {
						sortlavel = "asc";
					} else if (sortSave != selectSortName[0]) {
						sortSave = selectSortName[0];
						sortlavel = "desc";
					}

					var order_num = $(".order_nums").eq(0).text();

					var data = {
						"sort" : sortlavel,
						"sortName" : sortSave,
						"order_num" : order_num
					};

					var a = "production_seq,ORDER_NUM,ORDER_NAME,ORDER_ITEM,PRODUCTS_REMARK,CONTRACT_NAME,REQUEST_DATE,REQUEST_EXPECTED,PRODUCTION_DATE,P_DATE,ORDER_STATES,CONSIGNEE_LOCATION,PRODUCTION_REMARK,SIZE_T,SIZE_P,SIZE_M,ORDER_LOCATION,MANAGER_NAME,MANAGER_TEL,SALES,PRICE,T_PRICE,ORDER_DELEGATE_NAME,ORDER_TEL,ORDER_FAX,LOT_NO,M_NO,CONSIGNEE_RANK,CONSIGNEE_NAME,CONSIGNEE_TEL,ORDER_DATE,DISPATCHER_COMPANY,DISPATCHER_NO,DISPATCHER_TYPE,DISPATCHER_TEL,DISPATCHER_FARE,DISPATCHER_WEIGHT,TOTAL_PRICE";
					var b = a.split(",");

					var list = [];
					$.post("./manufacture/sortAndSearch", data, function(data) {
						if (data.CODE == "OK") {
							list = data.manufactureAlllist;

							$('i').attr('class', 'fa fa-sort');

							$('.' + data.sortName).find('.fa').removeClass(
									'fa-sort').removeClass('fa-sort-desc')
									.removeClass('fa-sort-asc').addClass(
											'fa-sort-' + data.sort);

							var c = "";
							for (var i = 0; i < list.length; i++) {
								c += "<tr>";
								for (var j = 0; j < b.length; j++) {
									if (b[j].toLowerCase() == 'order_num') {
										c += "<td class='" + b[j].toLowerCase()
												+ "s'>"
												+ list[i][b[j].toLowerCase()]
												+ "</td>";
									} else {
										c += "<td class='" + b[j].toLowerCase()
												+ "'>"
												+ list[i][b[j].toLowerCase()]
												+ "</td>";
									}
								}
								c += "</tr>";
								$('tbody').html(c);
							}
							tableIndex();
							tableNullconvert();
						}
					})
				});

// 테이블 번호 부여
function tableIndex() {
	var trIndex = 1, trName = "";

	for (var i = 0; i < $('table > tbody > tr').length; i++) {
		var target = $('table>tbody>tr').eq(i);
		var targetName = target.find('.order_nums');
		var targetIndex = target.find('.production_seq');
		var targetOrder_name = target.find('.order_name')

		if (trName == "") {
			trName = targetName.text().replace(' ', '');
			targetIndex.text(trIndex);
			target.addClass(trName);
			trIndex++;
		} else if (trName == targetName.text().replace(' ', '')) {
			target.find('.chkone').remove();
			targetIndex.text("");
			targetName.text("");
			targetName.removeAttr('style');
			targetName.removeClass('order_nums');
			targetOrder_name.text("");
			target.addClass(trName);
		} else if (trName != targetName.text().replace(' ', '')) {
			trName = targetName.text().replace(' ', '');
			targetIndex.text(trIndex);
			target.addClass(trName);
			trIndex++;
		}
	}
}

// 테이블 NULL 제거
function tableNullconvert() {
	for (var i = 0; i < $('td').length; i++) {
		if ($('td').eq(i).text() == 'null'
				|| $('td').eq(i).text() == 'undefined') {
			$('td').eq(i).text("");
		}
	}
}

// 운임 선 착불 DECODE
function Dis_fere() {
	var a = $('.dispatcher_fare');
	for (var i = 0; i < a.length; i++) {
		if (a.eq(i).text() == 0) {
			a.eq(i).text('착불');
		} else {
			a.eq(i).text('선불');
		}
	}
}

// 출력
$(function() {
	$('#printout').click(function() {
		fnPrint();
	})

})

function fnPrint() {

	var strFeature = "";
	strFeature += "width=screen.width, height=screen.height, fullscreen=yes";

	var objWin = window.open('', 'print', strFeature);
	objWin.document
			.write('<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />');
	objWin.document
			.write('<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css">'
					+ '<link rel="stylesheet" type="text/css" href="resources/css/plugins/font-awesome.min.css" />'
					+ '<link rel="stylesheet" type="text/css" href="resources/css/plugins/simple-line-icons.css" />'
					+ '<link rel="stylesheet" type="text/css" href="resources/css/plugins/animate.min.css" /> <link href="resources/css/style.css" rel="stylesheet"> <link rel="shortcut icon" href="resources/img/logomi.png">');
	objWin.document
			.write("<table class='table table-striped table-bordered' width='100' border='1' style='white-space: nowrap !important;'>");
	objWin.document
			.write('<thead style="text-align: center !important; vertical-align: middle !important; white-space: nowrap !important;">');
	for (var i = 1; i < $('thead').find('th').length; i++) {
		objWin.document.write('<th>');
		objWin.document.write($('thead').find('th').eq(i).text());
		objWin.document.write('</th>');
	}
	objWin.document.write('</thead>');
	for (var i = 0; i < $('.inputRow').length; i++) {
		objWin.document.write('<tr>');
		for (var j = 1; j < $('.inputRow').eq(i).find('td').length; j++) {
			objWin.document.write('<td>');
			objWin.document.write($('.inputRow').eq(i).find('td').eq(j).text());
			objWin.document.write('</td>');
		}
		objWin.document.write('</tr>');
	}
	objWin.document.write("</table>");
	objWin.document
			.write('<script src="resources/js/jquery-2.2.3.js"></script> <script src="resources/js/jquery.ui.min.js"></script> <script src="resources/js/bootstrap.min.js"></script> <script src="resources/js/plugins/moment.min.js"></script> <script src="resources/js/plugins/jquery.nicescroll.js"></script> <script src="resources/js/main.js"></script> <script src="resources/js/custom/login/login.js"></script> <script src="resources/js/custom/index.js"></script>');

	objWin.document.close();

	objWin.print();
	objWin.close();
};

$('#print')
		.click(
				function() {

					var excelTable = "<%@ page language='java' contentType='text/html; charset=UTF-8' pageEncoding='UTF-8'%>"
					excelTable += "<table id='xtable'>";

					excelTable += '<thead style="text-align: center !important; vertical-align: middle !important; white-space: nowrap !important;">';
					for (var i = 0; i < $('thead').find('th').length; i++) {
						excelTable += '<th>';
						excelTable += $('thead').find('th').eq(i).text();
						excelTable += '</th>';
					}
					excelTable += '</thead>';

					var inputRow = $(".inputRow");
					for (var i = 0; i < inputRow.length; i++) {
						excelTable += "<tr>";
						alert($(".inputRow").eq(i).html());
						excelTable += $(".inputRow").eq(i).html();
						excelTable += "</tr>";
					}
					excelTable += "</table>"

					function itzeNo($num) {
						$num < 10 ? $num = '0' + $num : $num;
						return $num.toString();
					}
					
					var dt = new Date();
					var year = itzeNo(dt.getFullYear());
					var month = itzeNo(dt.getMonth() + 1);
					var day = itzeNo(dt.getDate());
					var hour = itzeNo(dt.getHours());
					var mins = itzeNo(dt.getMinutes());

					var postfix = year + month + day + "_" + hour + mins;
					var fileName = "HD_METAL_" + postfix + ".xls";

					var link = document.createElement('a');
					link.download = fileName;
					link.href = 'data:,' + excelTable;
					link.click();

				});

// var strFeature = "";
// strFeature += "width=screen.width, height=screen.height, fullscreen=yes";
//
// var objWin = window.open('', 'print', strFeature);
// objWin.document
// .write('<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1" />');
// objWin.document
// .write('<link rel="stylesheet" type="text/css"
// href="resources/css/bootstrap.min.css">'
// + '<link rel="stylesheet" type="text/css"
// href="resources/css/plugins/font-awesome.min.css" />'
// + '<link rel="stylesheet" type="text/css"
// href="resources/css/plugins/simple-line-icons.css" />'
// + '<link rel="stylesheet" type="text/css"
// href="resources/css/plugins/animate.min.css" /> <link
// href="resources/css/style.css" rel="stylesheet"> <link rel="shortcut icon"
// href="resources/img/logomi.png">');
// objWin.document
// .write("<table class='table table-striped table-bordered' width='100'
// border='1' style='white-space: nowrap !important;'>");
// objWin.document
// .write('<thead style="text-align: center !important; vertical-align: middle
// !important; white-space: nowrap !important;">');
// for (var i = 1; i < $('thead').find('th').length; i++) {
// objWin.document.write('<th>');
// objWin.document.write($('thead').find('th').eq(i).text());
// objWin.document.write('</th>');
// }
// objWin.document.write('</thead>');
// for (var i = 0; i < $(".chkone:checked").length; i++) {
// objWin.document.write('<tr>');
//		
//		
// alert($(".chkone:checked").parent().attr('id'));
// for (var j = 1; j < $('.ordernum_row').eq(i).find('td').length; j++) {
// objWin.document.write('<td>');
// objWin.document.write($('.ordernum_row').eq(i).find('td').eq(j).text());
// alert($('.ordernum_row').eq(i).find('td').eq(j).text());
// objWin.document.write('</td>');
// }
// objWin.document.write('</tr>');
// }
// objWin.document.write("</table>");
// objWin.document
// .write('<script src="resources/js/jquery-2.2.3.js"></script> <script
// src="resources/js/jquery.ui.min.js"></script> <script
// src="resources/js/bootstrap.min.js"></script> <script
// src="resources/js/plugins/moment.min.js"></script> <script
// src="resources/js/plugins/jquery.nicescroll.js"></script> <script
// src="resources/js/main.js"></script> <script
// src="resources/js/custom/login/login.js"></script> <script
// src="resources/js/custom/index.js"></script>');
//
// objWin.document.close();
//
// objWin.print();
// objWin.close();

// for (var i = 0; i < $('.inputRow').length; i++) {
// var girdArr =
// {
// pruduction_seq : $('inputRow').eq(i).find('td').eq(1).text(),
// order_num: $('.inputRow').eq(i).find('td').eq(2).text(),
// order_name: $('.inputRow').eq(i).find('td').eq(3).text(),
// products_remark: $('.inputRow').eq(i).find('td').eq(4).text(),
// contract_name: $('.inputRow').eq(i).find('td').eq(5).text(),
// request_date: $('.inputRow').eq(i).find('td').eq(6).text(),
// request_expected: $('.inputRow').eq(i).find('td').eq(7).text(),
// production_date: $('.inputRow').eq(i).find('td').eq(8).text(),
// p_date: $('.inputRow').eq(i).find('td').eq(9).text(),
// order_states: $('.inputRow').eq(i).find('td').eq(10).text(),
// consignee_location: $('.inputRow').eq(i).find('td').eq(11).text(),
// production_remark: $('.inputRow').eq(i).find('td').eq(12).text(),
// item: $('.inputRow').eq(i).find('td').eq(13).text(),
// size_l: $('.inputRow').eq(i).find('td').eq(14).text(),
// size_s: $('.inputRow').eq(i).find('td').eq(15).text(),
// size_t: $('.inputRow').eq(i).find('td').eq(16).text(),
// size_p: $('.inputRow').eq(i).find('td').eq(17).text(),
// size_m: $('.inputRow').eq(i).find('td').eq(18).text(),
// volume: $('.inputRow').eq(i).find('td').eq(19).text(),
// order_location: $('.inputRow').eq(i).find('td').eq(20).text(),
// manager_name: $('.inputRow').eq(i).find('td').eq(21).text(),
// manager_tel: $('.inputRow').eq(i).find('td').eq(22).text(),
// sales: $('.inputRow').eq(i).find('td').eq(23).text(),
// price: $('.inputRow').eq(i).find('td').eq(24).text(),
// t_price: $('.inputRow').eq(i).find('td').eq(25).text(),
// order_delegate_name: $('.inputRow').eq(i).find('td').eq(26).text(),
// order_tel: $('.inputRow').eq(i).find('td').eq(27).text(),
// order_fax: $('.inputRow').eq(i).find('td').eq(28).text(),
// lot_no: $('.inputRow').eq(i).find('td').eq(29).text(),
// m_no: $('.inputRow').eq(i).find('td').eq(30).text(),
// consignee_rank: $('.inputRow').eq(i).find('td').eq(31).text(),
// consignee_name: $('.inputRow').eq(i).find('td').eq(32).text(),
// consignee_tel: $('.inputRow').eq(i).find('td').eq(33).text(),
// order_date: $('.inputRow').eq(i).find('td').eq(34).text(),
// dispatcher_company: $('.inputRow').eq(i).find('td').eq(35).text(),
// dispatcher_no: $('.inputRow').eq(i).find('td').eq(36).text(),
// dispatcher_type: $('.inputRow').eq(i).find('td').eq(37).text(),
// dispatcher_tel: $('.inputRow').eq(i).find('td').eq(38).text(),
// dispatcher_fare: $('.inputRow').eq(i).find('td').eq(39).text(),
// dispatcher_weight: $('.inputRow').eq(i).find('td').eq(40).text(),
// total_price: $('.inputRow').eq(i).find('td').eq(41).text()
//			
// };
// alert(girdArr);
// $('.table table-striped table-bordered').btechco_excelexport({
// containerid: "tblExport"
// , datatype: $datatype.Table
// });
// var map = newMap();
// map.put("srow", girdArr);
// $.ajax({
// url : "./manufacture/srowchkprint",
// data : map,
// success : function(data) {
// $("#content-panel").html(data);
// }
// });

// DB관리 삭제
$("#print_delete").on('click', function() {
	var array = new Array();
	var count = 0
	for (var i = 0; i < $('.inputRow').length; i++) {
		array[count] = $('.inputRow').eq(i).find('td').eq(2).text();
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
			order_num : $('.inputRow').eq(i).find('td').eq(2).text()
		};
		map.put("srow", gridArrValue);

		$.ajax({
			url : "./manufacture/dbdelete",
			data : map,
			success : function(data) {
				alert("선택 항목이 삭제되었습니다.");
				move();

				setTimeout(function() {
					returnPage();
				}, 500);
			}
		});
	}

};

function move() {
	$.ajax({
		url : "./manufacture/print",
		success : function(data) {
			$("#content-panel").html(data);
		},
		fail : function() {
			alert(fail);
		}
	});
}
