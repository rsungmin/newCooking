<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../../green/assets/css/main.css" />
<title>ModifyEmail</title>
<style>
	#form{
	text-align: center;
	}
	#member_email{
		text-align: center;
		width:300px;
		margin: 0 auto;
		margin-top:50px;
	}
	#submit{
		text-align: center;
		margin-top: 20px;
	}
</style>
</head>
<body>
<c:set var="member" value="${requestScope.member}" />

<div id="form">
	<form action="${pageContext.request.contextPath}/member/memberModifyEmail.me" method="get" name="">
		<input type="hidden" name="member_id" value="${member.getMember_id()} }">
		<div id="member_email">
			<input type="text" name="member_email">
		</div>
		<div id="submit">
			<input type="submit" value="변경"> 
		</div>
	</form>
</div>

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