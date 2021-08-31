<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>단타포차에 오신걸 환영합니다.</title>
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
<div id=tablet> 
      <div id=left-sidebar> <!--왼쪽 사이드 레이아웃-->
         <button class="mainBtn" onClick="history.back();">HOME</button >
      </div>

      <div id=middle> <!--가운데 레이아웃--> 
         <div class=middle-top>
            <div class=logo href="index.jsp"> <!--단타포차 로고-->
               <button type="button" id="logo">
                   <a href="index.jsp">Danta</a>
               </button>
           
                </div>
         </div>
         <div class="login-page">
            <div class="form">
              <form class="login-form" action="requestLogin" method="post">
            	  <!-- id -->
                <input type="text" name="id" placeholder="닉네임을 입력해주세요. ex) 테이블 번호"/>
                <button type="submit">입장하기</button>
              </form>
            </div> <!--  form class end  -->
          </div> <!-- login class end -->
          
          
      </div>
      <div id=right-sidebar> <!--오른쪽 사이드 레이아웃-->

      </div>
   </div>

</body>
</html>
 