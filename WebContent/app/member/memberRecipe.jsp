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
				#header {
					padding: 0 1em;
				}
				#header > .newlogo {
				    display: inline-block;
				    margin: 0;
				    white-space: nowrap;
				    }
				 #header.alt > .newlogo {
					display: none;
				}
				#header ul {
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
	
</style>

<body>

<!-- Header -->
	
		<div id="header2">
			<div id="header" class="alt" style="padding-left: 55%;">
			<div style="display: inline-block; padding-left: 40px; padding-top: 0; margin: 0 auto;">
				<a style="text-decoration: none; border-bottom: none;" href="../main.jsp">
					<img src="../green/images/logo_transparent.png" id="logo">
				</a>
			</div>
            <!-- <a class="logo" href="index.html">
            
               <img style="border: 3px" src="./green/images/logo_transparent.png" border="6px" height="80px" align="left" width="170px">            
            </a> -->
            <nav id="nav">
               <ul style="margin: 0 auto; padding-top: 0;">
                  
                  <li class="opener" style="user-select: none; cursor: pointer; white-space: nowrap;">
                     <a href="#"><img src="../green/images/myprofile.png"></a>
                     
                  <ul class="" style="user-select: none; display: none; position: absolute;">
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
                  </li>
	                  	<li class="search__container" style="white-space: nowrap;">
	                   		<input class="search__input" style="width:280px; padding-top: 25px; margin:0 auto;" type="text" placeholder="Search">      
	                  	</li>
	                  		<li class="button" style="white-space: nowrap;">
	                  			<a href="#"><img style="padding-top: 7px;" src="../green/images/searchBtnSmall.png"></a>
	                  		</li>
               </ul>
            </nav>
         </div>
		</div>
<!-- main -->
<div style="height: 150px;"></div>
<div class="cateA" style="padding: 0 24px; margin-bottom: -10px; position: relative;">
                        <ul style="display: inline-block;
         margin-top : 0;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
    box-sizing: border-box; margin-top: 0; margin-bottom: 0; margin-left:160px; padding: 16px 4px 0; overflow:hidden;">
                           
                           <li><a href="myRecipe.jsp">나의 레시피</a></li>
                           <li><a href="followRecipe.jsp">팔로우 레시피</a></li>
                           <li><a href="likedRecipe.jsp">좋아요 레시피</a></li>
                           <li><a href="buyList.jsp">구매목록</a></li>
                           <li><a href="pointManage.jsp">포인트 관리</a></li>
                          <li><a href="modifyInfo.jsp">회원정보 수정</a></li>
                           <li><a href="question.jsp">문의하기</a></li>
                        </ul>
                     </div>
<div id="main">
		

<section>
							<h2 style="margin-top:50px;"><strong>내가 작성한 레시피</strong></h2>
							<div class="table-wrapper">
								<table>
									<thead>
										<tr>
											<th>음식이름</th>
											<th>간단한 설명</th>
											<th>예상 가격</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><a href="#"><strong>김치찌개</strong></a></td>
											<td>김치와 돼지고기가 맛의 반을 차지한다</td>
											<td>20000원</td>
										</tr>
										<tr>
											<td><a href="#"><strong>봉골레 파스타</strong></a></td>
											<td>조개와 파스타면의 조화로운 맛</td>
											<td>25000원</td>
										</tr>
										<tr>
											<td><a href="#"><strong>티본 스테이크</strong></a></td>
											<td>다른 부위를 동시에 먹을 수 있다</td>
											<td>50000원</td>
										</tr>
										<tr>
											<td><a href="#"><strong>소 불고기</strong></a></td>
											<td>불고기 양념의 중요성이 높다</td>
											<td>30000원</td>
										</tr>
										<tr>
											<td><a href="#"><strong>김치스펨 볶음밥</strong></a></td>
											<td>개인적으로 내가 가장 좋아하는 음식</td>
											<td>5000원</td>
										</tr>
									</tbody>
									<tfoot>
										<tr>
											<td><a href="#"><strong>떡볶이</strong></a></td>
											<td>집에서 조리하는게 사먹는 것 보다 맛있다</td>
											<td>5000원</td>
										</tr>
									</tfoot>
								</table>
							
							<a href="#" style="float:right; margin-right:100px; margin-bottom:100px;"><strong>더보기</strong></a>
							
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