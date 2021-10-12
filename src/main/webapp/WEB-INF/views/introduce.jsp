<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko" oncontextmenu="return false" ondragstart="return false"
	onselectstart="return false">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>소개 - BlisGO</title>
<meta name="theme-color" content="#ffffff">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="twitter:image"
	content="https://blisgov2.bss.design/assets/img/favicon/favicon512x512.png">
<meta name="twitter:description" content="분리배출 도우미">
<meta name="twitter:title" content="BlisGO">
<meta property="og:type" content="website">
<meta name="description" content="분리배출 도우미">
<meta name="twitter:card" content="summary_large_image">
<meta property="og:image"
	content="https://blisgov2.bss.design/assets/img/favicon/favicon512x512.png">
<link rel="apple-touch-icon" type="image/png" sizes="180x180"
	href="assets/img/favicon/favicon180x180.png">
<link rel="icon" type="image/png" sizes="16x16"
	href="assets/img/favicon/favicon16x16.png">
<link rel="icon" type="image/png" sizes="32x32"
	href="assets/img/favicon/favicon32x32.png">
<link rel="icon" type="image/png" sizes="180x180"
	href="assets/img/favicon/favicon180x180.png">
<link rel="icon" type="image/png" sizes="192x192"
	href="assets/img/favicon/favicon192x192.png">
<link rel="icon" type="image/png" sizes="512x512"
	href="assets/img/favicon/favicon512x512.png">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootswatch@5.1.0/dist/united/bootstrap.min.css">
<link rel="manifest" href="manifest.json">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@400;700&amp;display=swap">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="manifest" href="/manifest.json">
</head>

<body>
	<header id="header">
		<div id="nav-white-space"></div>
		<div class="container-fluid text-white d-none d-lg-block"
			id="highlight">
			<div class="row">
				<div class="col text-center">
					<h1>
						소개<br>
					</h1>
				</div>
			</div>
		</div><jsp:include page="navbar.jsp">
			<jsp:param name="name" value="value" />
		</jsp:include>
	</header>
	<main class="pt-2 pb-2">
		<div class="container p-2" id="features">
			<div class="row m-0">
				<div class="col">
					<h2 class="text-center intro">계기</h2>
					<p class="text-center intro">코로나 시대를 맞이하여 배달 사용이 급증하였고 그로 인해
						나오는 쓰레기 또한 증가하였습니다. 이렇게 늘어난 쓰레기의 분리수거의 중요성은 더욱 높아졌고 보다 쉽게 분리수거하는
						방법을 제공하기 위해 작품을 만들게되었습니다.</p>
				</div>
			</div>
			<div class="row m-0">
				<div class="col-sm-2 col-md-2 align-self-center">
					<i class="fas fa-leaf icon" id="feature-icon"></i>
				</div>
				<div class="col-sm-10 col-md-4 item">
					<h3 class="text-primary name">
						Eco system<br>
					</h3>
					<p class="text-secondary description">모든 종류의 해양 동물들과 심지어 인간까지도
						플라스틱 쓰레기의 영향을 받고 있는 상황에서, 우리는 무언가 자연을 위해 해야합니다. 그동안 해수욕장 대청소를 진행해
						온 비영리단체들이 많았지만, 이것은 충분하지 않습니다. 사람들은 재활용을 올바르게 시작하고 재활용 이면의 중요성을
						이해할 필요가 있습니다. 올바른 용기에 담긴 판지, 플라스틱 등을 분류하는 것은 중요하며, 동시에 여러분이 먹는
						해산물과 플라스틱 쓰레기로 인해 죽을 수 있는 모든 동물들에 대해 생각해 보세요. 비록 재활용이 바다의 모든 플라스틱을
						마법처럼 없애지는 못하지만, 이는 환경을 위한 중요한 첫 단추입니다.</p>
				</div>
				<div class="col-sm-2 col-md-2 align-self-center">
					<i class="fas fa-recycle icon" id="feature-icon"></i>
				</div>
				<div class="col-sm-10 col-md-4 item">
					<h3 class="text-primary name">
						Recycle<br>
					</h3>
					<p class="text-secondary description">우리나라 재활용 쓰레기 분리수거 참여율은 세계
						2위입니다. 그럼에도 2017년 환경부는 ‘제5차(2016~2017년) 전국폐기물 통계조사’에 따르면 재활용이 가능한
						자원 중 69% 이상이 분리배출 되었다고 발표하였습니다. 시민들의 부주의한 쓰레기 분류로 인해 쓰레기 처리업체들은
						인력을 따로 고용하여 음식물 제거, 분리수거 정리 등으로 막대한 손실을 입고 있으며 이로 인해 적자를 피하지 못한 분리
						업체는 불법 투기를 자행하여 악취, 자연환경 파괴 등으로 2차적 피해를 만들어내고 있습니다. 저희가 원하는 기대효과는
						실질 재활용률을 올려 추가적인 인력 낭비, 비용 낭비를 줄이는 것입니다. 재활용이 가능한 4개 생활폐기물(플라스틱,
						금속, 유리, 종이)의 재활용률은 1%만 높여도 연간 639억 원이 절약이 가능하며, 재활용가능자원의 매립이 이루어지지
						않아 매립시설의 수명이 연장이 되고 매립, 소각물질의 최소화로 환경오염을 예방할 수 있습니다.</p>
				</div>

			</div>
			<div class="row m-0">
				<div class="col">
					<h2 class="text-center intro">기능</h2>
					<p class="text-center intro">우리 한옥팀이 만든 ‘분리수Go’는 사용자에게 친숙한
						인터페이스로 사람들이 올바른 분리배출을 익히고 그에 따른 보상을 받아 환경운동에 자유롭게 동참하는 시스템을 만들기로
						하였습니다. ‘분리수Go’는 머신러닝방식을 사용한 분리수거 문제점에 대한 해결책입니다. 지금부터 저희가 제공하는 기능에
						대해 소개해드리도록 하겠습니다.</p>
				</div>
			</div>
			<div class="row m-0">
				<div class="col-sm-2 col-md-2 float-end align-self-center">
					<i class="fas fa-qrcode icon" id="feature-icon"></i>
				</div>
				<div class="col-sm-10 col-md-4 item">
					<h3 class="text-primary name">
						QR based<br>
					</h3>
					<p class="text-secondary description">‘분리수Go’는 회원, 비회원으로 접근할 수
						있으며 로그인은 QR 인증을 통해 이용할 수 있습니다.</p>
				</div>
				<div class="col-sm-2 col-md-2 align-self-center">
					<i class="far fa-money-bill-alt icon" id="feature-icon"></i>
				</div>
				<div class="col-sm-10 col-md-4 item">
					<h3 class="text-primary name">Cost Effective</h3>
					<p class="text-secondary description">카메라 앱이 분리수거를 할 대상을 인식을 해서
						처리방안을 제안해주며 모바일 앱을 이용해 보상을 제공합니다. 이는 포인트로 제공이 됩니다. 또한, ‘도감’이라는
						재미있는 구현으로 분리수거한 대상을 모아볼 수 있습니다.</p>
				</div>
			</div>
			<div class="row m-0">
				<div class="col-sm-2 col-md-2 align-self-center">
					<i class="fas fa-camera icon" id="feature-icon"></i>
				</div>
				<div class="col-sm-10 col-md-4 item">
					<h3 class="text-primary name">
						Simple use case<br>
					</h3>
					<p class="text-secondary description">그저 분리수거 처리장 앞에 ‘분리수Go’기기만
						따로 설치하면 사용이 가능합니다. 쓰레기 분리수거법을 자동인식하여 안내받으시고 그 안내로 포인트를 적립하셔서 이용하실수
						있습니다.</p>
				</div>
				<div class="col-sm-2 col-md-2 align-self-center">
					<i class="fas fa-database icon" id="feature-icon"></i>
				</div>
				<div class="col-sm-10 col-md-4 item">
					<h3 class="text-primary name">DB based</h3>
					<p class="text-secondary description">JawsDB(MySQL)을 이용하여 기기
						웹페이지와 클라이언트 웹페이지가 같은 DB를 이용하여 데이터를 주고 받을 수 있습니다. 단순한 SQL문으로 효과적인
						데이터 관리 또한 가능합니다.</p>
				</div>
			</div>
		</div>
		<div class="container p-2" id="chart">
			<div class="row m-0">
				<div class="col">
					<h2 class="text-center">적절한 이름죰(뭐넣지이)</h2>
					<p class="text-center">Nunc luctus in metus eget fringilla.
						Aliquam sed justo ligula. Vestibulum nibh erat, pellentesque ut
						laoreet vitae.</p>
				</div>
			</div>
			<div class="row m-0">
				<div class="col">
					<div>
						<canvas
							data-bss-chart="{&quot;type&quot;:&quot;line&quot;,&quot;data&quot;:{&quot;labels&quot;:[&quot;January&quot;,&quot;February&quot;,&quot;March&quot;,&quot;April&quot;,&quot;May&quot;,&quot;June&quot;],&quot;datasets&quot;:[{&quot;label&quot;:&quot;Revenue&quot;,&quot;backgroundColor&quot;:&quot;#7CD2B3&quot;,&quot;borderColor&quot;:&quot;#7CD2B3&quot;,&quot;data&quot;:[&quot;4500&quot;,&quot;5300&quot;,&quot;6250&quot;,&quot;7800&quot;,&quot;9800&quot;,&quot;15000&quot;],&quot;fill&quot;:true}]},&quot;options&quot;:{&quot;maintainAspectRatio&quot;:true,&quot;legend&quot;:{&quot;display&quot;:false,&quot;labels&quot;:{&quot;bold&quot;:false,&quot;italic&quot;:false,&quot;fontStyle&quot;:&quot;normal&quot;}},&quot;title&quot;:{&quot;fontStyle&quot;:&quot;normal&quot;,&quot;display&quot;:false,&quot;text&quot;:&quot;&quot;},&quot;scales&quot;:{&quot;xAxes&quot;:[{&quot;ticks&quot;:{&quot;fontStyle&quot;:&quot;normal&quot;}}],&quot;yAxes&quot;:[{&quot;ticks&quot;:{&quot;fontStyle&quot;:&quot;normal&quot;}}]}}}"></canvas>
					</div>
				</div>
			</div>
		</div>
		<div class="container p-2">
			<div class="row m-0">
				<div class="col">
					<h2 class="text-center">만든 사람들</h2>
					<p class="text-center">동양미래대학교 컴퓨터 소프트웨어과 한옥팀</p>
				</div>
			</div>
			<div class="card-group m-0">
				<div class="card">
					<img class="img-fluid card-img-top w-100 d-block"
						src="https://avatars.githubusercontent.com/u/26517061?v=4"
						loading="lazy" width="640px" height="640px" alt="만든 사람들">
					<div class="card-body">
						<h4 class="card-title">옥재욱</h4>
						<p class="card-text">데이터셋 관리, 트레이닝 학습 및 인식률 개선 하드웨어 장비 유지보수</p>
						<a class="btn btn-light" role="button"
							href="https://github.com/laigasus"><i class="fab fa-github"></i></a>
					</div>
				</div>
				<div class="card">
					<img class="img-fluid card-img-top w-100 d-block"
						src="https://avatars.githubusercontent.com/u/82010586?v=4"
						loading="lazy" width="640px" height="640px" alt="만든 사람들">
					<div class="card-body">
						<h4 class="card-title">김민균</h4>
						<p class="card-text">QR 카메라 인식 웹 UI 개발, 디자인 라즈베리 파이 웹 연동</p>
						<a class="btn btn-light" role="button"
							href="https://github.com/min-gyun-98"><i
							class="fab fa-github"></i></a>
					</div>
				</div>
				<div class="card">
					<img class="img-fluid card-img-top w-100 d-block"
						src="https://avatars.githubusercontent.com/u/26201797?v=4"
						loading="lazy" width="640px" height="640px" alt="만든 사람들">
					<div class="card-body">
						<h4 class="card-title">김민수</h4>
						<p class="card-text">웹 UI 및 UX 개발 웹 서비스 구축(백엔드 포함) WebRTC(웹앱
							카메라 연동)</p>
						<a class="btn btn-light" role="button"
							href="https://github.com/rlaalstn0107"><i
							class="fab fa-github"></i></a>
					</div>
				</div>
				<div class="card">
					<img class="img-fluid card-img-top w-100 d-block"
						src="https://avatars.githubusercontent.com/u/81316381?v=4"
						loading="lazy" width="640px" height="640px" alt="만든 사람들">
					<div class="card-body">
						<h4 class="card-title">오민영</h4>
						<p class="card-text">Yolov5 물체 인식 기술 카메라 모듈 인식에 관한 웹 화면 DB 튜닝</p>
						<a class="btn btn-light" role="button"
							href="https://github.com/ominyoung"><i class="fab fa-github"></i></a>
					</div>
				</div>
			</div>
		</div>
		<div class="container p-2" id="map">
			<article>
				<section class="map-clean">
					<div class="container">
						<div class="intro">
							<h2 class="text-center">Location</h2>
							<p class="text-center">Nunc luctus in metus eget fringilla.
								Aliquam sed justo ligula. Vestibulum nibh erat, pellentesque ut
								laoreet vitae.</p>
						</div>
					</div>
					<iframe allowfullscreen="" frameborder="0" loading="lazy"
						src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA8LykylI5ehO5qC-VFkcBYtpG8jHKRsOY&amp;q=%EB%8F%99%EC%96%91%EB%AF%B8%EB%9E%98%EB%8C%80%ED%95%99%EA%B5%90&amp;zoom=15"
						width="100%" height="450"></iframe>
				</section>
			</article>
		</div>
	</main><jsp:include page="footer.jsp">
		<jsp:param name="name" value="value" />
	</jsp:include>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
	<script src="assets/js/bs-init.js"></script>
</body>

</html>