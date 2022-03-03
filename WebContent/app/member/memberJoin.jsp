<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<title>Untitled</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
		<link rel="stylesheet" href="../../green/assets/css/main.css">
		<link rel="preconnect" href="https://fonts.gstatic.com">

<style>
#logo{
		width: 100px;
		height: 100px;
	}
div .imagePreview{
	border: 1px solid #e0e0e0;
	border-radius: 4px;
	background:#90909013;
	height: 180px;
	width: 180px;
	display:inline-block;
	text-align: center;
	padding-top: 12%;
	background-position: center center;
	background-size: cover;
}		
input{
	margin-bottom: 5px;
}

		
</style>
</head>
	<body class="is-preload">

		<!-- Header -->
			
			<%@include file="../../app/include/header_me.jsp" %>
			
		<!-- Main -->
					<section id="content" class="wrapper">
						<h2 style="text-align:center;"><img src="../../green/images/logomain.png" id="logo"></h2>
						<form style="width:50%; margin:0 auto;" action="${pageContext.request.contextPath}/member/MemberJoinOk.me" method="post" name="joinform" enctype="multipart/form-data">
							<div style="text-align:center;" id="preview">
								<label for="input-file" class="imagePreview"><br>
									<i class="fas fa-plus" style="color:#bdbdbd;"></i>
								</label>
								<input id="input-file" name="picture" type="file" style="display:none; align:right;">
								<br><a href="#" id="default" style="display:none;">기본이미지로 변경</a>
							</div>
							
							<span style="color:red;" id="checkText"></span><br>
							<input type="text" name="member_id" onkeyup="checkId()" placeholder="아이디">
							<input type="password" name="member_pw" placeholder="비밀번호">
							<input type="password" name="member_pw2" placeholder="비밀번호 확인" style="margin-bottom:20px;">
							<input type="text" name="member_name" placeholder="이름">
							<input type="text" name="member_iddn" placeholder="생년월일" style="width:80%; display:inline-block;">
							
							
							<input type="text" name="member_email" placeholder="이메일">
							<input type="text" name="member_phone" placeholder="연락처"  style="margin-bottom:20px;"> 
						
							<input type="text" name="member_postcode" id="sample6_postcode" placeholder="우편번호" style="width:50%; display:inline-block;">
							<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" style="width:40%; display:inline-block;"><br>
							<input type="text" name="member_addr" id="sample6_address" placeholder="주소">
							<input type="text" name="detail_addr" id="sample6_detailAddress" placeholder="상세주소">
							<input type="text" name="etc_addr" id="sample6_extraAddress" placeholder="참고항목"> 
																						
							<input type="text" name="url" placeholder="오픈카톡" style="margin-top:20px;">
							
							<!--<a onclick="sendit()" class="button primary fit" style="margin-top:20px;">회원가입</a>-->
							<input type="button" onclick="sendit()" class="button primary fit" style="margin-top:20px;" value="회원가입">
							
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
			
			<ul class="dropotron level-0" style="user-select: none; display: none; position: absolute; z-index: 1000;">
								<li style="white-space: nowrap;"><a href="#" style="display: block;">Link One</a></li>
								<li style="white-space: nowrap;"><a href="#" style="display: block;">Link Two</a></li>
								<li style="white-space: nowrap;"><a href="#" style="display: block;">Link Three</a></li>
								<li class="opener" style="user-select: none; cursor: pointer; white-space: nowrap;">
									<a href="#" style="display: block;">Submenu</a>
									<ul class="dropotron level-1" style="user-select: none; display: none; position: absolute; z-index: 1001;">
										<li style="white-space: nowrap;"><a href="#" style="display: block;">Link One</a></li>
										<li style="white-space: nowrap;"><a href="#" style="display: block;">Link Two</a></li>
										<li style="white-space: nowrap;"><a href="#" style="display: block;">Link Three</a></li>
										<li style="white-space: nowrap;"><a href="#" style="display: block;">Link Four</a></li>
									</ul>
								</li>
								<li style="white-space: nowrap;"><a href="#" style="display: block;">Link Five</a></li>
							</ul><div id="navButton"><a href="#navPanel" class="toggle"></a></div><div id="navPanel"><nav><a class="link depth-0" href="index.html" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>Home</a><a class="link depth-0" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>Dropdown</a><a class="link depth-1" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Link One</a><a class="link depth-1" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Link Two</a><a class="link depth-1" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Link Three</a><a class="link depth-1" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Submenu</a><a class="link depth-2" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-2"></span>Link One</a><a class="link depth-2" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-2"></span>Link Two</a><a class="link depth-2" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-2"></span>Link Three</a><a class="link depth-2" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-2"></span>Link Four</a><a class="link depth-1" href="#" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-1"></span>Link Five</a><a class="link depth-0" href="generic.html" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>Generic</a><a class="link depth-0" href="elements.html" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><span class="indent-0"></span>Elements</a></nav><a href="#navPanel" class="close" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></a></div>

	<script> var contextPath = "${pageContext.request.contextPath}";</script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="./user.js"></script>
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
             $('div .imagePreview').css("background-image", "url("+this.result+")");
             $(".fa-plus").hide();
             $("#default").show();
            };
        }
    });
});

$("#default").on("click", function(e){
	e.preventDefault();
	 $('div .imagePreview').css("background-image", "url('../../green/images/profile.jpg')");
})


</script>
</body>
</html>