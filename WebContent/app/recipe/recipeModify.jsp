<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<style>
	.image{
		border: 1px solid #e0e0e0;
		border-radius: 10px;
		background:#90909013;
		height: 200px;
		width: 200px;
		float:right;
		text-align: center;
		padding-top: 6%;
	}		
	.image2{
		border: 1px solid #e0e0e0;
		border-radius: 4px;
		background:#90909013;
		height: 182px;
		width: 182px;
		text-align: center;
		padding-top: 6%;
		margin-right:195px;
		display: inline-block !important;
		margin-top: 0 !important;
	}		
	.image3{
		border: 1px solid #e0e0e0;
		border-radius: 5px;
		background:#90909013;
		height: 180px;
		width: 180px;
		display:inline-block;
		text-align: center;
		padding-top: 6%;
		margin-right:10px;
	}		
	.div{
		margin-left:30%;
	}
	a{
		border-bottom: none;
	}
	#tip{
		margin: 0 auto;
		padding-left:10px;	
		border:2px solid #8bcac6;
		border-radius: 4px;
		width:40%;
	}
	#tip-plus{
		margin: 0 auto;
		border: 2px solid #8bcac6;
		border-radius: 4px;
		width:40%;
		height:110px;
		display: none;
	}
	.imagePreview{
		border: 1px solid #e0e0e0;
		border-radius: 4px;
		background:#90909013;
		height: 180px;
		width: 180px;
		display:inline-block;
		text-align: center;
		margin: 0 auto;
		padding-top: 5%;
		background-position: center;
		background-size: cover;
		background-image: url( "../app/upload/${recipe.getRc_file_title()}" );
	}
	#default {
		display: none;
	}
	#input-file {
		display: none;
	}
	#input-file2 {
		display: none;
	}
	.recipe {
		width: 13%;
		display: inline-block;
	}
	.recipe1 {
		width: 13%;
		display: inline-block;
		margin-right: 80px;
	}
	label {
		margin: 1em !important;
		display: inline-block !important;
	}
	.information{
		width: 7%;
	}
	.intro {
		width: 100%;
		height: 100px;
		resize: none;
	}
	.ingre {
		width: 350px;
		display: block;
		flex-direction: column;
	}
	.add {
		text-align: center;
	}
	.stepinfo {
		resize: none;
		width: 70%;
		margin: 0;
		margin-bottom: 10px;
		display: inline-block;
		height: 180px;
	}
	.step-top {
		padding: 0 auto;
		display: flex;
	}
	.end {
		text-align: center;
	}
	.noresize {
		resize: none;
	}
</style>
	</head>
	<body class="is-preload">

		<!-- Header -->
		
			<%@include file="../../app/include/header_r.jsp" %>

		<!-- Main -->
				
			<c:set var="recipe" value="${requestScope.recipe}"/>
				<div id="main">
				<!-- Header -->
					<header>
						<h4>레시피 수정</h4>
					</header>

				<!-- Content -->
					<section id="content" class="wrapper">
						<br><br>
						<form name="recipeform" id="recipeform" method="post" action="${pageContext.request.contextPath}/recipe/recipeModifyOk.rc" > 
							
							 <input type="hidden" name="rc_num" value="${recipe.getRc_num()}">  
							 <input type="hidden" name="rc_file_title" value="${recipe.getRc_file_title()}">  
								<!-- <label for="input-file" class="imagePreview" id="imagePreview">
								 	<i class="text-hide"></i>
								</label>	 -->								
								<div class="imagePreview">
									<%-- <img src="../app/upload/${recipe.getRc_file_title()}" > --%>
								</div>
									<!-- <input name="rc_file_title" id="input-file" type="file"> -->
									<br>
									<h4>레시피 제목</h4>
								<input name="rc_title" type="text" value="${recipe.getRc_title() }">
								<br>	
									<h4>요리소개</h4>
								<textarea class="intro" id="rc_contents" name="rc_contents">${recipe.getRc_contents() }</textarea><br><br>
									<h5 class="information">카테고리</h5>
									<select id="rc_cate" name="rc_cate" class="recipe1">										
										<c:if test="${recipe.getRc_cate().equals('한식') }">
											<option class="cate" value="한식" selected>한식</option>
										</c:if>
										<c:if test="${!recipe.getRc_cate().equals('한식') }">
											<option class="cate" value="한식">한식</option>
										</c:if>
										<c:if test="${recipe.getRc_cate().equals('중식') }">
											<option class="cate" value="중식" selected>중식</option>
										</c:if>
										<c:if test="${!recipe.getRc_cate().equals('중식') }">
											<option class="cate" value="중식">중식</option>
										</c:if>
										<c:if test="${recipe.getRc_cate().equals('양식') }">
											<option class="cate" value="양식" selected>양식</option>
										</c:if>
										<c:if test="${!recipe.getRc_cate().equals('양식') }">
											<option class="cate" value="양식">양식</option>
										</c:if>
										<c:if test="${recipe.getRc_cate().equals('일식') }">
											<option class="cate" value="일식" selected>일식</option>
										</c:if>
										<c:if test="${!recipe.getRc_cate().equals('일식') }">
											<option class="cate" value="일식">일식</option>
										</c:if>
									</select>
									<h5 class="information">요리정보</h5>
									<select name="rc_info" class="recipe">
										<c:if test="${recipe.getRc_info().equals('1인분') }">
											<option value="1인분" selected>1인분</option>
										</c:if>
										<c:if test="${!recipe.getRc_info().equals('1인분') }">
											<option value="1인분">1인분</option>
										</c:if>
										<c:if test="${recipe.getRc_info().equals('2인분') }">
											<option value="2인분" selected>2인분</option>
										</c:if>
										<c:if test="${!recipe.getRc_info().equals('2인분') }">
											<option value="2인분">2인분</option>
										</c:if>
										<c:if test="${recipe.getRc_info().equals('3인분') }">
											<option value="3인분" selected>3인분</option>
										</c:if>
										<c:if test="${!recipe.getRc_info().equals('3인분') }">
											<option value="3인분">3인분</option>
										</c:if>
									</select>
									<select name="rc_time" class="recipe">
										<c:if test="${recipe.getRc_time().equals('10분이내') }">
											<option value="10분이내" selected>10분이내</option>
										</c:if>
										<c:if test="${!recipe.getRc_time().equals('10분이내') }">
											<option value="10분이내">10분이내</option>
										</c:if>
										<c:if test="${recipe.getRc_time().equals('20분이내') }">
											<option value="20분이내" selected>20분이내</option>
										</c:if>
										<c:if test="${!recipe.getRc_time().equals('20분이내') }">
											<option value="20분이내">20분이내</option>
										</c:if>
										<c:if test="${recipe.getRc_time().equals('30분이내') }">
											<option value="30분이내" selected>30분이내</option>
										</c:if>
										<c:if test="${!recipe.getRc_time().equals('30분이내') }">
											<option value="30분이내">30분이내</option>
										</c:if>
									</select>
									<select name="rc_dif" class="recipe">
										<c:if test="${recipe.getRc_dif().equals('초급') }">
											<option value="초급" selected>초급</option>
										</c:if>
										<c:if test="${!recipe.getRc_dif().equals('초급') }">
											<option value="초급">초급</option>
										</c:if>
										<c:if test="${recipe.getRc_dif().equals('중급') }">
											<option value="중급" selected>중급</option>
										</c:if>
										<c:if test="${!recipe.getRc_dif().equals('중급') }">
											<option value="중급">중급</option>
										</c:if>
										<c:if test="${recipe.getRc_dif().equals('고급') }">
											<option value="고급" selected>고급</option>
										</c:if>
										<c:if test="${!recipe.getRc_dif().equals('고급') }">
											<option value="고급">고급</option>
										</c:if>
									</select>								
							<br><hr>
							<h4>재료</h4>
							<div style="padding-left:80px; margin-right:30%;">						
								<textarea name="in_name" rows="5" cols="10" style="resize:none">${recipe.getIn_name() }</textarea>
							</div>		
							<br><br><br>			
							<h4>요리순서</h4>
							<div style="padding-left:80px; margin-right:30%;">
								<textarea name="st_content" rows="5" cols="10" style="resize:none">${recipe.getSt_content() }</textarea>
							</div>
							<hr>
							
							<div class="end">
								<a id="done" href="javascript:modifyRecipe()" class="button primary">수정</a>
								<!-- <input type="submit" class="button primary" value="수정"/> -->
								<!-- <button type="submit" class="button primary">수정</button> -->
								<a href="javascript:window.history.back();" class="button">취소</a>
							</div>
						</form>
						<%-- <form action="" name="recipeform" id="recipeform" method="get">
							<input type="hidden" name="rc_num" value="${recipe.getRc_num()}">
						</form>  --%>
					</section>

			</div>
			

		<!-- Footer -->
		
			<%@include file="../../app/include/footer.jsp" %>

	</body>
		<!-- Scripts -->
			<script src="../green/assets/js/jquery.min.js"></script>
			<script src="../green/assets/js/jquery.dropotron.min.js"></script>
			<script src="../green/assets/js/jquery.scrollex.min.js"></script>
			<script src="../green/assets/js/browser.min.js"></script>
			<script src="../green/assets/js/breakpoints.min.js"></script>
			<script src="../green/assets/js/util.js"></script>
			<script src="../green/assets/js/main.js"></script>
	<script>

	
function sendit(){
	console.log("제발 완료되어주세요!");
	document.recipeform.submit();
	console.log("제발 완료되어주세요!");
}

function modifyRecipe(){
/* 	$("form[name='recipeform']").attr('action',
	"${pageContext.request.contextPath}/recipe/recipeModifyOk.rc"); */
	 document.recipeform.submit(); 
	
	console.log("submit 완료");
} 


	
</script>
</html>