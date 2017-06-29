
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

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
</head>
<div class="col-md-12" id="content-panel">
	<div class='panel' id='input-panel'>
		<div class="panel-body">
			<div class='col-md-12'>
				<span class="m_title" style="visibility: hidden;">회원관리</span>
				<div style="overflow-x: auto;">
					<table class='table table-striped table-bordered' style="text-align: center">
						<th style="text-align: center" width="30%">아이디(클릭하시면 수정가능)</th>
						<th style="text-align: center" width="30%">이름</th>
						<th style="text-align: center" width="30%">등급</th>


						<c:forEach items="${join_list }" var="joinlist">
							<tr>
								<td class="joinlistid" style="cursor: pointer; color: blue; text-decoration: underline;">${joinlist.mb_id}</td>
								<td>${joinlist.mb_name}</td>
								<c:choose>
									<c:when test="${joinlist.mb_rank == 0 }">
										<td>관리자</td>
									</c:when>
									<c:when test="${joinlist.mb_rank == 1 }">
										<td>사원</td>
									</c:when>

								</c:choose>
							</tr>


						</c:forEach>

					</table>
				</div>
				<div id="log">
				<input type="button" id="test_log" value="펴기" class="btn btn-default"/>
				<ul id="test_ul">
				<li>
				활동로그 : 안녕 
				</li>
				<li>
				활동로그 : 안녕 
				</li>
				<li>
				활동로그 : 안녕 
				</li>
				<li>
				활동로그 : 안녕 
				</li>
				</ul>
				</div>
			</div>
		</div>
	</div>
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