
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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

		<form class="form-signin" id="change_form">
			<div class="panel periodic-login">
				<div class="panel-body text-center">
					<h1>HDMetal</h1>
					<h3 class="m_title">수정 및 삭제</h3>

					<i class="icons icon-arrow-down"></i>
					<div class="form-group form-animate-text"
						style="margin-top: 40px !important;">
						<input type="text" class="form-text edit_checkcheck" id="join_id" name="mb_id" value="${joinedit.mb_id}" readonly="readonly">
<!-- 						 <span -->
<!-- 							class="bar"></span> <label id="this_id" ></label> -->
							<p id="idcheck" style="display: none;">아이디 중복여부</p>
					</div>
					<div class="form-group form-animate-text"
						style="margin-top: 40px !important;">
						<input type="password" class="form-text edit_checkcheck" id="join_pass" name="mb_pass" required> <span
							class="bar"></span> <label>변경 비밀번호</label>
							<p id="passcheck" style="display: none;"></p>
					</div>
					<div class="form-group form-animate-text"
						style="margin-top: 40px !important;">
						<input type="text" class="form-text edit_checkcheck" id="join_name" name="mb_name" value="${joinedit.mb_name }" required> <span
							class="bar"></span> <label>이름</label>
							<p id="namecheck" style="display: none;"></p>
					</div>
	
					<div class="form-group form-animate-text"
						style="margin-top: 40px !important;">
						<select class="form-text edit_checkcheck" id="join_rank" name="mb_rank" value="${joinedit.mb_rank }" required>
						<c:choose>
						<c:when test="${joinedit.mb_rank == 0 }">
						<option value="1">사원</option>
						<option value="0" selected="selected">관리자</option>
						</c:when>
						<c:when test="${joinedit.mb_rank == 1 }">
						<option value="1" selected="selected">사원</option>
						<option value="0">관리자</option>
						</c:when>
						</c:choose>
						</select>
						 <label>회원등급</label>
						 <p id="rankcheck" style="display: none;"></p>
					</div>
					
				 <input type="button" class="btn col-md-12 upsert" id="changebtn" value="정보변경"/>
				 <input type="button" class="btn col-md-12 upsert" id="deletebtn" value="회원삭제"/>
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

	    	});
	</script>
	<!-- end: Javascript -->
</body>
</html>