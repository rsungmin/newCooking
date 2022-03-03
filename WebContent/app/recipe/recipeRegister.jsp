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
		<link rel="stylesheet" href="../../green/assets/css/main.css" />
<style>
	/* -- */
	
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
				
				<div id="main">
				<!-- Header -->
					<header>
						<h4>레시피 등록</h4>
					</header>

				<!-- Content -->
					<section id="content" class="wrapper">
						<br><br>
						<form name="recipeform" method="post" action="${pageContext.request.contextPath}/recipe/RecipeWriteOk.rc" enctype="multipart/form-data">
							
 								<label for="input-file" class="imagePreview" id="imagePreview">
								<i class="text-hide">대표사진을 등록해주세요<br></i>
									<i class="fas fa-camera fa-4x"></i>
								</label>
									<input name="rc_file_title" id="input-file" type="file">
									<br><a href="#" id="default"></a> 
									<label>레시피 제목</label>
								<input name="rc_title" type="text">	
									<label>요리소개</label>
								<textarea class="intro" name="rc_contents"></textarea><br><br>
									<label class="information">카테고리</label>
									<select name="rc_cate" class="recipe1">
										<option> 선택 </option>
										<option value="한식">한식</option>
										<option value="중식">중식</option>
										<option value="양식">양식</option>
										<option value="일식">일식</option>
									</select>
									<label class="information">요리정보</label>
									<select name="rc_info" class="recipe">
										<option>인원</option>
										<option value="1인분">1인분</option>
										<option value="2인분">2인분</option>
										<option value="3인분">3인분</option>
									</select>
									<select name="rc_time" class="recipe">
										<option>시간</option>
										<option value="10분이내">10분이내</option>
										<option value="20분이내">20분이내</option>
										<option value="30분이내">30분이내</option>
									</select>
									<select name="rc_dif" class="recipe">
										<option>난이도</option>
										<option value="초급">초급</option>
										<option value="중급">중급</option>
										<option value="고급">고급</option>
									</select>
								
					<br><hr>
							<label>재료</label><br>
							<div class="div">
								<div class="ingre" id="plus" onmouseover="">			
									<textarea name="in_name" rows="5" cols="10" placeholder="양배추 1/2개" style="white-space:pre; resize:none"></textarea>
									<!-- <textarea name="in_amount" rows="5" cols="10" placeholder="1/2개" style="resize:none"></textarea> -->

								</div>		
								
							</div>
							
							<!-- <div class="add" id="add">
								<a class="button small" onclick=""><i class="fas fa-plus"></i>추가</a>
								<a class="button small" onclick=""><i class="fas fa-minus"></i>삭제</a>
							</div>  -->
							
							<br>
							<hr>
							<label>요리순서</label>
							<div id="step">
							
							<!-- <input type="number" name="st_step"> -->
								<!-- <div class="step-top"> -->
									<textarea name="st_content" rows="5" cols="30" style="white-space:pre; resize:none"></textarea>
									<!-- <label for="input-file2" class="image2 imagePreview"><br>
									<i class="fas fa-plus"></i></label>
									<input id="input-file2" name="st_file_name" type="file"> -->
								<!-- </div> -->
								<!-- <div id="tip">
									<a href="#"><i class="fas fa-check"></i>팁 </a>								
								</div >							
								<div id="tip-plus">
									<i class="fas fa-check"></i>팁
									<textarea class="noresize" name="st_tip" rows="2"></textarea>
								</div> -->
							</div>
							<br>
							<!-- <div id="step-plus" class="end"><a class="button small">+ 순서추가</a></div><br>	 -->
							<hr>

							<div class="end">
								<a id="done" href="javascript:sendit()" class="button primary">등록</a>
								<a class="button">취소</a>
							</div>
						</form>
					</section>

			</div>
			

		<!-- Footer -->
			
			<%@include file="../../app/include/footer.jsp" %>

		<!-- Scripts -->
			<script src="../../green/assets/js/jquery.min.js"></script>
			<script src="../../green/assets/js/jquery.dropotron.min.js"></script>
			<script src="../../green/assets/js/jquery.scrollex.min.js"></script>
			<script src="../../green/assets/js/browser.min.js"></script>
			<script src="../../green/assets/js/breakpoints.min.js"></script>
			<script src="../../green/assets/js/util.js"></script>
			<script src="../../green/assets/js/main.js"></script>

	</body>
	<script>
	$(function() {
		$("#input-file").change(function(){
	        var files = !!this.files ? this.files : [];
	        if (!files.length || !window.FileReader) {return;} 
	        if (/^image/.test( files[0].type)){ 
	            var reader = new FileReader();
	            var text = "";
	            reader.readAsDataURL(files[0]); 
	            reader.onloadend = function(){ 
	             $('.imagePreview').css("background-image", "url("+this.result+")");
	             $(".fa-camera").hide();
	             $(".fa-4x").hide();
	             $(".text-hide").hide();
	             $("#default").show();
	            };
	        }
	    });
	});
	
	$(function() {
		$("#input-file2").change(function(){
	        var files = !!this.files ? this.files : [];
	        if (!files.length || !window.FileReader) {return;} 
	        if (/^image/.test( files[0].type)){ 
	            var reader = new FileReader();
	            var text = "";
	            reader.readAsDataURL(files[0]); 
	            reader.onloadend = function(){ 
	             $('.image2').css("background-image", "url("+this.result+")");
	             $(".fa-plus").hide();
	            };
	        }
	    });
	});

	$("#default").on("click", function(e){
		e.preventDefault();
		 $('.imagePreview').css("background-image", "url('../../green/images/profile.jpg')");
	});
	
$(document).ready(function(e){
		

		$("#tip").on("click",function(e){
			e.preventDefault();
			
			$("#tip-plus").show();
			$(this).hide();
		});
		
		var step = $("#step");
		
		$("#step-plus").on("click",function(e){
			e.preventDefault();
			
			step.append(step);
		});
		
		
		$("#iplus").on("click",function(e){
			e.preventDefault();
			
		  	var ingr = $("#ingr");
		  	/*	ingr.append($("#minus")); 
			$("#minus").after(ingr); */
			/* console.log(ingr); */
			console.log("클릭됨");
			/* console.log(ingr); */
			  $(".a").append(ingr); 
			 return; 
			/*  if(  $(".a").append(ingr)==null){
				 console.log("x");				 
			 }else if(  $(".a").append(ingr)!=null){
				 console.log("o");	
			 }  */

			/* ingr.append($("#minus")); */
			/* ingr.append($("#tip"));  */
			
			
		});		
	});
	
function sendit(){
	console.log("제발 완료되어주세요!");
	document.recipeform.submit();
	console.log("제발 완료되어주세요!");
}
	
	</script>
</html>