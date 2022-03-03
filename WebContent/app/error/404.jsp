<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../green/assets/css/main.css" />
<title>Error 404</title>
<style>
div{
	text-align: center;	
}
h1,h3{
	display: inline-block;
}
a{
	font-size: 0.8em;
}
</style>
</head>
<body>
<div>
<h1><strong>404</strong></h1> <h3><strong>Error</strong></h3>

<p><strong>Page Not Found</strong></p>
<a href="${pageContext.request.contextPath}/main.jsp" class="button small">메인으로</a>
</div>
</body>
</html>