<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../../green/assets/css/main.css"/>
<title>Insert title here</title>
</head>
<style>
	.wrap{
		text-align: center;
	}
	.wrap_input{
		margin-left:30%;
		width: 40%;
	}
	#logo{
		width: 100px;
		height: 100px;
	}
	ul{
		text-align: center;
	}
	li{
		display: inline-block;
	}
</style>

<body class="is-preload">

<%@include file="../../app/include/header_me.jsp" %>

		<%
			String check = request.getHeader("Cookie");
			String joinid = "";
			if(check!=null){
				Cookie[] cookies = request.getCookies();
				for(Cookie c : cookies){
					if(c.getName().equals("joinid")){
						joinid = c.getValue();
					}
				}
			}
			String result = request.getParameter("result");
			if(result != null && result.equals("false")){
			%>
				<script>alert("로그인 실패!")</script>
			<% 
			}
		%>
	
	<!-- Main -->
	
		<div id="main">
			<h2 style="text-align:center;"><img src="../../green/images/logomain.png" id="logo"></h2>
			<div class="wrap">
				<form action="${pageContext.request.contextPath}/member/memberLoginOk.me" method="post" name="loginform">	       
					<div class="wrap_input">
						<input value="<%=joinid%>" type="text" name="member_id" class="form-control" id="member_id" placeholder="아이디"><br>
				    	<input type="password" name="member_pw" class="form-control" id="member_pw" placeholder="비밀번호">			       
				    </div>
				    <br>	
				    <input type="submit" value="로그인">
				</form>
		    </div>
		 	<ul>
				<li><a href="memberJoin.jsp" class="button primary small">회원가입</a></li>
				<li><a href="memberFindId.jsp" class="button primary small">아이디 찾기</a></li>
				<li><a href="memberFindPw.jsp" class="button primary small">비밀번호 찾기</a></li>
			</ul>
		</div>
		
	<!-- Footer -->
	
		<%@include file="../../app/include/footer.jsp" %>
	
	<!-- Scripts -->
	         <script src="../green/assets/js/jquery.min.js"></script>
	         <script src="../green/assets/js/jquery.dropotron.min.js"></script>
	         <script src="../green/assets/js/jquery.scrollex.min.js"></script>
	         <script src="../green/assets/js/browser.min.js"></script>
	         <script src="../green/assets/js/breakpoints.min.js"></script>
	         <script src="../green/assets/js/util.js"></script>
	         <script src="../green/assets/js/main.js"></script>
</body>
<script>
	function sendit(){
		const loginform = document.loginform;
		const member_id = document.loginform.member_id;
		const member_pw = document.loginform.member_pw;
		
		if(member_id.value=='' || member_id.value==null){
			alert("아이디를 입력하세요.");
			member_id.focus();
			return false;
		}
		if(member_pw.value=='' || member_pw.value==null){
			alert("비밀번호를 입력하세요.");
			member_pw.focus();
			return false;
		}
		loginform.submit();
	}
</script>
</html>