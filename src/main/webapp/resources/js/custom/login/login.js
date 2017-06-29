$(function(){
	
});


$('.form-text').keypress(function(e){
	if(e.keyCode==13){
		$('#loginbtn').click();
	}
});

$('#loginbtn').click(function(){
	id = $('#id');
	pass = $('#password');
	
	if(id.val() == ''){
		alert("아이디를 입력하세요");
		id.focus();
	}
	else if(pass.val() == ''){
		alert("비밀번호를 입력해주세요");
		pass.focus();
	}else{
	var data = $('#loginform').serialize();
	$.ajax({
		method : "POST",
		url :"./logincheck",
		data:data,
		success : function(data) {
			if(data){
				location.reload(true);
			}else{
				$('#id').val('');
				$('#password').val('');
				$('#id').focus();
				alert("아이디나 비밀번호를 확인해주세요");
			}
			
	      }
	      
	});
	}
	
});

$('#logout').click(function(){
	 $.ajax({
		 url : "./logout",
		 success : function(){
			location.reload(true);
		 }
	 });
	
});



