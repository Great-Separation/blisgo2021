<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>분리수GO!</title>
    <meta name="theme-color" content="#ffffff">
    <meta name="twitter:image" content="https://blisgov2.bss.design/assets/img/favicon/favicon512x512.png">
    <meta name="twitter:description" content="분리배출 도우미">
    <meta name="twitter:title" content="BlisGO">
    <meta property="og:type" content="website">
    <meta name="description" content="분리배출 도우미">
    <meta name="twitter:card" content="summary_large_image">
    <meta property="og:image" content="https://blisgov2.bss.design/assets/img/favicon/favicon512x512.png">
    <link rel="apple-touch-icon" type="image/png" sizes="180x180" href="../resource/assets/img/favicon/favicon180x180.png">
    <link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicon/favicon16x16.png">
    <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicon/favicon32x32.png">
    <link rel="icon" type="image/png" sizes="180x180" href="assets/img/favicon/favicon180x180.png">
    <link rel="icon" type="image/png" sizes="192x192" href="assets/img/favicon/favicon192x192.png">
    <link rel="icon" type="image/png" sizes="512x512" href="assets/img/favicon/favicon512x512.png">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.0.2/dist/united/bootstrap.min.css">
    <link rel="manifest" href="manifest.json">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@400;700&amp;display=swap">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/flick/jquery-ui.css">
    <link rel="stylesheet" href="assets/css/image-slider.css">
    <link rel="stylesheet" href="assets/css/style.css">
<link rel="manifest" href="/manifest.json">
</head>

<body oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
	<script type="text/javascript"> 
    	var check=${check};
		var message = "${msg}";
		if(check==2)
		alert(message);
	</script>
    <header id="header" style="background-image: url(https://source.unsplash.com/1920x1920/daily?nature,water)center / cover no-repeat);background-position: center;background-size: cover;">
        <div class="container-fluid d-flex justify-content-center align-items-center d-flex align-items-center" id="highlight-index">
            <div class="row" style="width: 90vw;">
                <div class="col text-center text-white">
                    <h1>분리수GO!</h1>
                    <p class="lead">분리배출을 더욱 편리하게!</p>
                    <div class="row">
                        <div class="col">
                            <div class="card m-auto" style="max-width:850px">
                                <div class="card-body" style="padding: 4px;">
                                    <form class="d-flex align-items-center ui-filterable" autocomplete="off" action=""><input class="form-control form-control-sm form-control-borderless p-1" type="search" id="autocomplete" placeholder="Search topics or keywords" name="searchWaste" minlength="1" required="" style="padding: 0px;border-style: none;" autocomplete="off"><button class="btn btn-success" type="submit">GO!</button>
                                        <div></div>
                                    </form><script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav class="navbar navbar-light navbar-expand-lg fixed-top bg-white shadow-sm justify-content-between" id="transmenu">
            <div class="container"><a class="navbar-brand logo" id="navbar-brand" href="/">분리수GO!</a><button data-bs-toggle="collapse" class="navbar-toggler collapsed mr-auto p-0" data-bs-target="#navbar-collapse" id="navbar-toggle"><span class="visually-hidden">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbar-collapse">
                    <div class="dropdown d-lg-none navbar-left" id="usericon-mobile"><a aria-expanded="false" data-bs-toggle="dropdown" class="text-decoration-none text-reset">
                            <div class="container">
                                <hr id="usericon-mobile-hr-top">
                                <div class="row">
                                    <div class="col d-flex justify-content-start align-items-center p-0"><img class="img-fluid rounded-circle" src="https://i.pravatar.cc/200" width="40px" height="40px" alt="프로필이미지"><span>옥재욱님</span></div>
                                    <div class="col d-flex justify-content-end align-items-center"><span class="user-points"><i class="fas fa-coins user-points-coin"></i>10000</span></div>
                                </div>
                                <hr id="usericon-mobile-hr-bottom">
                            </div>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end"><a class="dropdown-item" href="/qrlogin">QR생성</a><a class="dropdown-item" href="/mypage">마이페이지</a><a class="dropdown-item" href="/mypage">로그아웃</a></div>
                    </div>
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item dropdown" id="service-list"><a class="dropdown-toggle nav-link" aria-expanded="false" data-bs-toggle="dropdown" href="#">검수목록</a>
                            <div class="dropdown-menu">
                                <h6 class="dropdown-header">회원</h6><a class="dropdown-item" href="/mypage">마이페이지(검수용)</a><a class="dropdown-item" href="/register" title="사용자 계정을 추가합니다">회원가입(검수용)</a><a class="dropdown-item" href="/login">로그인(검수용)</a><a class="dropdown-item" href="/qrlogin">QR로그인(검수용)</a><a class="dropdown-item" href="/verify">인증(검수용)</a>
                                <div class="dropdown-divider"></div>
                                <h6 class="dropdown-header">사전</h6><a class="dropdown-item" href="/dictionary">사전(검수용)</a><a class="dropdown-item" href="/product">사전내용(검수용)</a>
                                <div class="dropdown-divider"></div>
                                <h6 class="dropdown-header">게시판</h6><a class="dropdown-item" href="/community">커뮤니티(검수용)</a><a class="dropdown-item" href="/content">글내용(검수용)</a><a class="dropdown-item" href="/write">글쓰기(검수용)</a>
                                <div class="dropdown-divider"></div>
                                <h6 class="dropdown-header">부가</h6><a class="dropdown-item" href="/faq">FAQ(검수용)</a><a class="dropdown-item" href="/errorHandler">오류페이지(검수용)</a><a class="dropdown-item" href="/introduce">소개(검수용)</a>
                            </div>
                        </li>
                        <li class="nav-item" id="encyclopedia"><a class="nav-link" data-bs-toggle="tooltip" data-bss-tooltip="" data-bs-placement="bottom" href="/dictionary" title="분리배출 사전입니다">사전</a></li>
                        <li class="nav-item" id="community"><a class="nav-link" data-bs-toggle="tooltip" data-bss-tooltip="" data-bs-placement="bottom" href="/community" title="자유롭게 글을 작성할 수 있습니다">게시판</a></li>
                        <li class="nav-item" id="login"><a class="nav-link" data-bs-toggle="tooltip" data-bss-tooltip="" data-bs-placement="bottom" href="/login" title="회원이용시 다양한 혜택을 이용할 수 있습니다">로그인</a></li>
                    </ul>
                    <div class="dropstart d-none d-lg-block navbar-right" id="usericon-desktop"><a aria-expanded="false" data-bs-toggle="dropdown" class="text-decoration-none text-reset"><img class="img-fluid rounded-circle" id="usericon-desktop-image" src="https://i.pravatar.cc/200" width="40px" height="40px" alt="프로필이미지"></a>
                        <div class="dropdown-menu">
                            <h6 class="dropdown-header">옥재욱님<span class="float-end user-points"><i class="fas fa-coins user-points-coin"></i>10000</span></h6><a class="dropdown-item" href="/qrlogin">QR생성</a><a class="dropdown-item" href="/mypage">마이페이지조회/수정</a><a class="dropdown-item" href="#">로그아웃</a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </header>
    <main class="pt-2 pb-2" style="height: 93.5vh;">
        <section class="justify-content-center align-items-center">
            <div class="container container text-center my-3 pt-2 p-0" id="recent-waste">
                <article>
                    <div class="intro">
                        <h2 class="text-center">최근 등록된 폐기물</h2>
                    </div>
                    <div class="carousel slide carousel-dark" data-bs-ride="carousel" id="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active p-2">
                                <div class="row">
                                    <div class="col-6 col-lg-3 spacer-slider">
                                        <figure class="figure"><a href="/product"><img class="img-fluid" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_2324808/23248083407.20200623235150.jpg?type=f640" loading="lazy" alt="사전 이미지" width="640px" height="640px"></a>
                                            <figcaption class="figure-caption">헬멧</figcaption>
                                        </figure>
                                    </div>
                                    <div class="col-6 col-lg-3 spacer-slider">
                                        <figure class="figure"><a href="/product"><img class="img-fluid" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_1226839/12268397055.20170915173215.jpg?type=f640" loading="lazy" alt="사전 이미지" width="640px" height="640px"></a>
                                            <figcaption class="figure-caption">치약용기</figcaption>
                                        </figure>
                                    </div>
                                    <div class="col-6 col-lg-3 spacer-slider">
                                        <figure class="figure"><a href="/product"><img class="img-fluid" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_2579926/25799266307.20210130165913.jpg?type=f640" loading="lazy" alt="사전 이미지" width="640px" height="640px"></a>
                                            <figcaption class="figure-caption">진열대</figcaption>
                                        </figure>
                                    </div>
                                    <div class="col-6 col-lg-3 spacer-slider">
                                        <figure class="figure"><a href="/product"><img class="img-fluid" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_2308499/23084992490.20200609114121.jpg?type=f640" loading="lazy" alt="사전 이미지" width="640px" height="640px"></a>
                                            <figcaption class="figure-caption">정수기</figcaption>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item p-2">
                                <div class="row">
                                    <div class="col-6 col-lg-3 spacer-slider">
                                        <figure class="figure"><a href="/product"><img class="img-fluid" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_8583382/8583382533.20200709094708.jpg?type=f640" loading="lazy" alt="물품"></a>
                                            <figcaption class="figure-caption">전지</figcaption>
                                        </figure>
                                    </div>
                                    <div class="col-6 col-lg-3 spacer-slider">
                                        <figure class="figure"><a href="/product"><img class="img-fluid" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_2446543/24465434523.20201016140333.jpg?type=f640" loading="lazy" alt="물품"></a>
                                            <figcaption class="figure-caption">전기밥솔</figcaption>
                                        </figure>
                                    </div>
                                    <div class="col-6 col-lg-3 spacer-slider">
                                        <figure class="figure"><a href="/product"><img class="img-fluid" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_1091883/10918830271.20170113170904.jpg?type=f640" loading="lazy" alt="물품"></a>
                                            <figcaption class="figure-caption">인형류</figcaption>
                                        </figure>
                                    </div>
                                    <div class="col-6 col-lg-3 spacer-slider">
                                        <figure class="figure"><a href="/product"><img class="img-fluid" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_2771374/27713742522.20210625111150.jpg?type=f640" loading="lazy" alt="물품"></a>
                                            <figcaption class="figure-caption">요가매트</figcaption>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item p-2">
                                <div class="row">
                                    <div class="col-6 col-lg-3 spacer-slider">
                                        <figure class="figure"><a href="/product"><img class="img-fluid" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_1516434/15164349963.20181010233952.jpg?type=f640" loading="lazy"></a>
                                            <figcaption class="figure-caption">액자</figcaption>
                                        </figure>
                                    </div>
                                    <div class="col-6 col-lg-3 spacer-slider">
                                        <figure class="figure"><a href="/product"><img class="img-fluid" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_7872712/7872712963.20140925112335.jpg?type=f640" loading="lazy"></a>
                                            <figcaption class="figure-caption">스피커</figcaption>
                                        </figure>
                                    </div>
                                    <div class="col-6 col-lg-3 spacer-slider">
                                        <figure class="figure"><a href="/product"><img class="img-fluid" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_2703799/27037999040.20210505173823.jpg?type=f640" loading="lazy"></a>
                                            <figcaption class="figure-caption">숯</figcaption>
                                        </figure>
                                    </div>
                                    <div class="col-6 col-lg-3 spacer-slider">
                                        <figure class="figure"><a href="/product"><img class="img-fluid" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_2794420/27944208728.20210710224045.jpg?type=f640" loading="lazy"></a>
                                            <figcaption class="figure-caption">성냥</figcaption>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div><a class="carousel-control-prev" href="#carousel" role="button" data-bs-slide="prev"><span class="carousel-control-prev-icon"></span></a><a class="carousel-control-next" href="#carousel" role="button" data-bs-slide="next"><span class="carousel-control-next-icon"></span></a></div>
                    </div>
                </article>
            </div>
        </section>
    </main>
    <footer class="d-none d-lg-block p-4" id="footer">
        <section>
            <div class="row">
                <div class="col text-center"><a class="btn btn-outline-light btn-floating m-1" href="#" role="button"><i class="fab fa-facebook-f"></i></a><a class="btn btn-outline-light btn-floating m-1" href="#" role="button"><i class="fab fa-twitter"></i></a><a class="btn btn-outline-light btn-floating m-1" href="#" role="button"><i class="fab fa-google"></i></a><a class="btn btn-outline-light btn-floating m-1" href="#" role="button"><i class="fab fa-instagram"></i></a><a class="btn btn-outline-light btn-floating m-1" href="#" role="button"><i class="fab fa-github"></i></a></div>
            </div>
            <div class="row text-center p-2">
                <div class="col align-self-center">
                    <p id="copyright" class="copyright text-light m-0">Team&nbsp;Hanok. 분리수GO! Project © 2021</p>
                </div>
            </div>
        </section>
    </footer><script>
if('serviceWorker' in navigator) {
  navigator.serviceWorker
           .register('/service-worker.js', { scope: '/' })
           .then(function() { console.log("Service Worker Registered"); });
}
</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="assets/js/service-worker.js"></script>
    <script src="assets/js/wasteList.js"></script>
</body>

</html>