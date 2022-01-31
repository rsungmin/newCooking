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
#main{
	background-color: #ffffff;
    border-radius: 0.5em;
    margin: 0 auto;
    width: 40em;
    max-width: calc(100% - 4em);
}
.form-group {
	background-color: #ffffff;
    margin-bottom: -1px;
}
.form-control {
    display: block;
    width: 100%;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 0;
   }
 

.main.help-block {
    color: #999;
    margin-bottom: 25px;
    font-size: 14px;
}
.help-block {
    display: block;
    margin-top: 5px;
    margin-bottom: 10px;
    color: #737373;
}
#header{		    
	background: #8bcac6;
    width: 100%;
    text-align: center;
    height: 85px;
    padding-top: 15px;
    overflow: hidden;
    position: absolute;
   /*  background: url(//recipe1.ezmember.co.kr/img/bg_wave.png) left bottom repeat-x; */
    
    }
#logo{
	position: absolute;
	width: 10%;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);    
}
.newlogo {
					/* border: 1px solid; */
					/* background-image: url(./green/images/logo_transparent.png); */ 
					border-radius: 30%; 
					width: 150px;
					height: 80px;
					cursor:pointer;
	
				}
				#header {
					padding: 0 1em;
				}
				#header > .newlogo {
				    display: inline-block;
				    margin: 0;
				    white-space: nowrap;
				    }
				 #header.alt > .newlogo {
					display: none;
				}
				#header ul {
					list-style: none;
					display: inline-block;
				}
			
	 #header2{		    
		background: #333333;
	    width: 100%;
	    text-align: center;
	    height: 85px;
	    padding-top: 0;
	    overflow: hidden;
	    position: fixed;
	    height: 100px;
    
    }
    
	body{
		padding-top: 0;	
	}
	


</style>

<body>
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
<!-- Header -->
		
				<div id="header"><a href="../index.html"><img src="../../green/images/logo_transparent.png" id="logo"></a></div>

		<!--<div id="header2">
			<div id="header" class="alt" style="padding-left: 55%;">
			<div style="display: inline-block; padding-left: 40px; padding-top: 0; margin: 0 auto;">
				<a style="text-decoration: none; border-bottom: none;" href="../main.jsp">
					<img src="../../green/images/logo_transparent.png" id="logo">
				</a>
			</div>
            <!-- <a class="logo" href="index.html">
            
               <img style="border: 3px" src="./green/images/logo_transparent.png" border="6px" height="80px" align="left" width="170px">            
            </a> 
            <nav id="nav">
               <ul style="margin: 0 auto; padding-top: 0;">
                  
                  <li class="opener" style="user-select: none; cursor: pointer; white-space: nowrap;">
                     <a href="#"><img src="../../green/images/myprofile.png"></a>
                     
                  <ul class="" style="user-select: none; display: none; position: absolute;">
                        <li class="opener" style="user-select: none; cursor: pointer; white-space: nowrap;">
                           	<a href="#" style="display: block;">MyActivity</a>
                           <ul class="dropotron" style="user-select: none; display: none; position: absolute;">
                              <li style="white-space: nowrap;"><a href="#" style="display: block;">마이 레시피</a></li>
                              <li style="white-space: nowrap;"><a href="#" style="display: block;">마이 좋아요</a></li>
                              <li style="white-space: nowrap;"><a href="#" style="display: block;">follow 레시피</a></li>
                           </ul>
                        </li>   
	                        <li style="white-space: nowrap;"><a href="#" style="display: block;">팔로우</a></li>
	                        <li style="white-space: nowrap;"><a href="#" style="display: block;">팔로잉</a></li>
	                        <li style="white-space: nowrap;"><a href="#" style="display: block;">구매내역</a></li>
	                        <li style="white-space: nowrap;"><a href="#" style="display: block;">채팅</a></li>
	                        <li style="white-space: nowrap;"><a href="#" style="display: block;">회원 정보 수정</a></li>
	                        <li style="white-space: nowrap;"><a href="#" style="display: block;">문의</a></li>
                        	<li style="white-space: nowrap;"><a href="../index.html" style="display: block;">로그아웃</a></li>
                  </ul>
                  </li>
	                  	<li class="search__container" style="white-space: nowrap;">
	                   		<input class="search__input" style="width:280px; padding-top: 25px; margin:0 auto;" type="text" placeholder="Search">      
	                  	</li>
	                  		<li class="button" style="white-space: nowrap;">
	                  			<a href="#"><img style="padding-top: 7px;" src="../../green/images/searchBtnSmall.png"></a>
	                  		</li>
               </ul>
            </nav>
         </div>
		</div>
<!-- Main -->
<div style="height: 150px;"></div>
<div id="main">
	<h1 style="text-align:center;"><strong>로그인</strong></h1>
	
	<form action="${pageContext.request.contextPath}/member/MemberLoginOk.me" method="post" name="loginform">
	<div class="form-group">
        <span style="display: inline-block; width: 500px; float:center;">
        	<input value="<%=joinid%>" "type="text" name="member_id" class="form-control" id="member_id" placeholder="아이디"><br>
        </span>
     </div>
     <div class="form-group">
        <span style="display:inline-block; width: 500px; float:center;">
       	 	<input type="password" name="member_pw" class="form-control" id="member_pw" placeholder="비밀번호">
        </span>
      </div>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <a href="../../main.jsp" class="button primary fit">로그인</a>
      </form>
      &nbsp;&nbsp;&nbsp;
      <p class="help-block">개인정보 보호를 위해 개인 PC에서만 사용하세요.</p>
 		<ul class="actions small" style="padding-left:70px;">
			<li><a href="joinview.jsp" class="button primary small">회원가입</a></li>
		    <li><a href="findid.jsp" class="button primary small">아이디 찾기</a></li>
		    <li><a href="findpw.jsp" class="button primary small">비밀번호 찾기</a></li>
		</ul>
</div>
<!-- Footer -->
<div id="footer">
	
	<ul class="major-icons">
		<li>
			<h3 class="icon solid fa-phone major"><span class="label">Phone</span></h3>
			<p>(010) 123-4567</p>
		</li>
		
		<li>
			<h3 class="icon solid fa-map major"><span class="label">Address</span></h3>
			<p>1234 Fictional Road<br />
				Nashville, TN 00000</p>
		</li>
					
		<li>
			<h3 class="icon solid fa-envelope major"><span class="label">Email</span></h3>
			<p><a href="#">suk950904@gmail.com</a></p>
		</li>
	</ul>
				
	<ul class="joined-icons" >
		<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
		<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
		<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
	</ul>
	<span style="color:blue;">Copyright @석진욱</span>
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