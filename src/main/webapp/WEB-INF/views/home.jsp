<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>woosulcho</title>
<link href="https://cdn.jsdelivr.net/npm/swiper@11.0.4/swiper-bundle.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css" />
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@11.0.4/swiper-bundle.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="/wsch/resources/css/home.css"/>
</head>
<body>
<div class="container">
 	<section class="content1">	
 	<div id="video_area">
          <video src="resources/img/etc/showreel.mp4" id="background_video" preload="auto" autoplay="autoplay" loop="loop" muted="muted" volume="0"></video>
      </div>
       <div class="wrap"></div>
	<!--	<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<img
						src="https://www.kbiznews.co.kr/news/photo/202206/91325_59102_556.jpg">
						<div class="woosulcho">WooSulCho</div>
				</div>
				<div class="swiper-slide">
					<img
						src="https://www.kbiznews.co.kr/news/photo/202206/91325_59102_556.jpg">
						<div class="woosulcho">WooSulCho</div>
				</div>
				<div class="swiper-slide">
					<img
						src="https://blog.kakaocdn.net/dn/bA6J3e/btqVkLuJd7C/VGPpUXWhf09fg2QNsuU9g1/img.png">
						<div class="woosulcho">WooSulCho</div>
				</div>
				<div class="swiper-slide">
					<img
						src="https://www.seoulwire.com/news/photo/202111/454688_655150_2038.png">
						<div class="woosulcho">WooSulCho</div>
				</div>
				<div class="swiper-slide">
					<img
						src="https://img.freepik.com/premium-photo/boozy-makgeolli-korean-rice-wine-generative-ai_786587-12725.jpg">
						<div class="woosulcho">WooSulCho</div>
				</div>
			</div>
		</div>-->
		
	</section>
	<section class="wsch-intro">
			<div class="recomend-text1">나에게 잘 맞는 </div><br/>
			<div class="recomend-text2">우리술</div>
			<button type="button" class="testbtn" onclick="">테스트 시작하기</button>
			<img class="testimg" src="https://img.freepik.com/free-photo/milk-in-the-old-vintage-saucepan-over-the-old-wooden-table_23-2147872578.jpg?w=826&t=st=1701350242~exp=1701350842~hmac=f517fac88076085faeabb599e148abfbf01be1edfea853f0f5b9464840202e68" />
 	</section>
<section class="best-item" id="best-item">
<div class="best">Best</div>
 	 <div class="slide-container swiper">
 		<div class="slide-content">
 			<div class="card-wrapper swiper-wrapper">
 				<div class="card swiper-slide">
 					<div class="image-content">
 						<span class="overlay"></span>
 						<div class="card-image">
 							<img src="http://koreansool.com/bizdemo51809/component/board/board_16/u_image/6/822266612_EC9DBCED9288EC9588EB8F99EC868CECA3BC-40.jpg" class="card-img">
 						</div>
 					</div>
 					
 					<div class="card-content">
 						<h2 class="name">일품안동소주350-40% </h2>
 						<p class="description">안동의 맑고 깨끗한 물과 옥토에서 수확된 양질의 쌀을 원료로 빚은 순곡증류주입니다.깔끔한 뒷맛으로 젊은층..</p>
 					
 						<button class="button" onclick="">View detail</button>
 					</div>
 				</div>
 				<div class="card swiper-slide">
 					<div class="image-content">
 						<span class="overlay"></span>
 						
 						<div class="card-image">
 							<img src="http://koreansool.com/bizdemo51809/component/board/board_16/u_image/11/2029680230_EBAFBCEC868DECA3BCEC9588EB8F99EC868CECA3BC-EC9588EB8F99EC868CECA3BC600.jpg" class="card-img">
 						</div>
 					</div>
 					
 					<div class="card-content">
 						<h2 class="name">안동소주 </h2>
 						<p class="description">민속주 안동소주는 경북무형문화재 제12호 대한민국 식품명인 제20호인 조옥화 여사가 전래된 비법으로 빚어..</p>
 					
 						<button class="button" onclick="">View detail</button>
 					</div>
 				</div>
 				<div class="card swiper-slide">
 					<div class="image-content">
 						<span class="overlay"></span>
 						
 						<div class="card-image">
 							<img src="http://koreansool.com/bizdemo51809/component/board/board_16/u_image/9/770156006_EC88A0EC8398-EBAFB8EBA5B454.jpg" class="card-img">
 						</div>
 					</div>
 					
 					<div class="card-content">
 						<h2 class="name">미르54 </h2>
 						<p class="description">최고의 재료로 빚어 타 증류주가 따라올 수 없는 향기를 가지고 장기 숙성시켜 부드러운 맛이 일품인 프리미..</p>
 					
 						<button class="button" onclick="">View detail</button>
 					</div>
 				</div>
 				<div class="card swiper-slide">
 					<div class="image-content">
 						<span class="overlay"></span>
 						
 						<div class="card-image">
 							<img src="http://koreansool.com/bizdemo51809/component/board/board_21/u_image/10/1463026566_ED959CEC82B0EC868CEAB3A1ECA3BC-EBB688EC868CEAB3A1ECA3BC.jpg" class="card-img">
 						</div>
 					</div>
 					
 					<div class="card-content">
 						<h2 class="name">불소곡주 </h2>
 						<p class="description">불소곡주는 한산소곡주를 증류하여 만든 알코올 43%의 리큐르입니다. 2014년 해외 주류품평회 몽드셀렉..</p>
 					
 						<button class="button" onclick="">View detail</button>
 					</div>
 				</div>
 				<div class="card swiper-slide">
 					<div class="image-content">
 						<span class="overlay"></span>
 						
 						<div class="card-image">
 							<img src="http://koreansool.com/bizdemo51809/component/board/board_21/u_image/6/202076025_EB8C80EB868DEBB094EC9DB4EC98A4EC9881EB868DECA1B0ED95A9EBB295EC9DB8-EC82B0EC9691EC82B0EC82BCED98B8EB8BB4.jpg" class="card-img">
 						</div>
 					</div>
 					
 					<div class="card-content">
 						<h2 class="name">산양산삼 호담 </h2>
 						<p class="description">국내산 5년근 산양산삼 한뿌리 통째로 담아 제조한 술입니다.</p>
 					
 						<button class="button" onclick="">View detail</button>
 					</div>
 				</div>
 				<div class="card swiper-slide">
 					<div class="image-content">
 						<span class="overlay"></span>
 						
 						<div class="card-image">
 							<img src="http://koreansool.com/bizdemo51809/component/board/board_22/u_image/8/1518007706_EBA9B4ECB29CEB9190EAB2ACECA3BC.jpg" class="card-img">
 						</div>
 					</div>
 					
 					<div class="card-content">
 						<h2 class="name">면천두견주 </h2>
 						<p class="description">진달래 꽃잎과 찹쌀로 담그는 향기나는 민속주 두견주는 예로부터 '백약지장(百藥之長)'이라 일컬어오고 ..</p>
 					
 						<button class="button" onclick="">View detail</button>
 					</div>
 				</div>
 				<div class="card swiper-slide">
 					<div class="image-content">
 						<span class="overlay"></span>
 						
 						<div class="card-image">
 							<img src="http://koreansool.com/bizdemo51809/component/board/board_22/u_image/4/2101240720_ECA09CECA3BCEC8398-EC98A4EBA994EAB8B0EC88A0.jpg" class="card-img">
 						</div>
 					</div>
 					
 					<div class="card-content">
 						<h2 class="name">오메기 375ml </h2>
 						<p class="description">오메기술' 이란 오메기떡(차조로 만든 제주 전통떡)을 사용하여 누룩(당화제)과 함께 발효시켜..</p>
 					
 						<button class="button" onclick="">View detail</button>
 					</div>
 				</div>
 				<div class="card swiper-slide">
 					<div class="image-content">
 						<span class="overlay"></span>
 						
 						<div class="card-image">
 							<img src="http://koreansool.com/bizdemo51809/component/board/board_23/u_image/10/624179740_EC8B9CED8AB8EB9FACEC8AA4-ED98BCEB9494ECA3BC.jpg" class="card-img">
 						</div>
 					</div>
 					
 					<div class="card-content">
 						<h2 class="name">혼디주 </h2>
 						<p class="description">'혼디'는 제주어로 '함께','같이'라는 의미로 청정 제주에서 정성스레 키운 향긋한 감귤이 함께 어우러..</p>
 					
 						<button class="button" onclick="">View detail</button>
 					</div>
 				</div>
 				<div class="card swiper-slide">
 					<div class="image-content">
 						<span class="overlay"></span>
 						
 						<div class="card-image">
 							<img src="http://koreansool.com/bizdemo51809/component/board/board_23/u_image/1/1929184596_ED998DECA780EC9B90-ED8F89ECB0BDEBA8B8EBA3A8ECA3BC400.jpg" class="card-img">
 						</div>
 					</div>
 					
 					<div class="card-content">
 						<h2 class="name">평창머루주400ml </h2>
 						<p class="description">해발 700m의 청정지역 평창지역에서 채취한 산머루로 빚은 평창 머루주는 삼국시대로부터 전해오는 전..</p>
 					
 						<button class="button" onclick="">View detail</button>
 					</div>
 				</div>
 				<div class="card swiper-slide">
 					<div class="image-content">
 						<span class="overlay"></span>
 						
 						<div class="card-image">
 							<img src="http://koreansool.com/bizdemo51809/component/board/board_24/u_image/4/788492721_EC8694EB9E98EC9B90-EC84A4EAB68118.jpg" class="card-img">
 						</div>
 					</div>
 					
 					<div class="card-content">
 						<h2 class="name">설궁 </h2>
 						<p class="description">강원도의 자연산송이버섯, 자연산 토종벌꿀, 산양산삼 등 희귀한 천연 원재료를 침출 숙성시킨 후 프랑..</p>
 					
 						<button class="button" onclick="">View detail</button>
 					</div>
 				</div>
 			</div>
 		</div>	
  		<div class="swiper-button-next swiper-navBtn"></div>
 		<div class="swiper-button-prev swiper-navBtn"></div>
 		<div class="swiper-pagination"></div>
 	</div> 
</section>
<div class="height"></div>
<section class="event-list">
	<h1 class="event">전통주 행사일정</h1>
	<div class="event-news1"></div><div class="event-news2"></div>
</section>
<section class="map">
	<h1 class="map-text1">우리의 술을</h1><br/>
	<h1 class="map-text2">만나보세요</h1>
	<button class="map-button1" onclick="">전통 주점</button>
	<button class="map-button2" onclick="">판매장</button>
	<button class="map-button3" onclick="">양조장</button>
</section>
<section class="test">
<h1>test</h1>
</section>
</div>
<!--
 <script>
    var swiper1 = new Swiper('.swiper-container', {
            slidesPerView: 1,
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
            loop: true,
            speed: 2800,
            autoplay: {
                delay: 4500,
                disableOnInteraction: false,
            },
            on: {
                slideChangeTransitionStart: function () {
                    $(".woosulcho").fadeOut(300); // 텍스트 숨기기
                },
                slideChangeTransitionEnd: function () {
                    $(".woosulcho").fadeIn(300); // 텍스트 나타내기
                }
            },
        });
</script>   -->
<script>
var swiper2 = new Swiper(".slide-content", {
    slidesPerView: 3,
    spaceBetween: 25,
    loop: true,
    centeredSlides: true,
    fade: true,
    grabCursor: true,
    pagination: {
        el: ".swiper-pagination",
        clickable: true,
        dynamicBullets: true,
    },
    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    breakpoints: {
        0: {
            slidesPerView: 1,
        },
        520: {
            slidesPerView: 2,
        },
        950: {
            slidesPerView: 3,
        },
    },
});
</script>