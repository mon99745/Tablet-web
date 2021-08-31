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
                <button type="button" id="logo">
                    <a href="index.jsp">Danta</a>
                </button>
            
                 </div>
                 
            <div class=left-list> <!--=왼쪽 사이드 메뉴 리스트-->
                    <ul>
                        <li>
                            <button type="button" id=sidebar onclick="location.href='login.jsp'">
                              로그인
                            </button>    
                        <li>
                            <button type="button" id="sidebar" onclick="location.href='basket/basketList.jsp'">
                                장바구니
                            </button>
                        <%-- <div class="modal">
                            <div class="modal-content">
                                <span class="close" id=baguni_close>&times;</span>
                                <p>장바구니 Modal</p>
                            </div>
                        </div> --%>
                        </li>
                    	<li>
							<button type="button" id="sidebar" onclick="location.href='chat.jsp'">
								채팅
							</button>
						</li>
						<li>
							<button type="button" id="sidebar" onclick="location.href='songRequest.jsp'">
								노래 신청
							</button>
						</li>
                        <li>
                            <button type="button" id="sidebar" onclick="location.href='roulette.jsp'">
								룰렛
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
                    </ul>
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
                    <form action ="./basket/basketAction.jsp" method = "get">
                    <ul>
                        <li><button type="img" name ="food" value="곱도리탕"><img class="food" src ="image/곱도리탕.jpeg"></button><a>곱도리탕<br>15900원</a></li>
                        <li><button type="img" name ="food" value="곱창묵은지전골"><img class="food" src ="image/곱창묵은지전골.jpeg"></button><a>곱창묵은지전골<br>15900원</a></li>
                        <li><button type="img" name ="food" value="나가사키탕"><img class="food" src ="image/나가사키탕.jpeg"></button><a>나가사키탕<br>15900원</a></li>
                        <li><button type="img" name ="food" value="밀푀유나베"><img class="food" src ="image/밀푀유나베.jpeg"></button><a>밀푀유나베<br>15900원</a></li>
                        <li><button type="img" name ="food" value="새우탕"><img class="food" src ="image/새우탕.jpeg"></button><a>새우탕<br>15900원</a></li>
                        <li><button type="img" name ="food" value="소불고기전골"><img class="food" src ="image/소불고기전골.jpeg"></button><a>소불고기전골<br>15900원</a></li>
                        <li><button type="img" name ="food" value="어묵탕"><img class="food" src ="image/어묵탕.jpeg"></button><a>어묵탕<br>15900원</a></li>
                        <li><button type="img" name ="food" value="제주화산전골"><img class="food" src ="image/제주화산전골.jpeg"></button><a>제주화산전골<br>15900원</a></li>
                        <li><button type="img" name ="food" value="차돌박이 짬뽕탕"><img class="food" src ="image/차돌박이 짬뽕탕.jpeg"></button><a>차돌박이 짬뽕탕<br>15900원</a></li>
                        <li><button type="img" name ="food" value="차돌박이김치찌개"><img class="food" src ="image/차돌박이김치찌개.jpeg"></button><a>차돌박이김치찌개<br>15900원</a></li>
                        <li><button type="img" name ="food" value="크림짬뽕"><img class="food" src ="image/크림짬뽕.jpeg"></button><a>크림짬뽕<br>15900원</a></li>
                      
                      
                    </ul>
                    </form>
                </div>
                <div id="stir-fry" class="tabimage" style= "overflow-y: scroll">
                    <h2>볶으면 뭔들...</h2>
                    <form action ="./basket/basketAction.jsp" method = "get">
                    <ul>
                        <li><button type="img" name ="food" value="해물볶음우동"><img class="food" src ="image/해물볶음우동.jpeg"></button><a>해물볶음우동<br>15900원</a></li>
                        <li><button type="img" name ="food" value="쭈꾸미볶음"><img class="food" src ="image/쭈꾸미볶음.jpeg"></button><a>쭈꾸미볶음<br>15900원</a></li>
                        <li><button type="img" name ="food" value="차돌박이 숙주볶음"><img class="food" src ="image/차돌박이 숙주볶음.jpeg"></button><a>차돌박이 숙주볶음<br>15900원</a></li>
                        <li><button type="img" name ="food" value="매콤무뼈닭발"><img class="food" src ="image/매콤무뼈닭발.jpeg"></button><a>매콤무뼈닭발<br>15900원</a></li>
                        <li><button type="img" name ="food" value="우삼겹 숙주볶음"><img class="food" src ="image/우삼겹 숙주볶음.jpeg"></button><a>우삼겹 숙주볶음<br>15900원</a></li>
                       
                    </ul>
 					</form>
                </div>
                <div id="delicacy" class="tabimage" style= "overflow-y: scroll">
                    <h2>별미</h2>
                    <form action ="./basket/basketAction.jsp" method = "get">
                    <ul>
                        <li><button type="img" name ="food" value="신당동 명량떡볶이"><img class="food" src ="image/신당동 명량떡볶이.jpeg"></button><a>신당동 명량떡볶이<br>15900원</a></li>
                        <li><button type="img" name ="food" value="차돌냉채"><img class="food" src ="image/차돌냉채.jpeg"></button><a>차돌냉채<br>15900원</a></li>
                        <li><button type="img" name ="food" value="국물 닭발"><img class="food" src ="image/국물 닭발.jpeg"></button><a>국물 닭발<br>15900원</a></li>
                        <li><button type="img" name ="food" value="종로 육회 한 쌈"><img class="food" src ="image/종로 육회 한 쌈.jpeg"></button><a>종로 육회 한 쌈<br>15900원</a></li>
                        <li><button type="img" name ="food" value="담양숯불갈비"><img class="food" src ="image/담양숯불갈비.jpeg"></button><a>담양숯불갈비<br>15900원</a></li>
                        <li><button type="img" name ="food" value="감바스"><img class="food" src ="image/감바스.jpeg"></button><a>감바스<br>15900원</a></li>
                        <li><button type="img" name ="food" value="차돌박이 두부김치"><img class="food" src ="image/차돌박이 두부김치.jpeg"></button><a>차돌박이 두부김치<br>15900원</a></li>
                       
				
                    </ul>
                     </form>
                </div>
                <div id="salad" class="tabimage" style= "overflow-y: scroll">
                    <h2>샐러드</h2>
                    <form action ="./basket/basketAction.jsp" method = "get">
                    <ul>
                        <li><button type="img" name ="food" value="차돌박이 부추샐러드"><img class="food" src ="image/차돌박이 부추샐러드.jpeg"></button><a>차돌박이 부추샐러드<br>15900원</a></li>
                        <li><button type="img" name ="food" value="과일샐러드"><img class="food" src ="image/과일샐러드.jpeg"></button><a>과일샐러드<br>15900원</a></li>
                        <li><button type="img" name ="food" value="생 연어 샐러드"><img class="food" src ="image/생 연어 샐러드.jpeg"></button><a>생 연어 샐러드<br>15900원</a></li>
                        <li><button type="img" name ="food" value="케이준 샐러드"><img class="food" src ="image/케이준 샐러드.jpeg"></button><a>케이준 샐러드<br>15900원</a></li>
                        
                </ul>
                 </form>
                </div>
                <div id="soda" class="tabimage">
                    <h2>톡 쏘는 음료!</h2>
                    <form action ="./basket/basketAction.jsp" method = "get">
                    <ul>
                        <li><button type="img" name ="food" value="코카콜라"><img class="food" src ="image/코카콜라.jpeg"></button><a>코카콜라<br>2000원</a></li>
                        <li><button type="img" name ="food" value="환타오렌지"><img class="food" src ="image/환타오렌지.jpeg"></button><a>환타오렌지<br>2000원</a></li>
                        <li><button type="img" name ="food" value="사이다"><img class="food" src ="image/사이다.jpeg"></button><a>사이다<br>2000원</a></li>
                    </ul>
                </div>
          
                <div id="alcohol" class="tabimage" style= "overflow-y: scroll">
                    <h2>술이들어간다 쭉쭉~</h2>
                    <form action ="./basket/basketAction.jsp" method = "get">
                    <ul> <li><button type="img" name ="food" value="진로"><img class="food" src ="image/진로.gif"></button><a>진로<br>4500원</a></li>
                        <li><button type="img" name ="food" value="처음처럼"><img class="food" src ="image/처음처럼.gif"></button><a>처음처럼<br>4500원</a></li>
                        <li><button type="img" name ="food" value="참이슬"><img class="food" src ="image/참이슬.gif"></button><a>참이슬<br>4500원</a></li>
                        <li><button type="img" name ="food" value="테라"><img class="food" src ="image/테라.gif"></button><a>테라<br>4500원</a></li>
                        <li><button type="img" name ="food" value="살얼음맥주"><img class="food" src ="image/살얼음맥주.gif"></button><a>살얼음맥주 500ml<br>3000원</a></li>
                        <li><button type="img" name ="food" value="살얼음맥주"><img class="food" src ="image/살얼음맥주.gif"></button><a>살얼음맥주 330ml<br>2500원</a></li>
                       

                    </ul>
                     </form>
                </div>
          
          
        </div>
    </div>
    <div id=right-sidebar> <!--오른쪽 사이드 레이아웃-->
            
        <div id=right-list >
            <ul>
                <li id=tableNumber>
                    <p>테이블명</p>
                    <p>DEMO</p>    
                </li>
            
            </ul>
        </div>
    
    </div>
    <script src=js/modal.js></script>
 
</body>
</html>