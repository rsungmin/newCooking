<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Elemental by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>Untitled</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="./green/assets/css/main.css" />
<style>
	.cook{
		text-decoration: none;
		border-bottom: none;
		display: inline-block;
	}
	.cook img{
		width: 80px;
		height: 65px;
	}
	#header{
		padding: 0 1em 0 1em;
		height: 4.5em;
		border-bottom: 3px solid green;
	}
	#header > nav{
		margin: auto;
		float: left;
		letter-spacing: 0.002em !important;
	}
	#header > nav > ul > li.cookSearch{
		padding-top: 7px;
	}
	#header > .navi{
		text-align: center;
	}
	body{
		background: none;
	}
	.cookSearch{
		position: absolute;
		float: right;
		padding-left: 40px;
		width: 440px;
	}
	.cookSearch > a{
		text-decoration: none;
		border-bottom: none;
		padding-left: 10px;
	}
	.cookSearch > a > img{
		padding-top: 3%;
	}
	.searchInput{
		width: 280px !important;  
		float: left;
		padding: 0 auto;
		margin: 0 auto;
	}
	.cookFooter{
		height: 300px;
	}
	.cookSearch > a > img{
		padding-top: 6px;
		padding-left: 15px;
		float: left;
	}
</style>
	</head>
	<body class="is-preload">

		<!-- Header -->
			<div id="header">
				<a class="cook" href="index.html"><img src="./green/images/logomain.png"></a>
				<nav id="nav" class="navi">
					<ul>
						<li><a href="index.html">Home</a></li>
						<li>
							<a href="#">My Page</a>
							<ul>
								<li><a href="#">My Recipe</a></li>
								<li><a href="#">My Liked Recipe</a></li>
								<li><a href="#">Follow Recipe</a></li>
								<li>
									<a href="#">My Menu</a>
									<ul>
										<li><a href="#">구매내역</a></li>
										<li><a href="#">포인트 관리</a></li>
										<li><a href="#">회원정보 수정</a></li>
										<li><a href="#">문의</a></li>
									</ul>
								</li>
							</ul>
						</li>
						<li><a href="#">레시피 등록</a></li>
						<li><a href="#">포인트 상점</a></li>
						<li><a href="#">로그아웃</a></li>
						<li class="cookSearch">
	                   		<input class="searchInput" type="text" placeholder="Search">      
                  			<a href="#"><img src="./green/images/searchBtnSmall.png"></a>
	                  	</li>
					</ul>
					
	                  	
				</nav>
			</div>

		<!-- Main -->
			<div id="main">
				
				<div style="height: 800px;">TODO</div>
			
			</div>

		<!-- Footer -->
			<div id="footer" class="cookFooter">
			   <a href="#" class="button primary">이용약관</a>
			   <a href="#" class="button primary">개인정보 취급 방침</a>
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
			         <p><a href="#">cooKing@cooKing.com</a></p>
			      </li>
			   </ul>
			            
			   <ul class="joined-icons">
			      <li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
			      <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
			      <li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
			   </ul>
  		 <span style="color:blue;">Copyright @CooKing</span>
</div>

		<!-- Scripts -->
			<script src="./green/assets/js/jquery.min.js"></script>
			<script src="./green/assets/js/jquery.dropotron.min.js"></script>
			<script src="./green/assets/js/jquery.scrollex.min.js"></script>
			<script src="./green/assets/js/browser.min.js"></script>
			<script src="./green/assets/js/breakpoints.min.js"></script>
			<script src="./green/assets/js/util.js"></script>
			<script src="./green/assets/js/main.js"></script>

	</body>
</html>