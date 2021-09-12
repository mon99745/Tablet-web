<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- 이걸 설마모를리가? 닥치고 주석작성 -->
<!-- CSS, JS 외부시트로 이동해서 작성  -->
<html>
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>단타포차에 오신걸 환영합니다.</title>
    <link rel="stylesheet" href="css/style.css">
    
</head>
<body>
    
    <div id=tablet> 
        <div id=left-sidebar> <!--왼쪽 사이드 레이아웃--> 
            <div class=logo href="index.jsp"> <!--단타포차 로고-->
<div class="neon">단타</div>
<div class="neon2">포차</div>
            </div>
            <div id=left-list> <!--=왼쪽 사이드 메뉴 리스트-->
                <nav id="side-menu">
                    <ul>
                        <li>
                            <button type="button" id="sidebar">
                                <a href="memberLogout.me">로그아웃</a>
                            </button>
                        </li>
                        <li>
                            <button type="button" id="sidebar" class="btn">
                                장바구니
                            </button>
                        <div class="modal">
                            <div class="modal-content">
                                <span class="close" id=baguni_close>&times;</span>
                                <p>장바구니 Modal</p>
                            </div>
                        </div>
                        </li>
                    	<li>
							<button type="button" id="sidebar">
								<a href="chat.jsp">채팅</a>
							</button>
						</li>
						<li>
							<button type="button" id="sidebar">
								<a href="chat.jsp">BGM 예약</a>
							</button>
						</li>
                        <li>
                            <button type="button" id="sidebar" class="btn">
                                호출
                            </button>
                            <div class="modal">
                                <div class="modal-call">
                                    <span id=call_close class="close">확인</span>
                                    <p>직원이 호출 되었습니다.</p>
                                </div>
                            </div>
                    
                        </li>
                        <li>
                        <button type="button" id="sidebar">
                            <a href="roulette.jsp">룰렛</a>
                        </button>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

        <div id=middle> <!--가운데 레이아웃-->
            <div id="tabMenu" style= "overflow-y:scroll"> 
            <!--상단 메뉴 리스트-->
                
                <input type="radio" id="tab1" name="tabs" checked>
                <label for="tab1">탕</label>
                <input type="radio" id="tab2" name="tabs">
                <label for="tab2">볶음</label>
                <input type="radio" id="tab3" name="tabs">
                <label for="tab3">별미</label>
                <input type="radio" id="tab4" name="tabs">
                <label for="tab4">샐러드</label>
                <input type="radio" id="tab5" name="tabs">
                <label for="tab5">음료</label>
                <input type="radio" id="tab6" name="tabs">
                <label for="tab6">주류</label>

                <!-- popup-->
                <div id="tang" class="tabimage" style= "overflow-y: scroll"> <!--메뉴 이미지-->
                    
                    <h2>보글보글 탕탕탕!</h2>
                    <ul>
                        <li><a heref="#"><img class="food" src="image/곱도리탕.jpeg"><p>곱도리탕<p>15900원</p></a></li>
                        <li><a heref="#"><img class="food" src="image/곱창묵은지전골.jpeg"><p>곱창 묵은지 전골<p>15900원</p></a></li>
                        <li><a heref="#"><img class="food" src="image/나가사키탕.jpeg"><p>나가사키 탕<p>15900원</p></a></li>
                        <li><a heref="#"><img class="food" src="image/밀푀유나베.jpeg"><p>밀푀유나베<p>15900원</p></a></li>
                        <li><a heref="#"><img class="food" src="image/새우탕.jpeg"><p>새우탕<p>15900원</p></a></li>
                        <li><a heref="#"><img class="food" src="image/소불고기전골.jpeg"><p>소불고기 전골<p>15900원</p></a></li>
                        <li><a heref="#"><img class="food" src="image/어묵탕.jpeg"><p>어묵탕<p>15900원</p></a></li>
                        <li><a heref="#"><img class="food" src="image/제주화산전골.jpeg"><p>제주화산 전골<p>15900원</p></a></li>
                        <li><a heref="#"><img class="food" src="image/차돌박이 짬뽕탕.jpeg"><p>차돌박이 짬뽕탕<p>15900원</p></a></li>
                        <li><a heref="#"><img class="food" src="image/차돌박이김치찌개.jpeg"><p>차돌박이 김치찌개<p>15900원</p></a></li>
                        <li><a heref="#"><img class="food" src="image/크림짬뽕.jpeg"><p>크림짬뽕<p>15900원</p></a></li>
                    </ul>
                </div>
                <div id="stir-fry" class="tabimage" style= "overflow-y: scroll">
                    <h2>볶으면 뭔들...</h2>
                    <ul>
                        <li><a heref="#"><img class="food" src="image/해물볶음우동.jpeg"><p>해물볶음우동<p>15900원</p></a></li>
                        <li><a heref="#"><img class="food" src="image/쭈꾸미볶음.jpeg"><p>쭈꾸미볶음<p>15900원</p></a></li> 
                        <li><a heref="#"><img class="food" src="image/차돌박이 숙주볶음.jpeg"><p>차돌박이 숙주볶음<p>15900원</p></a></li>
                        <li><a heref="#"><img class="food" src="image/매콤무뼈닭발.jpeg"><p>매콤 무뼈닭발<p>15900원</p></a></li>
                        <li><a heref="#"><img class="food" src="image/우삼겹 숙주볶음.jpeg"><p>우삼겹 숙주볶음<p>15900원</p></a></li>
                    </ul>

                </div>
                <div id="delicacy" class="tabimage" style= "overflow-y: scroll">
                    <h2>별미</h2>
                    <ul>
                    <li><a heref="#"><img class="food" src="image/신당동 명량떡볶이.jpeg"><p>신당동 명량떡볶이<p>8900원</p></a></li>
                    <li><a heref="#"><img class="food" src="image/차돌냉채.jpeg"><p>차돌냉채<p>8900원</p></a></li>
                    <li><a heref="#"><img class="food" src="image/국물 닭발.jpeg"><p>국물 닭발<p>8900원</p></a></li>
                    <li><a heref="#"><img class="food" src="image/종로 육회 한 쌈.jpeg"><p>종로 육회 한 쌈<p>8900원</p></a></li>
                    <li><a heref="#"><img class="food" src="image/담양숯불갈비.jpeg"><p>담양숯불갈비<p>8900원</p></a></li>
                    <li><a heref="#"><img class="food" src="image/감바스.jpeg"><p>감바스<p>8900원</p></a></li>
                    <li><a heref="#"><img class="food" src="image/차돌박이 두부김치.jpeg"><p>차돌박이 두부김치<p>8900원</p></a></li>

                    </ul>
                </div>
                <div id="salad" class="tabimage" style= "overflow-y: scroll">
                    <h2>샐러드</h2>
                    <ul>
                         <li><a heref="#"><img class="food" src="image/차돌박이 부추샐러드.jpeg"><p>차돌박이 부추샐러드<p>12000원</p></a></li>
                         <li><a heref="#"><img class="food" src="image/과일샐러드.jpeg"><p>과일샐러드<p>12000원</p></a></li>
                         <li><a heref="#"><img class="food" src="image/생 연어 샐러드.jpeg"><p>모듬과일<p>12000원</p></a></li>
                         <li><a heref="#"><img class="food" src="image/케이준 샐러드.jpeg"><p>모듬과일<p>12000원</p></a></li>
                </ul>
                </div>
                <div id="soda" class="tabimage">
                    <h2>톡 쏘는 음료!</h2>
                    <ul>
                        <li><a heref="#"><img class="food" src="image/코카콜라.jpeg"><p>코카콜라<p>2000원</p></a></li>
                        <li><a heref="#"><img class="food" src="image/환타오렌지.jpeg"><p>환타 오렌지<p>2000원</p></a></li>
                        <li><a heref="#"><img class="food" src="image/사이다.jpeg"><p>사이다<p>2000원</p></a></li>
                    </ul>
                </div>
          
                <div id="alcohol" class="tabimage" style= "overflow-y: scroll">
                    <h2>술이들어간다 쭉쭉~</h2>
                    <ul>
                    <li><a heref="#"><img class="food" src="image/진로.gif"><p>진로<p>4500원</p></li>
                    <li><a heref="#"><img class="food" src="image/처음처럼.gif"><p>처음처럼<p>4500원</p></a></li>
                    <li><a heref="#"><img class="food" src="image/참이슬.gif"><p>참이슬</p><p>4500원</p></a></li>
                    <li><a heref="#"><img class="food" src="image/테라.gif"><p>테라<p>4500원</p></a></li>
                    <li><a heref="#"><img class="food" src="image/살얼음맥주.gif"><p>살얼음맥주 500ml<p>4500원</p></a></li>
                    <li><a heref="#"><img class="food" src="image/살얼음맥주.gif"><p>살얼음맥주 330ml<p>4500원</p></a></li>

                    </ul>
                </div>
          
          
        </div>
        <div id=right-sidebar> <!--오른쪽 사이드 레이아웃-->
            
            <div id=right-list >
         
            </div>
        
        </div>
    </div>

    <script src=js/callpopup.js></script> 
    <script src=js/modal.js></script>
 
</body>
</html>