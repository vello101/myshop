<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" />
<!-- cdnjs.com에서 font-awesome 라이브러리 검색 후 링크 복붙. -->
<link href="<c:url value='/resources/css/reset.css' />" rel="stylesheet" type="text/css" />

<style>
	#header { box-shadow:0px 3px 3px #ddd; }
	#header .row1 { padding:0 50px; height:63px; background:rgb(140, 0, 0); color:#fff; display:flex; justify-content:space-between; align-items:center; }
	#header .row1 .col1 a { margin-right:15px }
	#header .row1 .col2 { position:relative; border:0px solid #fff; height:35px; width:370px; overflow:hidden; }
	#header .row1 .col2 p { line-height:35px; text-align:center;  }
	#header .row1 .col3 a { margin-left:15px; vertical-align:middle }	
	#header .row1 .col3 a:nth-child(1) { width:26px; height:26px; border-radius:50%; background:#fff; color:rgb(140, 0, 0); position:relative; border:1px solid #fff; overflow:hidden; }
	#header .row1 .col3 a:nth-child(1) i { position:absolute; bottom:-1px; left:50%; margin-left:-9px; font-size:18px;  }
	#header .row2 { padding:30px 50px; display:flex; justify-content:space-between; align-items:center; }
	#header .row2 div {border:0px solid #000;}
	#header .row2 .col2 form { width:500px; border:2px solid #eb1414; border-radius:3px; display:flex; }
	#header .row2 .col2 form input { flex:1; border:none; padding:0 2em; outline:none;}
	#header .row2 .col2 form button { width:46px; height:39px; background:#eb1414; color:#fff; }
	#header .row2 .col3 { color:#eb1414; font-size:20px; }
	#header .row2 .col3 a { margin-left:15px; }
	#header .row2 .col3 a span { font-size:14px; width:20px; height:20px; border-radius:50%; background:#eb1414; color:#fff; display:inline-block; text-align:center; vertical-align:middle; transform:translateY(-2px) }	
	#header .row3 { }
	#header .row3 ul.depth1 { width:976px; background:#f9f0ec; display:flex; justify-content:space-around; margin:0 auto; padding:15px 0; border-radius:50px; color:#696969; font-weight:500; }
	#header .row3 ul.depth1 > li {transition:all 0.3s;}
	#header .row3 ul.depth1 > li:hover {color:#000;}
</style>
<jsp:include page="../common/common.jsp" />

<header id="header">
	<div class="row1">
		<div class="col1">
			<a href="#">About Us</a> 
			<a href="#"><strong>고객센터</strong><span style="font-size: 14px">(주문.결제.배송)</span></a>
		</div>
		<div class="col2">
			<p><a href="#">모바일 앱으로 편리하게 주문하세요. Download</a></p>
			<p><a href="#">주문, 결제, 배송과 관련해 궁금하시다면? Click here</a></p>
		</div>
		<div class="col3">
			<a href="#"><i class="fa-solid fa-user"></i></a>
			<!-- font-awesome에서 아이콘 링크 붙여넣기 -->
			<a href="로그인">로그인</a>
		</div>
	</div>
	<div class="row2">
		<div class="col1">
			<h1>
				<a href="<c:url value='/'/>">
					<img src="<c:url value='/resources/image/Bitchan.png' />" alt="빛찬" />
				</a>
			</h1>
		</div>
		<div class="col2">
			<form action="<c:url value='/goods/searchGoods'/>" method="post">
				<input type="text" placeholder="상품을 입력하세요"/>
				<button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
				<!-- font-awesome에서 아이콘 링크 붙여넣기 -->
			</form>
		</div>
		<div class="col3">
			<a href="좋아요"><i class="fa-solid fa-heart"></i></a>
			<a href="장바구니">
				<i class="fa-solid fa-cart-shopping"></i>
				<span>0</span>
			</a>
		</div>
	</div>
	<div class="row3">
		<nav id="nav">
			<ul class="depth1">
				<li><a href="#">밀키트</a></li>
				<li><a href="#">채소</a></li>
				<li><a href="#">밑반찬</a></li>
				<li><a href="#">도시락</a></li>
				<li><a href="#">일품요리</a></li>
				<li><a href="#">국,찌개</a></li>
				<li><a href="#">튀김,전</a></li>
				<li><a href="#">상품권</a></li>
			</ul>
		</nav>
	</div>
</header>

<script>
/* 스크립트 태그는 문서 맨 아래 위치하는 것이 좋음  */
	function animateParagraphs() {
        jQ(".row1 .col2 p").eq(0).stop()								
        .animate({ marginTop: '-35px' }, 1000, function() {
            jQ(this).appendTo(".row1 .col2").css({ marginTop: '0px' });
        });
      	//eq(0)=첫번째 p 지목. 
        //$('선택자').appendTo('요소') : 선택자를 요소의 마지막 자식으로 이동
    }
    // 2초 간격으로 애니메이션 무한 반복
    setInterval(animateParagraphs, 2000);
    //setInterval 안에 함수 호출 시 괄호 붙이면 안됨
	
	
</script>
