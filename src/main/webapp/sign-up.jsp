<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>단타포차에 오신걸 환영합니다.</title>
    <link rel="stylesheet" href="css/sign-up.css">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>
   <div id=tablet> 
      <div id=left-sidebar> <!--왼쪽 사이드 레이아웃-->

         <button class=logo onclick="location.href('index.jsp')">
            <!--단타포차 로고-->
            <div class="neon">단타</div>
            <div class="neon2">포차</div>
         </button>
            <button type="button" class="mainBtn">
               <a href="index.jsp">메인이동</a>
            </button>
      </div>

      <div id=middle> <!--가운데 레이아웃-->
            <div class="sign-upTab" style= "overflow-y: scroll"> <!--상단 메뉴 리스트-->
               회원가입
            </div>
            <div class="sign-up-table"> <!--  로그인탭 -->
            <form action="memberJoinAction.me" method="post">
               <form ><table>
                  <tr>
                     <td>아이디: </td>
                     <td><input type="text" name="member_id" required="required" placeholder="아이디"></td>
                  </tr>
                  <tr>
                     <td>비밀번호: </td>
                     <td><input type="password" name="member_pwd" required="required" placeholder="비밀번호"></td>
                  </tr>
                  <tr>
                     <td>비밀번호 확인: </td>
                     <td><input type="password" name="member_pwdCheck" required="required" placeholder="비밀번호 확인"></td>
                  </tr>
                   <tr>
                     <td>성명: </td>
                     <td><input type="text" name="member_name" required="required" placeholder="성명"></td>
                  </tr>
                  <tr>
                     <td>생년월일: </td>
                     <td><input type="text" name="member_birthday" required="required" placeholder="ex) 19001020"></td>
                  </tr>
                  <tr>
					<th>성별</th>
					<td>
					<input type="radio" name="member_gender" value="남" checked="checked" />남자
					<input type="radio" name="member_gender" value="여" />여자
					</td>
				  </tr>
                  <tr>
                     <td>휴대폰 번호: </td>
                     <td><input type="text" name="member_phone" placeholder=" (-) 생략한 번호 입력"></td>
                  </tr>
                  
                  
               </table>
            </div>
            <button type="submit" class="sign-upBtn">
               <a href="">가입하기</a>
            </button>
       </form>
      </div>

      <div id=right-sidebar> <!--오른쪽 사이드 레이아웃-->

      </div>
   </div>
</body>
</html>