<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
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
	.cookSearch > a > img{
		padding-top: 6px;
		padding-left: 15px;
		float: left;
	}
</style>
</head>
<body>
	<div id="header">
		<a class="cook" href="main.jsp"><img src="green/images/logomain.png"></a>
		<%  
		    if (session.getAttribute("session_id") == null) {		      
		%>
		<nav id="nav" class="navi">
			<ul>
				<li><a href="app/member/memberJoin.jsp">Join</a></li>
				<li><a href="app/member/memberLogin.jsp">Login</a></li>
				<li class="cookSearch">
		        	<input class="searchInput" type="text" placeholder="Search">      
	                <a href="#"><img src="green/images/searchBtnSmall.png"></a>
		        </li>
			</ul>
		</nav>
		<% 
		}else if(session.getAttribute("session_id")!=null){
		%>
		<nav id="nav" class="navi">
			<ul>
				<li><a href="#">My Page</a>
					<ul>
						<li><a href="${pageContext.request.contextPath}/member/memberInfo.me">My Info</a></li>
					</ul>
				</li>
				<li><a href="app/recipe/recipeRegister.jsp">Write</a></li>
				<li><a href="${pageContext.request.contextPath}/member/memberLogout.me">Logout</a></li>
				<li class="cookSearch">
		        	<input class="searchInput" type="text" placeholder="Search">      
	                <a href="#"><img src="green/images/searchBtnSmall.png"></a>
		        </li>
			</ul>
		</nav>
		<% } %>
	</div>
</body>
		<!-- Scripts -->
			<script src="../../green/assets/js/jquery.min.js"></script>
			<script src="../../green/assets/js/jquery.dropotron.min.js"></script>
			<script src="../../green/assets/js/jquery.scrollex.min.js"></script>
			<script src="../../green/assets/js/browser.min.js"></script>
			<script src="../../green/assets/js/breakpoints.min.js"></script>
			<script src="../../green/assets/js/util.js"></script>
			<script src="../../green/assets/js/main.js"></script>
			<script src=https://code.jquery.com/jquery-3.6.0.min.js></script>
			<script src="../../recipeList.js"></script>
			
</html>