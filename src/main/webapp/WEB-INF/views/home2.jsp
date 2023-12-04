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
	<section class="intro">
		<video src="resources/img/etc/showreel.mp4" muted autoplay loop></video>
		<div class="wrap"></div>
	</section>
	
<!--  	<section class="content1">	
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<img src="resources/img/wsch_intro.jpg">
					
						src="https://www.kbiznews.co.kr/news/photo/202206/91325_59102_556.jpg"
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
		</div>
	</section> -->
	
	<section class="content2" id="section2">
	<h1 class="title1">Introduce</h1>
	
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
<section class="content3" id="section3">
		<h1 class="title2">recommend</h1>
		<div class="minititle">WooSulCho</div><br/>
		<div class="submini">지금 나에게 어울리는 술은?</div>
		<button type="button" class="viewmore" onclick="">View More</button>
		<a href=""><img class="wsch" src="https://img.freepik.com/free-vector/hand-drawn-sake-illustration_23-2149636599.jpg?size=338&ext=jpg&ga=GA1.1.1826414947.1699833600&semt=sph" /></a>
</section>
<section class="content4">
<h1 class="title3">history</h1>
<h2>조상들이 즐겼던 우리의 술</h2><br/>
<p class="p1">잘익은 과실이 땅에 떨어져 자연 발효되어 알콜성분을 지닌 술이 된다는 사실로 미루어 술의 기원은 아득히 먼 옛날부터였던 것을 짐작할 수 있다.
문헌에 의하면 삼국시대 이전 마한 시대부터 한해의 풍성한 수확과 복을 기원하면 맑은 곡주를 빚어 조상께 먼저 바치고 춤과 노래와 술마시기를 즐겼다고 한다. 이러한 사실로 미루어 보아 우리나라에서도 농사를 시작하였을 때부터 술을 빚어 마셨으며 모든 행사에서 술이 애용된 것을 알 수 있다.
술의 기원은 명확하지 않으나 우리나라에서는 탁주, 약주, 소주 등 세종류의 술이 오래전부터 전해 내려왔고 그 제조방법으로 보아 탁주가 가장 오랜 역사를 가졌으며 탁주에서 재를 제거하여 청주(후에 약주라 칭함)가 되었고, 또 이를 증류하여 소주가 만들어졌다고 해석된다.
탁주는 일명 '막걸리'라 불려지며 이는 막 걸렀다고 하는데서 유래되었다고 한다. 약주는 탁주가 먼저 제조되면서 숙성이 거의 끝날쯤이면 술독 위에 맑게 뜨는 액체속에 '용수(싸리 나무로 만든것)'를 박아 맑은 액체만 떠내는 것이 약주(청주)의 상례이다.
약주란 말은 본래 중국에서 약으로 쓰이는 술이란 뜻이나 우리나라의 약주는 약용주라는 뜻은 아니다. 우리나라에서 약주라 불리우게 된 것은 약300여 년 전부터인데 이조시대학자 서유거란 사람이 좋은 술을 양조하였는데 그의 아호를 약봉이라 했으며, 그가 약현(현중구 중림동)에 살면서 제조하였다 하여 약주라 부르게 된것으로 전하여 지고 있다.</p>
<img src="http://koreansool.com/default/img/mobilen/images/sub3/sub31-01.png" class="img1"/>
<img src="http://koreansool.com/default/img/mobilen/images/sub3/sub31-02.png" class="img2"/>
<h3>향후 발전 방향</h3>
<p class="p2">우리나라에서 가장 전통적인 대중주라 할 수 있는 탁,약주가 보편화되지 못하고 한계상황에 처해 있는 것은 탁,약주제조업자의 영세성으로 시설투자 및 주질개선이 현실적으로 이루어지지 않고 있기 때문으로, 제조장의 대형화로 주질개선을 하여야 하고 수입주류에 대한 경쟁력을 제고하여야 한다.
장기간 탁주면허 동결로 인한 기존 도매업체들의 독점폐단을 해소하고 사양되고 있는 탁,약주 산업의 경쟁력을 높이기 위하여 1997. 12. 20. 도매면허를 개방하고 99.1.부터는 특정주류도매면허로 통합하였는바, 이는 행정규제를 철폐하고자 하는 정부시책에도 부합되는 것으로서 탁주제조자들은 도매면허 개방취지에 따라 유통구조를 개선하여 타 주류와의 경쟁력을 강화해 나가야 할 것이다.</p>
</section>
</div>

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
</script>   
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
