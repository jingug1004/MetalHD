<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE htm>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<title>HD METAL Web ERP</title>


<!-- Core CSS -->
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="resources/css/plugins/font-awesome.min.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/plugins/simple-line-icons.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/plugins/animate.min.css" />
<link href="resources/css/style.css" rel="stylesheet">
<link rel="shortcut icon" href="resources/img/logomi.png">

</head>
<body id="mimin" class="dashboard">
	<!-- 헤더 -->
	<nav class="navbar navbar-default header navbar-fixed-top">
		<div class="col-md-12 nav-wrapper">
			<div class="navbar-header" style="width: 100%;">
				<div class="opener-left-menu is-open">
					<span class="top"></span> <span class="middle"></span> <span
						class="bottom"></span>
				</div>
				<a href="./" class="navbar-brand"> <b>HD METAL</b>
				</a>
				<h3 class="icons icon-arrow-left lrArrow" id="lrleft" style="cursor: pointer;" ></h3>
				<h3 class="icons icon-arrow-right lrArrow" id="lrright" style="cursor: pointer;" ></h3>
				<ul class="nav navbar-nav navbar-right user-nav">
					<c:choose>
						<c:when test="${id.mb_id != null }">
							<li class="user-name"><span  style="cursor:default;" id="loginsucsess">${id.mb_name }
									님</span></li>
							<li><a> <span class="fa fa-power-off " id="logout"
									style="cursor: pointer;">로그아웃</span>

							</a></li>
						</c:when>
						<c:otherwise>
							<li class="user-name"><span id="loginPage"
								style="cursor: pointer; text-decoration: underline;">로그인</span>
							</li>
						</c:otherwise>
					</c:choose>

				</ul>
			</div>
		</div>
	</nav>
	<!-- 헤더 끝 -->
	<div class="container-fluid mimin-wrapper">

		<!-- 메뉴 -->
		<div id="left-menu">
			<div class="sub-left-menu scroll">
				<ul class="nav nav-list">
					<li>
						<div class="left-bg"></div>
					</li>
					<li class="time">
						<h1 class="animated fadeInLeft"></h1>
						<p class="animated fadeInLeft"></p>
					</li>
					<!-- 회원관리 관리자급만 보임 -->
					<c:if test="${id.mb_rank == 0 }">
						<li class="member_management"><a href="#"
							class="tree-toggle nav-header"> <span
								class="icons icon-people"></span> 회원 관리 <span
								class="fa-angle-right fa right-arrow text-right"></span>
						</a>
					</c:if>

					<!-- ERP 주요 부분 일반회원도 관리가능  -->
					<c:if test="${id.mb_rank == 0 || id.mb_rank == 1 }">
						<ul class="nav nav-list tree">

							<li><a href="#" id="joinpage"
								class="menuclass icons icon-user-follow">신규 등록</a></li>
							<li><a href="#" id="joinlist"
								class="menuclass icons icon-user-following">회원 수정,삭제</a></li>
						</ul>


						<li class="Mme"><a href="#" class="tree-toggle nav-header"> <span
								class="icons icon-basket-loaded"></span> 주문 관리 <span
								class="fa-angle-right fa right-arrow text-right"></span>
						</a>
							<ul class="nav nav-list tree">
								<li><a href="#" id="orderInsert" class="menuclass">신규</a></li>
								<li><a href="#" id="orderEdit" class="menuclass">수정 </a></li>
							</ul></li>

						<li class="Mme"><a class="tree-toggle nav-header menuclass"
							id="manufacture/insert" href="#"> <span class="fa fa-gears"></span>
								생산 관리 <span class="fa-angle-right fa right-arrow text-right"></span>
						</a></li>

						<li class="Mme"><a class="tree-toggle nav-header menuclass"
							id="manufacture/edit" href="#"> <span class="fa fa-money"></span>
								재고 관리 <span class="fa-angle-right fa right-arrow text-right"></span>
						</a></li>

						<c:if test="${id.mb_rank == 0 }">
							<li class="Mme"><a class="tree-toggle nav-header menuclass"
								id="manufacture/print" href="#"> <span class="fa fa-money"></span>
									D/B 관리 <span class="fa-angle-right fa right-arrow text-right"></span>
							</a></li>
						</c:if>
						
						<li class="Mme"><a href="#" class="tree-toggle nav-header"> <span
								class="icons icon-people"></span> 인사 관리 <span
								class="fa-angle-right fa right-arrow text-right"></span>
						</a>
							<ul class="nav nav-list tree">
								<li><a href="#" id="empRegist" class="menuclass">신규 등록</a></li>
								<li><a href="#" id="empList" class="menuclass">사원 관리 </a></li>
							</ul></li>
					</c:if>
				</ul>


			</div>
		</div>
	</div>
	<!-- 메뉴 끝 -->



	<div id="content">
		<div class="panel">
			<div class="panel-body">
				<div class="col-md-6 col-sm-12">
					<h3 class="animated fadeInLeft">합동메탈</h3>
					<h5 id="panelAni" class="animated fadeInRight">ERP Service</h5>
				</div>
				<div class="col-md-6 col-sm-12">

					<div class="col-md-6 col-sm-6">
						
					</div>
				</div>
			</div>
		</div>
		<!-- 컨텐츠  -->
		<div class="col-md-12" id="content-panel">

			<c:if test="${id.mb_rank == null }">
				<form class="form-signin" id="loginform">
					<div class="panel periodic-login">
						<div class="panel-body text-center">
							<h1>HDMetal</h1>

							<h3 class="m_title">로그인</h3>

							<i class="icons icon-arrow-down"></i>
							<div class="form-group form-animate-text"
								style="margin-top: 40px !important;">
								<input type="text" class="form-text" id="id" name="id" required>
								<span class="bar"></span> <label>아이디</label>
							</div>
							<div class="form-group form-animate-text"
								style="margin-top: 40px !important;">
								<input type="password" class="form-text" id="password"
									name="password" required> <span class="bar"></span> <label>비밀번호</label>
							</div>
							<input type="button" class="btn col-md-12" id="loginbtn"
								value="로그인" /> 
								
								
						</div>
					</div>
				</form>
			</c:if>

			<c:if test="${id.mb_rank == 0 || id.mb_rank == 1 }">

				<div class="badges-v1">

					<h1 class="m_title">HDMetal ERP</h1>
					<h4>안녕하세요 ${id.mb_name }님</h4>
					<h4>HDMetal ERP입니다.</h4>
					<br> <br> <br>
					<h1 style="text-align: center">WELCOME!!</h1>

				</div>
			</c:if>
		</div>
		<!-- 컨텐츠 끝 -->
	</div>

	<!-- 	</div> -->
	<!-- 	</div> -->
	<!-- 	</div> -->


	<!-- 	<script src="resources/js/jquery.min.js"></script> -->
	<script src="resources/js/jquery-2.2.3.js"></script>
	<script src="resources/js/jquery.ui.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/plugins/moment.min.js"></script>
	<script src="resources/js/plugins/jquery.nicescroll.js"></script>
	<script src="resources/js/main.js"></script>
	<script src="resources/js/custom/login/login.js"></script>
	<script src="resources/js/custom/index.js"></script>
	<script type="text/javascript">
		$(function() {
			var title = $('.m_title').text();
			$('.panel-body').find('.fadeInLeft').text(title);
			$('#id').focus();

		});
	</script>
</body>
</html>