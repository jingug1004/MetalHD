$(function() {
	$('#joinbtn').attr("disabled", true);

});

// 아이디 영어만 쓸수있게
$('#join_id').keyup(function() {
	$(this).val($(this).val().replace(/[^a-z0-9]/g, ""));
});

// 비밀번호에 공백 안들어가게 하기
$('#join_pass').keyup(function() {
	$(this).val($(this).val().replace(/[ ]/g, ""));
});

// 이름에 공백 안들어가게 하기
$('#join_name').keyup(
		function() {
			$(this).val(
					$(this).val().replace(
							/[a-z0-9]|[ \[\]{}()<>?|`~!@#$%^&*-_+=,.;:\"'\\]/g,
							""));

		});

// 회원등록 아이디중복체크 외 잡다한거
$('.checkcheck').blur(function() {
	join_id = $('#join_id');
	join_pass = $('#join_pass');
	join_name = $('#join_name');
	join_rank = $('#join_rank');

	data = "&join_id=" + join_id.val();
	if (join_id.val() == '') {
		$('#idcheck').css({
			"display" : "block",
			"color" : "red"
		}).text("아이디를 입력하세요");
		join_id.focus();
	} else if (join_id.val() != '') {
		$.ajax({
			method : "POST",
			url : "./join_idcheck",
			data : data,
			success : function(data) {

				if (data == 0) {
					$('#idcheck').css({
						"display" : "block",
						"color" : "yellow"
					}).text("아이디를 사용하셔도 좋습니다.");

					if (join_pass.val() == '') {
						$('#passcheck').css({
							"display" : "block",
							"color" : "red"
						}).text("비밀번호를 입력하세요");
						join_pass.focus();
					} else if (join_pass.val() != '') {
						$('#passcheck').css("display", "none");

						if (join_name.val() == '') {
							$('#namecheck').css({
								"display" : "block",
								"color" : "red"
							}).text("이름을 입력하세요");
							join_name.focus();
						} else if (join_name.val() != '') {
							$('#namecheck').css("display", "none");

							if (join_rank.val() == '선택') {
								$('#rankcheck').css({
									"display" : "block",
									"color" : "red"
								}).text("회원등급을 선택하여주세요");
							} else if (join_rank.val() != '선택') {
								$('#rankcheck').css("display", "none");
								$('#joinbtn').attr("disabled", false);
							}

						}
					}
				} else {
					$('#idcheck').css({
						"display" : "block",
						"color" : "red"
					}).text("아이디가 중복됩니다.");
					join_id.focus();
				}
			}
		});
	}

});

// 회원등록
$('#joinbtn').click(function() {

	if (confirm("정말 등록하시겠습니까?") == true) {
		var data = $('#join_form').serialize();
		$.ajax({
			method : "POST",
			url : "./join",
			data : data,
			success : function(data) {

				location.reload(true);
				alert("회원등록이 완료되었습니다.");

			}

		});
	}

});

// 회원리스트에서 선택한회원 불러오기
$('.joinlistid').click(function() {
	id = $(this).text();
	$.ajax({
		method : "POST",
		url : "./joinedit",
		data : "edit_id=" + id,
		success : function(data) {
			$("#content-panel").html(data);

		}

	});
});

// 선택된 회원 삭제시키기
$('.upsert').click(function() {
	var get_info = $("#change_form").serialize();
	var sel_op = $(this).attr("id");
	memeber_upsert(get_info,sel_op);
	
});

function memeber_upsert(get_info,sel_op){
	context = null;
	switch (sel_op) {
	case "deletebtn":
		context = "정말 삭제하시겠습니까?"
		break;
	case "changebtn":
		context = "정말 수정하시겠습니까?"
		break;
	}
	
	if (confirm(context) == true) {
		$.ajax({
			url : "./memberdelete?sel_op="+sel_op,
			data :  get_info,
			success : function() {

				alert("회원 정보가 변경되었습니다.");
				location.reload(true);

			}
		});
	}
};


$('#test_log').click(function(){
	alert("안녕");
});