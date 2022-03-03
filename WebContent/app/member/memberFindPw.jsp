<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../green/assets/css/main.css" />
<title>FindPw</title>
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

	<div id="main">
		<h2 style="text-align: center;">
			<img src="../../green/images/logomain.png" id="logo">
		</h2>
		<div class="wrap">
			<form action="${pageContext.request.contextPath}/member/memberFindPw.me" method="post" name="loginform">
				<div class="wrap_input">
					<input type="text" name="member_id" class="form-control" id="member_id" placeholder="아이디를 입력해주세요."> 
					<input type="text" name="member_phone" class="form-control" id="member_phone" placeholder="연락처를 입력해주세요.">
				</div>
				<br><input type="submit" value="비밀번호 찾기" id="submit">
			</form>
		</div>
		<ul>
			<li><a href="memberJoin.jsp" class="button primary small">회원가입</a></li>
			<li><a href="memberLogin.jsp" class="button primary small">로그인</a></li>
			<li><a href="memberFindId.jsp" class="button primary small">아이디 찾기</a></li>
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