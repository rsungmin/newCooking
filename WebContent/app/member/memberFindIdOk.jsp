<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../green/assets/css/main.css" />
<title>FindId OK</title>
</head>
<style>
.wrap {
	text-align: center;
}

.wrap_input {
	margin-left: 30%;
	width: 40%;
}

#logo {
	width: 100px;
	height: 100px;
}

ul {
	text-align: center;
}

li {
	display: inline-block;
}
#submit{
	padding-right: 25px;
    padding-left: 25px;
    font-size: 0.9em;
}
}
</style>
<body>
	<!-- Header -->
	<%@include file="../../app/include/header_me.jsp"%>

	<c:set var="member" value="${requestScope.member}"/>
	<div id="main">

		<h2 style="text-align: center;">
			<img src="../green/images/logomain.png" id="logo">
		</h2>
		<div class="wrap">			
				<div class="wrap_input">
				<p>${member.getMember_name() }님의 아이디는 <strong> ${member.getMember_id() } </strong>입니다.</p>					 					
				</div>			
		</div>
		<ul>
			<li><a href="../app/member/memberJoin.jsp" class="button primary small">회원가입</a></li>
			<li><a href="../app/member/memberLogin.jsp" class="button primary small">로그인</a></li>
			<li><a href="../app/member/memberFindPw.jsp" class="button primary small">비밀번호 찾기</a></li>
		</ul>
	</div>





	<!-- Footer -->

	<%@include file="../../app/include/footer.jsp"%>

	<!-- Scripts -->
	<script src="../green/assets/js/jquery.min.js"></script>
	<script src="../green/assets/js/jquery.dropotron.min.js"></script>
	<script src="../green/assets/js/jquery.scrollex.min.js"></script>
	<script src="../green/assets/js/browser.min.js"></script>
	<script src="../green/assets/js/breakpoints.min.js"></script>
	<script src="../green/assets/js/util.js"></script>
	<script src="../green/assets/js/main.js"></script>
</body>
</html>