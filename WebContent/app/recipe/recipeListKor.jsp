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
		<link rel="stylesheet" href="../green/assets/css/main.css" />
	</head>
	<body class="is-preload">

		<!-- Header -->

			<%@include file="../../app/include/header_r.jsp" %>

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
									<img class="img" src="../app/upload/${recipe.getRc_file_title()}" alt="">
									( ${recipe.getRc_cate() })<strong> ${recipe.getRc_title() } </strong>
									<div class="btn-like">
									<i class="fas fa-heart">${recipe.getRc_like() }</i>
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
									<a href="${pageContext.request.contextPath}/recipe/recipeListKor.rc?page=${nowPage-1}">[이전]</a>					
								</c:when>
							</c:choose>
							<c:forEach var="i" begin="${startPage}" end="${endPage}">
								<c:choose>
									<c:when test="${i == nowPage }">
										[${i}]
									</c:when>
									<c:otherwise>
										<a href="${pageContext.request.contextPath}/recipe/recipeListKor.rc?page=${i}">[${i}]</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<c:if test="${nowPage<totalPage }">
								<a href="${pageContext.request.contextPath}/recipe/recipeListKor.rc?page=${nowPage+1}">[다음]</a>
							</c:if>
						</td>
					</tr>
				</table>
				</div>

		<!-- Footer -->
			
			<%@include file="../../app/include/footer.jsp" %>
			
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