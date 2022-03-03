<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../../green/assets/css/main.css" />
</head>
<script>
/* 	window.onload=function(){
		location.href = "${pageContext.request.contextPath}/recipe/recipeListMain.rc";
	} */
</script>
<body>

<c:set var="recipe" value="${requestScope.recipe}" />
				<c:set var="list" value="${requestScope.recipeList}"/>
					<section id="one" class="wrapper spotlight">
						  <div class="content">
							<div class="inner"> 
								 <h2>Best Cooker</h2>
									 <c:choose>
										<c:when test="${list!=null and fn:length(list)>0 }">
											<c:forEach var="recipe" items="${list}">
												<div class="col-4" OnClick="location.href ='${pageContext.request.contextPath}/recipe/recipeView.rc?rc_num=${recipe.getRc_num()}'">
												<span class="image fit">
												<img class="img" src="../app/upload/${recipe.getRc_file_title()}">
												<strong> ${recipe.getRc_title() } </strong>
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
								<ul class="actions">
									<li><a href="${pageContext.request.contextPath}/recipe/recipeList.rc" class="button small">전체 레시피 보러가기</a></li>
								</ul>
							</div>
						</div>			  		
					</section>


</body>
</html> 