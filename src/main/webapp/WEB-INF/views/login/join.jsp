
<head>
<%@ page contentType="text/html; charset=utf-8"%>
<meta charset="utf-8">
<meta name="description" content="Miminium Admin Template v.1">
<meta name="author" content="Isna Nur Azis">
<meta name="keyword" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>회원가입</title>

<!-- start: Css -->
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/custom/login.css">

<!-- plugins -->
<link rel="stylesheet" type="text/css"
	href="resources/css/plugins/font-awesome.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/plugins/simple-line-icons.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/plugins/animate.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/plugins/icheck/skins/flat/aero.css" />
<link href="resources/css/style.css" rel="stylesheet">
<!-- end: Css -->

<link rel="shortcut icon" href="resources/img/logomi.png">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
</head>

<body id="mimin" class="dashboard form-signin-wrapper">

	<div class="container">

		<form class="form-signin" id="join_form">
			<div class="panel periodic-login">
				<div class="panel-body text-center">
					<h1>HDMetal</h1>
					<h3 class="m_title">회원가입</h3>

					<i class="icons icon-arrow-down"></i>
					<div class="form-group form-animate-text"
						style="margin-top: 40px !important;">
						<input type="text" class="form-text checkcheck" id="join_id" name="join_id" required> <span
							class="bar"></span> <label>아이디</label>
							<p id="idcheck" style="display: none;">아이디 중복여부</p>
					</div>
					<div class="form-group form-animate-text"
						style="margin-top: 40px !important;">
						<input type="password" class="form-text checkcheck" id="join_pass" name="join_pass" required> <span
							class="bar"></span> <label>비밀번호</label>
							<p id="passcheck" style="display: none;"></p>
					</div>
					<div class="form-group form-animate-text"
						style="margin-top: 40px !important;">
						<input type="text" class="form-text checkcheck" id="join_name" name="join_name" required> <span
							class="bar"></span> <label>이름</label>
							<p id="namecheck" style="display: none;"></p>
					</div>
	
					<div class="form-group form-animate-text"
						style="margin-top: 40px !important;">
						<select class="form-text checkcheck" id="join_rank" name="join_rank" required>
						<option selected="selected" id="basic">선택</option>
						<option id="1" value="1">사원</option>
						<option id="0" value="0">관리자</option>
						</select>
						
						 <label>회원등급</label>
						 <p id="rankcheck" style="display: none;"></p>
					</div>
					
				 <input type="button" class="btn col-md-12" id="joinbtn" value="회원가입"/>
				</div>
			</div>
		</form>

	</div>

	<!-- end: Content -->
	<!-- start: Javascript -->
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/jquery.ui.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
                 
	<script src="resources/js/plugins/moment.min.js"></script>
	<script src="resources/js/plugins/icheck.min.js"></script>

	<!-- custom -->
    <script src="resources/js/custom/login/join.js"></script>
	<script src="resources/js/main.js"></script>
	<script type="text/javascript">
		  $(function() {
	    		var title = $('.m_title').text();
	    		$('.panel-body').find('.fadeInLeft').text(title);
	    		$('#join_id').focus();

	    	});
	</script>
	<!-- end: Javascript -->
</body>
</html>