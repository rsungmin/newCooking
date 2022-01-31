<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../green/assets/css/main.css" />
<title>Insert title here</title>
</head>
<style>
		.cateA {
			padding: 0 24px;
			margin-bottom: -10px;
			position: relative;	
		}
		.cateA li a{
		      padding: 2px 15px 6px;
		      line-height: 1;
		      color: #666;
		      background: #eee;
		      border-radius: 14px;
		      font-size: 13px;
		      text-decoration: none;
		      box-sizing: border-box;
   		}      
		.cateA li{
			
			display: inline-block;
      	}
	 	.newlogo {
			/* border: 1px solid; */
			/* background-image: url(./green/images/logo_transparent.png); */ 
			border-radius: 30%; 
			width: 150px;
			height: 80px;
			cursor:pointer;
		}
		#header2 {
			padding: 0 1em;
		}
		#header2 > .newlogo {
		    display: inline-block;
		    margin: 0;
		    white-space: nowrap;
	    }
		 #header2.alt > .newlogo {
			display: none;
		}
		#header2 ul {
			list-style: none;
			display: inline-block;
		}
		 #header2{		    
			background: #333333;
	    	width: 100%;
		    text-align: center;
		    height: 85px;
		    padding-top: 0;
		    overflow: hidden;
		    position: fixed;
		    height: 100px;
	    }
		#logo{
			position: absolute;
			width: 10%;
			top: -20%;
			left: 0;
			position: absolute;
		}
		body{
			padding-top: 0;
		}
		.cateList{
			margin-top : 0;
		    list-style-type: disc;
		    margin-block-start: 1em;
		    margin-block-end: 1em;
		    margin-inline-start: 0px;
		    margin-inline-end: 0px;
		    padding-inline-start: 40px;
		    box-sizing: border-box;
		    margin-top: 0;
		    margin-bottom: 0;
		    margin-left:0px;
		    padding: 16px 12% 3px;
		    overflow: hidden;
		    display: inline-block;
		}
		
</style>
<body>
<!-- Header -->
			<div id="header2" style="padding-left: 55%;">
			
			<div style="display: inline-block; padding-left: 40px; padding-top: 0; margin: 0 auto;">
				<a style="text-decoration: none; border-bottom: none;" href="../main.jsp">
					<img src="../green/images/logo_transparent.png" id="logo">
				</a>
			</div>
			
            <nav id="nav" style="display:inline-block; padding-top: 27px;">
            	<div style="text-align: left;">
            	
               <ul>
                  <li class="opener" style="user-select: none; cursor: pointer; white-space: nowrap;">
                     <a style="text-decoration: none; border-bottom: none;" href="#">
                     	<img style="background-color: #B7B7B7; border-radius: 50%;" src="../green/images/myprofile.png">
                     </a>
                  </li>
               </ul>
               	   
                  
                  <ul class="" style="user-select: none; display:none; position: relative;">
                        <li class="opener" style="user-select: none; cursor: pointer; white-space: nowrap;">
                           	<a href="#" style="display: block;">MyActivity</a>
                           <ul class="dropotron" style="user-select: none; display: none; position: absolute;">
                              <li style="white-space: nowrap;"><a href="#" style="display: block;">마이 레시피</a></li>
                              <li style="white-space: nowrap;"><a href="#" style="display: block;">마이 좋아요</a></li>
                              <li style="white-space: nowrap;"><a href="#" style="display: block;">follow 레시피</a></li>
                           </ul>
                        </li>   
	                        <li style="white-space: nowrap;"><a href="#" style="display: block;">팔로우</a></li>
	                        <li style="white-space: nowrap;"><a href="#" style="display: block;">팔로잉</a></li>
	                        <li style="white-space: nowrap;"><a href="#" style="display: block;">구매내역</a></li>
	                        <li style="white-space: nowrap;"><a href="#" style="display: block;">채팅</a></li>
	                        <li style="white-space: nowrap;"><a href="#" style="display: block;">회원 정보 수정</a></li>
	                        <li style="white-space: nowrap;"><a href="#" style="display: block;">문의</a></li>
                        	<li style="white-space: nowrap;"><a href="../index.html" style="display: block;">로그아웃</a></li>
                  </ul>
                  
                  <ul>
                  	
	                  	<li class="search__container" style="white-space: nowrap; position: relative; display: inline-block;">
	                   		<input class="search__input" style="width:280px; float: left; padding-top: 0 auto; margin:0 auto;" type="text" placeholder="Search">      
                  			<a style="text-decoration: noen; border-bottom: none; padding-left: 10px;" href="#"><img style="padding-top: 7px;" src="../green/images/searchBtnSmall.png"></a>
	                  	</li>
	                </ul>
               </div>
            </nav>
            </div>
		
			
				<!-- main -->
				<div style="height: 150px;"></div>
					<div class="cateA">
                        <ul class="cateList">
                           <li><a href="myRecipe.jsp">나의 레시피</a></li>
                           <li><a href="followRecipe.jsp">팔로우 레시피</a></li>
                           <li><a href="likedRecipe.jsp">좋아요 레시피</a></li>
                           <li><a href="buyList.jsp">구매목록</a></li>
                           <li><a href="pointManage.jsp">포인트 관리</a></li>
                           <li><a href="modifyInfo.jsp">회원정보 수정</a></li>
                           <li><a href="question.jsp">문의하기</a></li>
                        </ul>
					</div>
					
<div id="main" style="background: none;">
		

<section>
							<h2 style="margin-top:50px;"><strong>구매 내역</strong></h2>
							<div class="table-wrapper">
								<table>
									<thead>
										<tr>
											<th>상품 사진</th>
											<th>상품 이름</th>
											<th>상품 가격</th>
											<th>배송지</th>
											<th>배송상황</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><a href="#"><img src="../green/images/코팅팬.jpg" alt="" style="width:100px;"></a></td>
											<td style="padding-bottom:0px;"><strong>코팅팬</strong></td>
											<td>20000원</td>
											<td>서울시 강남구 역삼동 230-1 2층 201호</td>
											<td>배송완료</td>
										</tr>
										<tr>
											<td><a href="#"><img src="../green/images/중식도.jpg" alt="" style="width:80px;"></a></td>
											<td><strong>중식도</strong></td>
											<td>25000원</td>
											<td>서울시 강남구 서초동 298-2 자이아파트 101동 101호</td>
											<td>배송완료</td>
										</tr>
										<tr>
											<td><a href="#"><img src="../green/images/일식도.jpg" alt="" style="width:80px;"></a></td>
											<td><strong>일식도</strong></td>
											<td>50000원</td>
											<td>서울시 영등포구 당산동 2가 78-1 101호</td>
											<td>배송중</td>
										</tr>
										<tr>
											<td><a href="#"><img src="../green/images/웍.jpg" alt="" style="width:80px;"></a></td>
											<td><strong>웍</strong></td>
											<td>30000원</td>
											<td>부산시 해운대구 70-1 월드 메르디앙 305동 301호</td>
											<td>배송중</td>
										</tr>
										<tr>
											<td><a href="#"><img src="../green/images/볼.jpg" alt="" style="width:80px;"></a></td>
											<td><strong>볼</strong></td>
											<td>5000원</td>
											<td>서울시 강동구 풍성로 98-1 201호</td>
											<td>배송중</td>
										</tr>
										<tr>
											<td><a href="#"><img src="../green/images/도마.jpg" alt="" style="width:80px;"></a></td>
											<td><strong>도마</strong></td>
											<td>5000원</td>
											<td>서울시 강남구 대치동 19-1 701호</td>
											<td>배송중</td>
										</tr>
									</tbody>
									<tfoot>
									</tfoot>
								</table>
							
							<a href="#" style="text-decoration: none; border-bottom: none; float:right; margin-right:100px; margin-bottom:100px;"><strong>더보기</strong></a>
							
							</div>
		</section>	
</div>
<!-- Footer -->
<div id="footer">
	
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
			<p><a href="#">suk950904@gmail.com</a></p>
		</li>
	</ul>
				
	<ul class="joined-icons" >
		<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
		<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
		<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
	</ul>
	<span style="color:blue;">Copyright @석진욱</span>
</div>
<!-- Scripts -->
         <script src="../green/assets/js/jquery.min.js"></script>
         <script src="../green/assets/js/jquery.dropotron.min.js"></script>
         <script src="../green/assets/js/jquery.scrollex.min.js"></script>
         <script src="../green/assets/js/browser.min.js"></script>
         <script src="../green/assets/js/breakpoints.min.js"></script>
         <script src="../green/assets/js/util.js"></script>
         <script src="../green/assets/js/main.js"></script>
</body>
</html>