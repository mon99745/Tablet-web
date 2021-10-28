<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>단타포차에 오신걸 환영합니다.</title>
    <link rel="stylesheet" type ="text/css" href="../css/login.css">
    <link rel="stylesheet" type ="text/css" href="../css/style.css">
</head>

<body>
   <div id=tablet> 
      <div id=left-sidebar> <!--왼쪽 사이드 레이아웃-->
         <button class="mainBtn" onClick="menu.jsp">HOME</button >
         
      </div>

      <div id=middle> <!--가운데 레이아웃--> 
         <div class=middle-top>
            <div class=logo href="menu.jsp"> <!--단타포차 로고-->
               <button type="button" id="logo">
                   <a href="../main/menu.jsp">Danta</a>
               </button>
           
               </div>
         </div>
         
         <div class="login-page">
            <div class="form">
              <form class="login-form" action="memberLoginAction.me" method="post">
              
            	<!-- id -->
                <input type="text" name="member_id" placeholder="ID"/>
                <!-- pwd -->
                <input type="password" name="member_pwd" placeholder="password"/>
                
                <button type="submit">로그인</button>
                
                <input type="button" value="회원가입" onclick="location.href='../memberJoin.me'"/>
                
                <p class="message">아이디 비밀번호를 잊으셨나요?<a href="#">Id/Pw 찾기</a></p>
              </form>
            </div>
          </div>
          
          
      </div>

      <div id=right-sidebar> <!--오른쪽 사이드 레이아웃-->

      </div>
   </div>
</body>
</html>