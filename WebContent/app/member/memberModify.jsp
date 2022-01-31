<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../../green/assets/css/main.css" />
<title>Insert title here</title>
</head>
<style>
      .cateA li a{
      padding: 2px 15px 6px;
       line-height: 1;
       color: #666;
          background: #eee;
          border-radius: 14px;
          font-size: 13px;
          text-decoration: none;
          box-sizing: border-box;
   }      
   .cateA li{
         display: inline-block;
      }
	/* .newlogo {
					/* border: 1px solid; */
					/* background-image: url(./green/images/logo_transparent.png); 
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
				}*/
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
			
	/* #header2{		    
		background: #333333;
	    width: 100%;
	    text-align: center;
	    height: 85px;
	    padding-top: 0;
	    overflow: hidden;
	    position: fixed;
	    height: 100px;
    
    }*/
    
	#logo{
	position: absolute;
	width: 10%;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);    
}
	body{
		padding-top: 0;	
	}
	
</style>
<body>

<!-- Header -->

		
				<div id="header"><a href="../index.html"><img src="../../green/images/logo_transparent.png" id="logo"></a></div>
		<!--<div id="header2">
			<div id="header" class="alt" style="padding-left: 55%;">
			<div style="display: inline-block; padding-left: 40px; padding-top: 0; margin: 0 auto;">
				<a style="text-decoration: none; border-bottom: none;" href="../main.jsp">
					<img src="../green/images/logo_transparent.png" id="logo">
				</a>
			</div>
            <!-- <a class="logo" href="index.html">
            
               <img style="border: 3px" src="./green/images/logo_transparent.png" border="6px" height="80px" align="left" width="170px">            
            </a> 
            <nav id="nav">
               <ul style="margin: 0 auto; padding-top: 0;">
                  
                  <li class="opener" style="user-select: none; cursor: pointer; white-space: nowrap;">
                     <a href="#"><img src="../green/images/myprofile.png"></a>
                     
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
	                  			<a href="#"><img style="padding-top: 7px;" src="../green/images/searchBtnSmall.png"></a>
	                  		</li>
               </ul>
            </nav>
         </div>
		</div>

<!-- main -->
<div style="height: 150px;"></div>
<div class="cateA" style="padding: 0 24px; margin-bottom: -10px; position: relative;">
                        <ul style="display: inline-block;
         margin-top : 0;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
    box-sizing: border-box; margin-top: 0; margin-bottom: 30px; margin-left:160px; padding: 16px 4px 0; overflow:hidden;">
                           
                           <li><a href="myRecipe.jsp">나의 레시피</a></li>
                           <li><a href="followRecipe.jsp">팔로우 레시피</a></li>
                           <li><a href="likedRecipe.jsp">좋아요 레시피</a></li>
                           <li><a href="buyList.jsp">구매목록</a></li>
                           <li><a href="pointManage.jsp">포인트 관리</a></li>
                           <li><a href="modifyInfo.jsp">회원정보 수정</a></li>
                           <li><a href="question.jsp">문의하기</a></li>
                        </ul>
          </div>
<div id="main">
		   	
<section id="five" class="wrapper special">
<h2>회원 정보 수정</h2>

<span class="image"><label for="input-file2" class="image3"><img src="../green/images/profile.jpg" alt="" style="border-radius:100%; width:150px;">
</label><input id="input-file2" type="file" style="display:none; alifn:right;"></span>

<p style="margin:15px; line-height:34px;">
<strong>suk950904@gmail.com&nbsp;</strong>
<a href="#" class="button primary small" style="margin-left:80px">이메일 수정</a>
</p>
<div class="col-6 col-12-xsmall" style="width:50%; margin-left:200px;">
	<input type="text" name="demo-email" id="demo-email" value="" placeholder="이메일을 입력해 주세요">
</div>

<p style="margin:20px; line-height:25px; font-size:15px; margin-right:200px;">변경 신청하시면 확인메일이 새로운 메일주소로 발송됩니다.
<br>메일이 도착하지 않는다면 스팸편지함도 확인해 주세요.</p>

<div class="col-6 col-12-small" style="margin-right:250px;">
	<input type="checkbox" id="demo-copy" name="demo-copy">
	<label for="demo-copy">이벤트, 쇼핑 프로모션 메일 수신 동의</label>
</div>

<p style="margin:15px; line-height:34px;">
<strong>suk950904&nbsp;</strong>
<a href="#" class="button primary small" style="margin-left:150px">아이디 수정</a>
</p>
<div class="col-6 col-12-xsmall" style="width:50%; margin-left:200px;">
	<input type="text" name="demo-id" id="demo-id" value="" placeholder="아이디를 입력해 주세요">
</div>

<p style="margin:15px; line-height:34px;">
<strong>suk950904&nbsp;</strong>
<a href="#" class="button primary small" style="margin-left:150px">비밀번호 수정</a>
</p>
<div class="col-6 col-12-xsmall" style="width:50%; margin-left:200px;">
	<input type="password" name="demo-pw" id="demo-pw" value="" placeholder="현재 비밀번호">
	<input type="password" name="demo-pw" id="demo-pw" value="" placeholder="새로운 비밀번호">
	<input type="password" name="demo-pw" id="demo-pw" value="" placeholder="새로운 비밀번호 확인">
</div>

<a href="#" class="button primary" style="margin-top:50px;">회원 탈퇴하기</a>
</section>
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
</html>