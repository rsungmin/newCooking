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
		<link rel="stylesheet" href="../green/assets/css/main.css" />
<style>
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
	.info{
		margin-left:15%;
	}	
	#heart2{
		display:none; 
		color:red;
	}
	.top{
		text-align: center;
	}
	.mid{
		padding-left:80px; 
		margin-right:30%;
	}
	textarea{
		white-space:pre; 
		resize:none
	}
	#replyForm{
		width:100%; 
		padding-left:60px; 
		padding-right:60px;
	}
	#reply_contents{
		resize:none; 
		width:80%; 
		display:inline-block; 
		float:left;
	}
	#input-file{
		display:none; 
		align:right;
	}
	#reg{
		float:right; 
		margin-top:10px;
	}
	#float{
		float:right;
	}
</style>
	</head>
	<body class="is-preload">

		<!-- Header -->
		
			<%@include file="../../app/include/header_r.jsp" %>

		<!-- Main -->
		
		<c:set var="recipe" value="${requestScope.recipe}"/>
		<c:set var="replyList" value="${requestScope.replyList}" />
		
			<div id="main">
				<c:if test="${recipe.getMember_id() eq session_id.getMember_id()}">
					<a href="javascript:modifyRecipe();">[수정]</a> 				
					<a href="javascript:deleteRecipe();">[삭제]</a>
				</c:if>
				<a href="${pageContext.request.contextPath}/recipe/recipeList.rc?page=1">[목록]</a>
				<section id="content" class="wrapper">
						<span class="image main"><img src="../app/upload/${recipe.getRc_file_title()}"></span>
						<div class="top">
							<h2><strong>${recipe.getRc_title()}</strong></h2>													
							<p>${recipe.getRc_contents() }</p>
							<div style="width:100%;"><i class="fas fa-user-friends"></i> ${recipe.getRc_info() }
								<span style="margin-left:15%;"><i class="far fa-clock"></i> ${recipe.getRc_time() }</span>
								<span style="margin-left:20%;"><i class="far fa-clock"></i> ${recipe.getRc_dif() }</span>
							</div>
						</div>
					<hr>
						<div class="top">
							<a id="rec_update" onClick="javascript:recUpdate();"><i class="far fa-heart" id="like"></i><i id="heart2" class="fas fa-heart"></i></a>&nbsp;
							<span class="rec_count"></span>
							<span class="info"><a href="#reply"><i class="far fa-comment-dots"></i>댓글</a></span>
							<span class="info">${recipe.getMember_id()}</span>
						</div>
					<hr>
					<h4>재료</h4>
					<div class="mid">						
						<textarea name="in_name" rows="5" cols="10" readonly>${recipe.getIn_name() }</textarea>
					</div>		
					<br><br><br>			
					<h4>조리순서</h4>
					<div class="mid">
						<textarea name="st_content" rows="5" cols="10" readonly>${recipe.getSt_content() }</textarea>
					</div>
					
					<hr>
					
					<!--댓글  -->
					
					<h4><a id="reply">댓글</a></h4>	
					<form name="replyForm" id="replyForm"
					action="${pageContext.request.contextPath}/recipe/recipeReplyOk.rc" method="post" enctype="multipart/form-data">	
						<c:choose>
							<c:when test="${replyList != null and fn:length(replyList)>0}">				
								<c:set var="i" value="${0}"/>
								<c:forEach var="reply" items="${replyList}">
									<c:set var="i" value="${i+1}"/> 
									<tr>
										<td>
											<c:out value="${reply.getReply_num()}"/>&nbsp;&nbsp;
											<c:out value="${reply.getMember_id()}"/>
										</td>
										<td>
											<div id="float">								
											  <c:if test="${reply.getMember_id() eq session_id.getMember_id()}">
													<a id="ready${i}" href="javascript:updateReply(${i})" >[수정]</a> &nbsp;&nbsp;
													<a id="ok${i}" href="javascript:replyUpdateOk(${i},${recipe.getRc_num()},${reply.getReply_num()})" style="display:none; ">[수정완료]</a>		 					
			 										<a href="${pageContext.request.contextPath}/recipe/recipeReplyDelete.rc?reply_num=${reply.getReply_num()}&rc_num=${recipe.getRc_num()}" onclick="deleteReply()">[삭제]</a><br>
			 								  </c:if>  
			 								 </div>		
											<br><img class="img" src="../app/upload/${reply.getReply_file_name()}"><br>
											<textarea name="reply_contents${i}" id="${i}" readonly
													style="resize: none; width: 700px; height: 70px;">${reply.getReply_contents()}</textarea>
			 								  <br>
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
							<textarea rows="3" id="reply_contents" name="reply_contents"></textarea>
							<div id="preview">
								<label for="input-file" class="imagePreview"><br>
									<i class="fas fa-plus" style="color:#bdbdbd;"></i>
								</label>
								<input id="input-file" name="picture" type="file">
							</div>
						<a class="button small" id="reg" href="javascript:replySubmit()">등록</a>
						</div>
					</form>
					</section>
			
			</div>
			<form action="" name="recipeForm" method="get" enctype="multipart/form-data">
				<input type="hidden" name="rc_num" value="${recipe.getRc_num()}">
			</form>

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
			"${pageContext.request.contextPath}/recipe/recipeDelete.rc");
	document.recipeForm.submit();
	console.log("삭제완료");
}
function modifyRecipe(){
	$("form[name='recipeForm']").attr('action',
	"${pageContext.request.contextPath}/recipe/recipeModify.rc");
document.recipeForm.submit();
} 




function recUpdate(){
	// 추천버튼 클릭시(추천 추가 또는 추천 제거)
	$("#rec_update").click(function(){
		$.ajax({
			url: "${pageContext.request.contextPath}/recipe/recipeLike.rc",
            type: "POST",
            data: {
                rc_num: ${recipe.getRc_num()},
                member_id: '${session_id.getMember_id()}'
            },
            success: function () {
		        recCount();
            },
		})
	})}
	
//게시글 추천수
function recCount() {
	$.ajax({
		url: "${pageContext.request.contextPath}/recipe/recipeLikeCount.rc",
        type: "POST",
        data: {
        	rc_num: '${recipe.getRc_num()}',
        },
        success: function (count) {
        	$(".rec_count").html(count);
        },
	})
}

recCount(); // 처음 시작했을 때 실행되도록 해당 함수 호출


</script>
</html>