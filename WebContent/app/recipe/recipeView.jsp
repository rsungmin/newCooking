<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	/* ---- */
	a{	
	border-bottom: none;
	}
	.circle{
		width:50px;
		height:50px;
		border: 1px solid;
		border-radius: 50%;
		display:inline-block;
		margin-right:20px;
	}
	ul.alt li{
		border-bottom: solid 1px #e3e3e3;
		border-top:none;
	}
	.pic{
		width:300px;
		height:200px;
		border:1px solid;
		border-radius:4px;
		display:inline-block;
		margin-left:30px;
	}
	.row > .col-4{
		width:20%;
	}
	blockquote{
		font-size: .8em;
		border-left:0px;
	}	
	div .imagePreview{
		border: 1px solid #e0e0e0;
		border-radius: 4px;
		background:#90909013;
		height: 104px;
		width: 100px;
		display:inline-block;
		text-align: center;
		padding-top: 2.5%;
		margin-left:10px;
		background-position: center center;
		background-size: cover;
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
				<a href="javascript:modifyRecipe();">[수정]</a>
				<a href="javascript:deleteRecipe();">[삭제]</a>
				<section id="content" class="wrapper">
						<span class="image main"><img src="../../green/images/pic081.jpg"></span>
						<div style="text-align: center;">
							<h2><strong>${recipe.getRc_title()}</strong></h2>													
							<p>${recipe.getRc_contents() }</p>
							<div style="width:100%;"><i class="fas fa-user-friends"></i>${recipe.getRc_info() }
								<span style="margin-left:15%;"><i class="far fa-clock"></i>${recipe.getRc_time() }</span>
								<span style="margin-left:20%;"><i class="far fa-clock"></i>${recipe.getRc_dif() }</span>
							</div>
						</div>
					<hr>
						<div style="text-align: center;">
							<a ><i class="far fa-heart" id="like"></i></a><a><i id="heart2" class="fas fa-heart" style="display:none; color:red;"></i></a>좋아요
							<span style="margin-left:15%;"><a href="#reply"><i class="far fa-comment-dots"></i>댓글</a></span>
						</div>
					<hr>
					<h4>재료</h4>
					<div style="display:inline-block; padding-left:80px; margin-right:30%; float:left;">
						<h5>[주재료]</h5>
						<ul class="alt">
							<li>Dolor pulvinar etiam.</li>
							<li>Sagittis adipiscing.</li>
							<li>Felis enim feugiat.</li>
						</ul>
					</div>
					<div style="display:inline-block; ">
						<h5>[양념]</h5>
						<ul class="alt">
							<li>Dolor pulvinar etiam.</li>
							<li>Sagittis adipiscing.</li>
							<li>Felis enim feugiat.</li>
							<li>Dolor pulvinar etiam.</li>
							<li>Sagittis adipiscing.</li>
							<li>Felis enim feugiat.</li>
							<li>Dolor pulvinar etiam.</li>
							<li>Sagittis adipiscing.</li>
							<li>Felis enim feugiat.</li>
						</ul>
					</div>
					<hr>
					<h4>조리순서</h4>
					<div>
						<div style="display:inline-block; float:left; padding-left:60px;">1.Dolor pulvinar etiam Sagittis adipiscing Felis enim feugiat.</div>
						<!-- <img> -->
						<div class="pic"></div>
					</div>
					<div>
						<div style="display:inline-block; float:left; padding-left:60px;">1.Dolor pulvinar etiam Sagittis adipiscing Felis enim feugiat.
						<blockquote ><i class="fas fa-check" style="color:#8bcac6;"></i>팁<br>에어프라이기가 없다면 프라이팬에 기름을 살짝 두른 후 팬을 달군</blockquote>
						</div>
						<!-- <img> -->
						<div class="pic"></div>
					</div>
					<div>
						<div style="display:inline-block; float:left; padding-left:60px;">1.Dolor pulvinar etiam Sagittis adipiscing Felis enim feugiat.</div>
						<!-- <img> -->
						<div class="pic"></div>
					</div>
					<hr>
						<h4>레시피 작성자</h4>
						<div style="padding-left:50px; padding-right:50px;">
							<div style="margin-bottom: 10px;"><div class="circle"></div><a href="#"><strong>${recipe.getMember_id()}</strong></a></div>
							<div> 유튜브요리소식보러가기 구독,좋아요,알림설정해주시면 감사해요!</div>
						</div>
					<hr>
					
					<!--댓글  -->
					
					<h4 style="margin-bottom:30px;"><a id="reply">댓글</a></h4>	
					<form style="width:100%; padding-left:60px; padding-right:60px;" name="replyForm" 
					action="${pageContext.request.contextPath}/recipe/recipeReplyOk.rc" method="post" enctype="multipart/form-data">	
						<c:choose>
							<c:when test="${replyList != null and fn:length(replyList)>0}">				
								<c:set var="i" value="${0}"/>
								<c:forEach var="reply" items="${replyList}">
									<c:set var="i" value="${i+1}"/> 
									<tr>
										<td>
										<c:out value="${reply.getReply_num()}"/>&nbsp;&nbsp;
										<c:out value="${reply.getMember_id()}"/></td>
										<td><img class="img" src="../../green/images/${reply.getReply_file_name()}.jpg">				
										<textarea name="reply_contents${i}" id="${i}" readonly
												style="resize: none; width: 700px; height: 70px">${reply.getReply_contents()}</textarea>										
										  <c:if test="${reply.getMember_id() eq session_id.getMember_id()}">
												<a id="ready${i}" href="javascript:updateReply(${i})" >[수정]</a> &nbsp;&nbsp;
												<a id="ok${i}" href="javascript:replyUpdateOk(${i},${recipe.getRc_num()},${reply.getReply_num()})" style="display:none; ">[수정완료]</a>		 					
		 										<a href="${pageContext.request.contextPath}/recipe/recipeReplyDelete.rc?reply_num=${reply.getReply_num()}&rc_num=${recipe.getRc_num()}" onclick="deleteReply()">[삭제]</a><br>
		 								  </c:if>  
										</td>									
									</tr>
								</c:forEach>
							</c:when>			
							<c:otherwise>
								<tr align="center">
									<td colspan="3">댓글이 없습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose><br>				
					<div style="float:center;">
							<input type="hidden" name="rc_num" value="${recipe.getRc_num()}">
							<input type="hidden" name="member_id" value="${session_id.getMember_id()}">
							<textarea rows="3" style="resize:none; width:80%; display:inline-block; float:left;" id="reply_contents" name="reply_contents"></textarea>
							<div id="preview">
								<label for="input-file" class="imagePreview"><br>
									<i class="fas fa-plus" style="color:#bdbdbd;"></i>
								</label>
								<input id="input-file" name="picture" type="file" style="display:none; align:right;">
							</div>
						<a class="button small" style="float:right; margin-top:10px;" href="javascript:replySubmit()">등록</a>
						</div>
					</form>
					</section>
			
			</div>
			<form action="" name="recipeForm">
				<input type="hidden" name="rc_num" value="${recipe.getRc_num()}">
			</form>

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
			<script src="../../green/assets/js/breakpoints.min.js"></script>
			<script src="../../green/assets/js/util.js"></script>
			<script src="../../green/assets/js/main.js"></script>

	</body>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type ="text/javascript">
	$(document).ready(function(e){
		$("#like").on("click",function(e){
			e.preventDefault();
			
			$("#heart2").show();
			$(this).hide();
		});
		
		 $("#heart2").on("click",function(e){
			e.preventDefault();
			
			$("#like").show();
			$(this).hide();
		
	}); 
	})
</script>
<script>
check = false;
function replySubmit() {
	var textarea = $("textarea[name='reply_contents']:visible").val();
	var input = $('input[name=rc_num]').val();

	replyForm.submit();
}
function updateReply(num){
	var textarea = $("textarea#"+num);
	var ready_a = $("a#ready"+num);
	var ok_a = $("a#ok"+num);
	
	if(!check){
		textarea.removeAttr("readonly");
		ok_a.css("display","inline");
		ready_a.css("display","none");
		check=true;
	}else{
		alert("수정중인 댓글이 있습니다.")
	}
}
function replyUpdateOk(num,rc_num,reply_num){
	$("form[name='replyForm']").attr("action","${pageContext.request.contextPath}/recipe/recipeReplyModify.rc?" 
			+"reply_num="+reply_num+"&rc_num="+rc_num+"&num="+num);
	replyForm.submit();
	alert("수정되었습니다")
}

$(function() {
	$("#input-file").change(function(){
        var files = !!this.files ? this.files : [];
        if (!files.length || !window.FileReader) {return;} 
        if (/^image/.test( files[0].type)){ 
            var reader = new FileReader();
            var text = "";
            reader.readAsDataURL(files[0]); 
            reader.onloadend = function(){ 
             $('div .imagePreview').css("background-image", "url("+this.result+")");
             $(".fa-plus").hide();
            };
        }
    });
});

function deleteReply(){
	alert("댓글을 삭제하시겠습니까?")
}
function deleteRecipe() {
	$("form[name='recipeForm']").attr('action',
			"${pageContext.request.contextPath}/recipe/recipeDelete.rc")
	document.recipeForm.submit();
}
function modifyRecipe(){
	$("form[name='recipeForm']").attr('action',
	"${pageContext.request.contextPath}/recipe/recipeModify.rc")
document.recipeForm.submit();
}
</script>
</html>