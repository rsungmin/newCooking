<%@page import="java.util.List"%>
<%@page import="com.koreait.app.recipe.dao.RecipeBean"%>
<%@page import="com.koreait.app.recipe.dao.RecipeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="./green/assets/css/main.css" />
<style>
.categories {
	justify-content: center;
	display: flex;
}

.categories div {
	border: 1px solid;
	border-radius: 50%;
	width: 100px;
	height: 100px;
	margin: 15px 58px;
	text-align: center;
}

.categories h2 {
	display: none;
	line-height: 100px;
	background: #00000047;
	color: white;
	border-radius: 50%;
	font-size: 1.3em;
}

.col-4 {
	cursor: pointer;
}
</style>
</head>
<body class="is-preload">

	<%@include file="../app/include/header_m.jsp"%>
	<!-- Main -->
	<div id="main">
		<c:set var="page" value="${requestScope.page}" />


		<!-- Header -->
		<section class="banner"
			style="background-image: url(./green/images/banner2.jpg);">
			<div style="height: 150px;"></div>

			<div class="categories">
				<div id="category1" class="linktomouseover"
					OnClick="location.href ='${pageContext.request.contextPath}/recipe/recipeList.rc'"
					style="background-image: url(./green/images/전체아이콘들.jpg); background-size: 100px; background-position: 30% 5%; cursor: pointer;">
					<h2>전체</h2>
				</div>
				<div id="category2" class="linktomouseover"
					OnClick="location.href ='${pageContext.request.contextPath}/recipe/recipeListKor.rc'"
					style="background-image: url(./green/images/한식아이콘.png); background-position: 50% 5%; cursor: pointer;">
					<h2>한식</h2>
				</div>
				<div id="category3" class="linktomouseover"
					OnClick="location.href ='app/buyList.jsp'"
					style="background-image: url(./green/images/중식아이콘.png); background-position: 50% 45%; cursor: pointer;">
					<h2>중식</h2>
				</div>
				<div id="category4" class="linktomouseover"
					OnClick="location.href ='app/buyList.jsp'"
					style="background-image: url(./green/images/일식아이콘.png); background-position: 40% 60%; cursor: pointer;">
					<h2>일식</h2>
				</div>
			</div>
			<div class="categories">

				<div id="category5" class="linktomouseover"
					OnClick="location.href ='app/buyList.jsp'"
					style="background-image: url(./green/images/양식아이콘.png); background-position: 75% 60%; cursor: pointer;">
					<h2>양식</h2>
				</div>


				<div id="category6" class="linktomouseover"
					OnClick="location.href ='app/buyList.jsp'"
					style="background-image: url(./green/images/다이어트아이콘.png); background-position: 45% 45%; cursor: pointer;">
					<h2>다이어트</h2>
				</div>
				<div id="category7" class="linktomouseover"
					OnClick="location.href ='app/buyList.jsp'"
					style="background-image: url(./green/images/퓨전아이콘.png); background-position: 35% 40%; cursor: pointer;">
					<h2>퓨전</h2>
				</div>
				<div id="category8" class="linktomouseover"
					OnClick="location.href ='app/buyList.jsp'"
					style="background-image: url(./green/images/디저트아이콘.png); background-position: 50% 90%; cursor: pointer;">
					<h2>디저트</h2>
				</div>
			</div>
		</section>


		<!-- One -->
		<%
						RecipeDAO rdao = new RecipeDAO();
						RecipeBean recipe = new RecipeBean();
						
						List<RecipeBean> recipeList = rdao.getRecipeListMain();
						request.setAttribute("recipe", recipe);
						request.setAttribute("recipeList", recipeList);
				%>
		<c:set var="recipe" value="${requestScope.recipe}" />
		<c:set var="list" value="${requestScope.recipeList}" />
		<br>
		<h2>Best Cooker</h2>
		<div class="box alt">
			<div class="box alt">
				<div class="row gtr-uniform">
					<c:choose>
						<c:when test="${list!=null and fn:length(list)>0 }">
							<c:forEach var="recipe" items="${list}">
								<div class="col-4"
									OnClick="location.href ='${pageContext.request.contextPath}/recipe/recipeView.rc?rc_num=${recipe.getRc_num()}'">
									<span class="image fit"> <img class="img"
										src="app/upload/${recipe.getRc_file_title()}"> <strong>
											${recipe.getRc_title() } </strong>
										<div class="btn-like">
											<i class="fas fa-heart">${recipe.getRc_like() }</i>
										</div> 조회수(${recipe.getRc_viewcnt() })
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
					<%--  <ul class="actions">
									<li><a href="${pageContext.request.contextPath}/recipe/recipeList.rc" class="button small">전체 레시피 보러가기</a></li>
								</ul> --%>

				</div>
			</div>
		</div>


		<!-- Two -->
		<section id="two" class="wrapper style1 spotlight alt">
			<div class="content">
				<div class="inner">
					<h2>이달의 Best Cooker 선정!</h2>
					<p>이달의 Best Cooker를 뽑아주세요!</p>
					<ul class="actions">
						<li><a
							href="${pageContext.request.contextPath}/recipe/recipeList.rc"
							class="button small">레시피 보러가기</a></li>
						<li><a href="app/recipe/recipeRegister.jsp"
							class="button small">레시피 등록하기</a></li>
					</ul>
				</div>
			</div>
			<div class="image">
				<img src="./green/images/요리왕.jpg">
			</div>
		</section>

		<!-- Three -->
		<section id="three" class="wrapper style2 spotlight">
			<div class="content">
				<div class="inner">
					<h2>오늘의 추천</h2>
					<p>
						로제크림치킨 l 귀차니즘이 폭팔하는 오늘같은 날!<br>편의점 재료로 떼우쟈!
					</p>
					<ul class="actions">
						<li><a href="${pageContext.request.contextPath}/recipe/recipeList.rc" class="button small">더보기</a></li>
					</ul>
				</div>
			</div>
			<div class="image">
				<img src="./green/images/로제크림치킨.jpg" data-position="center right" alt="" />
			</div>
		</section>


		<%@include file="../app/include/footer.jsp"%>
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
<script type="text/javascript">
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
	
	
		

	/* function recList() {
			
		$.ajax({
			url: "${pageContext.request.contextPath}/recipe/recipeListMain.rc",
	        type: "GET",
	       
	        /* data:{
	        	
	        		recipe:'${requestScope.recipe}',
	        		recipeList:'${requestScope.recipeList}'
	       } 
	        	, */
	        
	  /*     success: function (recipe, recipeList,num0) {
	        	//<c:set var="recipe" value="${requestScope.recipe}" />
				//<c:set var="recipeList" value="${requestScope.recipeList}"/>
				
				//<c:set var="rc_num" value="${recipe.getRc_num()}"/>
				//var recipe='${recipe}';
				//var recipeList='${list}';
;				//var recipe='<c:out value="${recipe}"/>';
				//var recipeList='<c:out value="${recipeList}"/>';

				console.log("recipe2 : "+recipe);
				console.log("recipeList2 : "+recipeList);
				//console.log("num0 : "+JSON.stringify(num0));
				console.log("num0 : "+num0);
				/* var rc_num = document.getElementById("rc_num").value;
				var rc_file_title = document.getElementById("rc_file_title").value;
				var rc_title = document.getElementById("rc_title").value;
				var rc_like = document.getElementById("rc_like").value;
				var rc_viewCnt = document.getElementById("rc_viewCnt").value;
				console.log("rc_num : "+rc_num); */
				
			
				
				
	/*        if(recipe != null && recipeList!=null){
		        	var html = "<div class=\"content\">";
		        	html+="<div class=\"inner\">";
					html+="<h2>Best Cooker</h2>";
					/*for (var i in recipeList) {  
					//var user = recipeList;          
					html += "<div class=\"col-4\" OnClick=\"location.href ='${pageContext.request.contextPath}/recipe/recipeView.rc?rc_num=${recipe.getRc_num()}\'>";
					html += "<span class=\"image fit\">";
					html += "<img class=\"img\" src=\"app/upload/${recipe.getRc_file_title()}\'>";
					html += "<strong>${recipe.getRc_title()}</strong>";
					html += "<i class=\"fas fa-heart\">${recipe.getRc_like()}</i>";
					html += "조회수(${recipe.getRc_viewcnt()})";
					html += "</span>";
					html += "</div>";
					  }  
					html+="<ul class=\"actions\">";
					html+="<li><a href=\"${pageContext.request.contextPath}/recipe/recipeList.rc\" class=\"button small\">전체 레시피 보러가기</a></li>";
					html+="</ul>";	
					$("#one").html(html);
	        		
	        	}*/

				
/*	        	console.log("success");
	        	console.log("${recipe.getRc_file_title()}");
	        	}
	        },
	        error: function(error){
	        	console.log("error");
	        } 
		})
	}
	 

	recList(); // 처음 시작했을 때 실행되도록 해당 함수 호출   

 */
	 
 /* window.onload=function(){
		$("#listForm").attr('action',"${pageContext.request.contextPath}/recipe/recipeListMain.rc");
		$("#listForm").submit();
		console.log("submit 완료");
	 	var html = "<div class=\"content\">";
 		html+="<div class=\"inner\">";
		html+="<h2>Best Cooker</h2>";
		html += "<div class=\"col-4\" OnClick=\"location.href ='${pageContext.request.contextPath}/recipe/recipeView.rc?rc_num="+num0+"\'>";
		html += "<span class=\"image fit\">";
		html += "<img class=\"img\" src=\"app/upload/"+ft0+"\'>";
		html += "<strong>"+t0+"</strong>";
		html += "</span>";
		html += "</div>";
		
	}
 */</script>
</html>