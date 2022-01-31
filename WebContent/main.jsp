<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
	
	/* ---- */
	.categories{
				justify-content: center;
    			display: flex;
			}		
	.categories div{
			    border: 1px solid;
			    border-radius: 50%;
			    width: 100px;
			    height: 100px;
			    margin: 15px 58px;
			    text-align: center;
			}
	.categories h2{
				display: none;
			    line-height: 100px;
			    background: #00000047;
			    color: white;
			    border-radius: 50%;
			    font-size: 1.3em;
			}
	#recipeList{
				height:500px;
				display:none;
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
				
					

				<!-- Header -->
					<section class="banner" style="background-image : url(./green/images/banner2.jpg);">
						<div style="height:150px;">
						</div>					
						
						<div class="categories">
							<div id="category1" class="linktomouseover" 
								style="background-image: url(./green/images/전체아이콘들.jpg); background-size: 100px; background-position: 30% 5%; cursor:pointer;">
								<h2>전체</h2>
							</div>
							<div id="category2" class="linktomouseover" OnClick="location.href ='app/buyList.jsp'" style="background-image: url(./green/images/한식아이콘.png); background-position: 50% 5%; cursor:pointer;">
								<h2>한식</h2>
							</div>
							<div id="category3" class="linktomouseover" OnClick="location.href ='app/buyList.jsp'" style="background-image: url(./green/images/중식아이콘.png); background-position: 50% 45%; cursor:pointer;">
								<h2>중식</h2>
							</div>
							<div id="category4" class="linktomouseover" OnClick="location.href ='app/buyList.jsp'" style="background-image: url(./green/images/일식아이콘.png); background-position: 40% 60%; cursor:pointer;">
								<h2>일식</h2>
							</div>
						</div>
						<div class="categories">
							
							 <div id="category5" class="linktomouseover" OnClick="location.href ='app/buyList.jsp'" style="background-image: url(./green/images/양식아이콘.png); background-position: 75% 60%; cursor:pointer;">
								<h2>양식</h2>
							</div>
							
							
							<div id="category6" class="linktomouseover" OnClick="location.href ='app/buyList.jsp'" style="background-image: url(./green/images/다이어트아이콘.png); background-position: 45% 45%; cursor:pointer;">
								<h2>다이어트</h2>
							</div>
							<div id="category7" class="linktomouseover" OnClick="location.href ='app/buyList.jsp'" style="background-image: url(./green/images/퓨전아이콘.png); background-position: 35% 40%; cursor:pointer;">
								<h2>퓨전</h2>
							</div>
							<div id="category8" class="linktomouseover" OnClick="location.href ='app/buyList.jsp'" 
								style="background-image: url(./green/images/디저트아이콘.png); background-position: 50% 90%; cursor:pointer;">
								<h2>디저트</h2>
							</div>
						</div>
					</section>
					<section id="recipeList">
						<div class = "box alt">
					<div class="box alt">
					<div class="row gtr-uniform">
				
					</div>
				</div>
					</section>

				<!-- One -->
					<section id="one" class="wrapper spotlight">
						<div class="content">
							<div class="inner">
								<h2>Best Cooker</h2>
									<ul class="alt">
										<li><a style="border-bottom: none;" href="#">자취생을 위한 초간단 <strong>냉라면</strong></a></li>
										<li><a style="border-bottom: none;" href="#">CooKing의 추천 <strong>봉골레 파스타</strong></a></li>
										<li><a style="border-bottom: none;" href="#">집에서도 할 수 있다! <strong>짜장면</strong></a></li>
										<li><a style="border-bottom: none;" href="#">간식 또는 식사대용으로 좋은 <strong>토스트</strong></a></li>
										<li><a style="border-bottom: none;" href="#">이열치열 무더운 여름 든든한 <strong>삼계탕</strong>으로 몸보신!</a></li>
									</ul>
								<ul class="actions">
									<li><a href="#" class="button">전체 레시피 보러가기</a></li>
								</ul>
							</div>
						</div>
						<ul class="grid-icons">
							<li>
								<div class="inner" style="height: 250px;">
									<span class="icon solid fa-cog major" style="margin-top: 45px;"></span>
									<h3>좋아요 많이 받은 순</h3>
									<ul class="actions" style="display: table; margin-left:auto; margin-right:auto;">
									<li><a href="#" class="button small" style="margin-bottom: 25px;">레시피 보기</a></li>
									</ul>
								</div>
							</li>
							<li>
								<div class="inner" style="height: 250px;">
									<span class="icon solid fa-desktop major" style="margin-top: 45px;"></span>
									<h3>조회수 많은 순</h3>
									<ul class="actions" style="display: table; margin-left:auto; margin-right:auto;">
									<li><a href="#" class="button small" style="margin-bottom: 25px;">레시피 보기</a></li>
									</ul>
								</div>
							</li>
							<li>
								<div class="inner" style="height: 250px;">
									<span class="icon solid fa-signal major" style="margin-top: 45px;"></span>
									<h3>CooKING 추천 레시피</h3>
									<ul class="actions" style="display: table; margin-left:auto; margin-right:auto;">
									<li><a href="#" class="button small" style="margin-bottom: 25px;">레시피 보기</a></li>
									</ul>
								</div>
							</li>
							<li>
								<div class="inner" style="height: 250px;">
									<span class="icon solid fa-check major" style="margin-top: 45px;"></span>
									<h3>남녀노소 추천 레시피</h3>
									<ul class="actions" style="display: table; margin-left:auto; margin-right:auto;">
									<li><a href="#" class="button small" style="margin-bottom: 25px;">레시피 보기</a></li>
									</ul>
								</div>
							</li>
						</ul>
					</section>

				<!-- Two -->
					<section id="two" class="wrapper style1 spotlight alt">
						<div class="content">
							<div class="inner">
								<h2>이달의 Best Cooker 선정!</h2>
								<p>Best Cooker는 레시피 조회수와 좋아요에 따라 투표 권한을 부여받습니다.</p>
								<ul class="actions">
									<li><a href="#" class="button">투표하러가기</a></li>
									<li><a href="#" class="button">레시피 등록하기</a></li>
								</ul>
							</div>
						</div>
						<div class="image" style="background-image: url(&quot;./green/images/pic02.jpg&quot;); background-position: 30% 30%;">
							<img src="./green/images/요리왕.jpg" data-position="30% 30%" alt="" style="display: none;">
						</div>
					</section>

				<!-- Three -->
					<section id="three" class="wrapper style2 spotlight">
						<div class="content">
							<div class="inner">
								<h2>오늘의 추천</h2>
								<p>로제크림치킨 l 귀차니즘이 폭팔하는 오늘같은 날! 편의점 재료로 떼우쟈!</p>
								<ul class="actions">
									<li><a href="#" class="button">더보기</a></li>
								</ul>
							</div>
						</div>
						<div class="image">
							<img src="./green/images/로제크림치킨.jpg" data-position="center right" alt="" />
						</div>
					</section>

				<!-- Four -->
					<section id="four" class="wrapper style3 spotlight alt">
						<div class="content">
							<div class="inner">
								<h2>포인트 상점</h2>
								<p>[브랜드특가] 네오플램 피카 익스클루시브 15종 모음_신상품 추가(무료배송)</p>
								<ul class="actions">
									<li><a href="#" class="button">더보기</a></li>
								</ul>
							</div>
						</div>
						<div class="image">
							<img src="./green/images/식기구모음.jpg" data-position="top right" alt="" />
						</div>
					</section>

				<!-- Five -->
					<section id="five" class="wrapper special">
   <h1>Best Cooker Ranking</h1>
      <h3>지난 달 Best Cooker에 선정된 5인 입니다.</h3>
      <div style="margin:0 auto; padding: 0 auto;">
         <ul class="faces"">
         
            <li style="width:50px; align: center;">
               <span class="image"><img style="width:100px;" src="./green/images/profile.jpg" alt="" /></span>
                  <h3>1위 아이디</h3>
                  <a style="padding: 0 2em;" class="button small">팔로우 하기</a>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <p>"집에서 만든 저만의 김치찌개 입니다. 너무 맛있습니다."</p>
                  &nbsp;
                  <a style="text-decoration: none; border-bottom: none;" href="#">Learn More</a>
                  
            </li>
         
            <li style="width:50px; align: center; border-left-width: 0;">
               <span class="image"><img style="width:100px;" src="./green/images/profile.jpg" alt="" /></span>
                  <h3>2위 아이디</h3>
                  <a style="padding: 0 2em;" class="button small">팔로우 하기</a>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <p>"스테이크 레스토랑 처럼 흉내를 내봤습니다. 집에서도 분위기 있게 먹었습니다"</p>
                  &nbsp;                  
                  <a style="text-decoration: none; border-bottom: none;" href="#">Learn More</a>
            </li>
            <li style="width:50px; align: center; border-left-width: 0;">
               <span class="image"><img style="width:100px;" src="./green/images/profile.jpg" alt="" /></span>
                  <h3>3위 아이디</h3>
                  <a style="padding: 0 2em;" class="button small">팔로우 하기</a>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                  
                  <p>"저만의 퓨전요리를 만들어 보았습니다. 긴가민가  했지만 너무 맛있습니다."</p>
                  &nbsp;
                  <a style="text-decoration: none; border-bottom: none;" href="#">Learn More</a>
            </li>
            <li style="width:50px; align: center; border-left-width: 0;">
               <span class="image"><img style="width:100px;" src="./green/images/profile.jpg" alt="" /></span>
                  <h3>4위 아이디</h3>
                  <a style="padding: 0 2em;" class="button small">팔로우 하기</a>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <p>"제가 처음으로 시도해본 중화요리 입니다. 재료가 많이 들어가지만 굳이 시켜먹을 필요가 없더군요."</p>
                  &nbsp;                  
                  <a style="text-decoration: none; border-bottom: none;" href="#">Learn More</a>
            </li>
            <li style="width:50px; align: center; border-left-width: 0;">
               <span class="image"><img style="width:100px;" src="./green/images/profile.jpg" alt="" /></span>
                  <h3>5위 아이디</h3>
                  <a style="padding: 0 2em;" class="button small">팔로우 하기</a>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <p>"저렴한 회를 사용하여 맛있는 스시를 만들어 보았습니다."</p>
                  &nbsp;
                  <a style="text-decoration: none; border-bottom: none;" href="#">Learn More</a>
            </li>
         </ul>
         </div>
</section>
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
	<script src=https://code.jquery.com/jquery-3.6.0.min.js></script>
<script src="./recipeList.js"></script>
<script type ="text/javascript">
	var temp = ""
	$('.linktomouseover').hover(function(){
			temp = $('.banner').css('background-image');
			var $div = $(this);
			
			for(let i=1; i<9; i++){
				if($div.attr('id') == 'category'+i){
					$('.banner').css('background-image','url(./green/images/koreanfood'+i+'.jpg)');
					$div.children("h2").fadeIn(500);
					break;
				}
			}
			
			
	}, function(){
		var $div = $(this);
		$('.banner').css('background-image', temp);
		$div.children("h2").fadeOut(500);
	});
	
	$('.linktomouseover').click(function(){
		$('#recipeList').show();
	});
	
	  

</script>
</html>