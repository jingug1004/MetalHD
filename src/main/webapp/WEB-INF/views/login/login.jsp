<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta name="description" content="Miminium Admin Template v.1">
  <meta name="author" content="Isna Nur Azis">
  <meta name="keyword" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>login</title>

  <!-- start: Css -->
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


  <!-- plugins -->
  <link rel="stylesheet" type="text/css" href="resources/css/plugins/font-awesome.min.css"/>
  <link rel="stylesheet" type="text/css" href="resources/css/plugins/simple-line-icons.css"/>
  <link rel="stylesheet" type="text/css" href="resources/css/plugins/animate.min.css"/>
  <link rel="stylesheet" type="text/css" href="resources/css/plugins/icheck/skins/flat/aero.css"/>
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

        <form class="form-signin" id="loginform">
          <div class="panel periodic-login">
              <div class="panel-body text-center">
                  <h1>HDMetal</h1>
                  <h3 class="m_title">로그인</h3>

                  <i class="icons icon-arrow-down"></i>
                  <div class="form-group form-animate-text" style="margin-top:40px !important;">
                    <input type="text" class="form-text" id="id" name="id" required>
                    <span class="bar"></span>
                    <label>아이디</label>
                  </div>
                  <div class="form-group form-animate-text" style="margin-top:40px !important;">
                    <input type="password" class="form-text" id="password" name="password" required>
                    <span class="bar"></span>
                    <label>비밀번호</label>
                  </div>
                  <input type="button" class="btn col-md-12" id="loginbtn" value="로그인"/>
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
      <script src="resources/js/custom/login/login.js"></script>
      <script src="resources/js/main.js"></script>
      <script type="text/javascript">
       
       $(function() {
    		var title = $('.m_title').text();
    		$('.panel-body').find('.fadeInLeft').text(title);
    		$('#id').focus();

    	});
     </script>
     <!-- end: Javascript -->
   </body>
   </html>