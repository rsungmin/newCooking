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
		<link rel="stylesheet" href="../../green/assets/css/main.css" />
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
				<a class="cook" href="index.html"><img src="../../green/images/logomain.png"></a>
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
                  			<a href="#"><img src="../../green/images/searchBtnSmall.png"></a>
	                  	</li>
					</ul>
					
	                  	
				</nav>
			</div>

		<!-- Main -->
			<div id="main">
				<h2>Food 리스트</h2>
				<h3 style="padding-top:20px;">전체</h3>
					<c:set var="recipe" value="${requestScope.recipe}" />
					<c:set var="replyList" value="${requestScope.replyList}" />
					<c:set var="reply" value="${requestScope.reply}"/>
					<c:set var="list" value="${requestScope.recipeList}"/>
					<c:set var="nowPage" value="${requestScope.nowPage}"/>
					<c:set var="startPage" value="${requestScope.startPage }"/>
					<c:set var="endPage" value="${requestScope.endPage }"/>
					<c:set var="totalCnt" value="${requestScope.totalCnt }"/>
					<c:set var="totalPage" value="${requestScope.totalPage }"/>
	
				<!-- 게시판 리스트 -->
				
				<div class = "box alt">
					<div class="box alt">
					<div class="row gtr-uniform">
					
						<c:choose>
							<c:when test="${list!=null and fn:length(list)>0 }">
								<c:forEach var="recipe" items="${list}">
									<div class="col-4" OnClick="location.href ='${pageContext.request.contextPath}/recipe/recipeView.rc?rc_num=${recipe.getRc_num()}'" style = "cursor: pointer;" >
									<span class="image fit">
									<img class="img" src="../../green/images/${recipe.getRc_file_title()}.jpg" alt="">
									( ${recipe.getRc_cate() })<strong> ${recipe.getRc_title() } </strong>
									<div class="btn-like">
									<i class="fas fa-heart">(201)</i>
									</div>
									조회수(${recipe.getRc_viewcnt() })
									</span>
									</div>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr height="50px" align="center">
									<td colspan="5">등록된 게시물이 없습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose>
					</div>
					</div>
				</div>
				<br>
				<table border="0" cellpadding="0" cellspacing="0" width="900px">
					<tr align="center" valign="middle">
						<td>
							<c:choose>
								<c:when test="${nowPage>1}">
									<a href="${pageContext.request.contextPath}/recipe/recipeList.rc?page=${nowPage-1}">[이전]</a>					
								</c:when>
							</c:choose>
							<c:forEach var="i" begin="${startPage}" end="${endPage}">
								<c:choose>
									<c:when test="${i == nowPage }">
										[${i}]
									</c:when>
									<c:otherwise>
										<a href="${pageContext.request.contextPath}/recipe/recipeList.rc?page=${i}">[${i}]</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:if test="${nowPage<totalPage }">
								<a href="${pageContext.request.contextPath}/recipe/recipeList.rc?page=${nowPage+1}">[다음]</a>
							</c:if>
						</td>
					</tr>
				</table>
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
			<script src="../../green/assets/js/jquery.min.js"></script>
			<script src="../../green/assets/js/jquery.dropotron.min.js"></script>
			<script src="../../green/assets/js/jquery.scrollex.min.js"></script>
			<script src="../../green/assets/js/browser.min.js"></script>
			<script src=".././green/assets/js/breakpoints.min.js"></script>
			<script src="../../green/assets/js/util.js"></script>
			<script src="../../green/assets/js/main.js"></script>

	</body>
</html>