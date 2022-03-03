<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../green/assets/css/main.css" />
<title>My Info</title>
</head>
<style>
.modify {
	margin-left: 80px;
	font-size: 0.9em;
}
h4{
	text-align: left;
}
.delete_d{
	text-align: right;
}
.delete_a{
	font-size: 0.8em;	
}
</style>
<body>

	<!-- Header -->

	<%@include file="../../app/include/header_me.jsp"%>
	
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
				<script>alert("로그인 해주세요")</script>
			<% 
			}
		%>
	
	<!-- main -->

	<c:set var="member" value="${requestScope.member}" />


	<div id="main">

		<section id="five" class="wrapper special">
			<h4>내정보</h4>

			<span class="image"><label for="input-file2" class="image3"><img
					src="../green/images/profile.jpg" alt=""
					style="border-radius: 100%; width: 150px;"> </label><input
				id="input-file2" type="file" style="display: none; align: right;"></span>



			<table>				
				<tbody>
					<tr>
						<td>이름</td>
						<td>${member.getMember_name() }</td>
						<td></td>
					</tr>
					<tr>
						<td>아이디</td>
						<td>${member.getMember_id() }</td>
						<td></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td>${member.getMember_pw() }</td>
						<td><a href="#" class="modify" onClick="javascript:openWin();">수정</a></td>
					</tr>
					<tr>
						<td>이메일</td>
						<td>${member.getMember_email() }</td>
						<td><a href="#" class="modify" onClick="javascript:openWin_e();">수정</a></td>
					</tr>
					<tr>
						<td>연락처</td>
						<td>${member.getMember_phone() }</td>
						<td><a href="#" class="modify" onClick="javascript:openWin_p();">수정</a></td>
					</tr>
				</tbody>
			</table>
			<br>
			<div class="delete_d">
				<a href="${pageContext.request.contextPath}/member/memberDelete.me" class="delete_a" onClick="javascript:deleteMember();">회원탈퇴</a>
			</div>
		</section>
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
<script>
function openWin(){  
    window.open("${pageContext.request.contextPath}/app/member/memberModifyPw.jsp", "modifyPw", "width=500, height=500, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
}  

function openWin_e(){  
    window.open("${pageContext.request.contextPath}/app/member/memberModifyEmail.jsp", "modifyPw", "width=500, height=500, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
}  

function openWin_p(){  
    window.open("${pageContext.request.contextPath}/app/member/memberModifyPhone.jsp", "modifyPw", "width=500, height=500, toolbar=no, menubar=no, scrollbars=no, resizable=yes" );  
}  
function deleteMember(){
	alert("회원탈퇴가 완료되었습니다.");
}
</script>
</html>