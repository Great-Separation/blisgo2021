<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>마이페이지 - BlisGO</title>
    <meta name="theme-color" content="#ffffff">
    <meta name="twitter:image" content="https://blisgov2.bss.design/assets/img/favicon/favicon512x512.png">
    <meta name="twitter:description" content="분리배출 도우미">
    <meta name="twitter:title" content="BlisGO">
    <meta property="og:type" content="website">
    <meta name="description" content="분리배출 도우미">
    <meta name="twitter:card" content="summary_large_image">
    <meta property="og:image" content="https://blisgov2.bss.design/assets/img/favicon/favicon512x512.png">
    <link rel="apple-touch-icon" type="image/png" sizes="180x180" href="assets/img/favicon/favicon180x180.png">
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
    <link rel="stylesheet" href="assets/css/image-slider.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/table-scrollable-layout.css">
<link rel="manifest" href="/manifest.json">
</head>

<body>
    <header id="header">
        <div id="nav-white-space"></div>
        <div class="container-fluid text-white d-none d-lg-block" id="highlight">
            <div class="row">
                <div class="col text-center">
                    <h1>마이페이지<br></h1>
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
                        <li class="nav-item" id="community"><a class="nav-link active" data-bs-toggle="tooltip" data-bss-tooltip="" data-bs-placement="bottom" href="/community" title="자유롭게 글을 작성할 수 있습니다">게시판</a></li>
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
    <main class="pt-2 pb-2">
        <div class="container p-0" id="mypage">
            <article>
                <div>
                    <ul class="nav nav-tabs mb-2" role="tablist" id="myTab">
                        <li class="nav-item" role="presentation"><a class="nav-link active" role="tab" data-bs-toggle="tab" id="description-tab" href="#account">회원정보 조회/수정</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" role="tab" data-bs-toggle="tab" id="reviews-tab" href="#dogam">도감</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" role="tab" data-bs-toggle="tab" id="specifications-tabs" href="#leaderboard">리더보드</a></li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active description" role="tabpanel" id="account">
                            <div class="row mb-3 m-0">
                                <div class="col-lg-4">
                                    <div class="card shadow-sm mb-3">
                                        <div class="card-body text-center">
                                            <div class="row">
                                                <div class="col"><img class="rounded-circle mb-3 mt-4" src="https://i.pravatar.cc/200" width="160px" height="160px" loading="lazy" alt="프로필이미지">
                                                    <p class="lead">옥재욱</p>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col"><button class="btn btn-primary" type="button">이미지 변경</button></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card shadow-sm mb-4">
                                        <div class="card-header py-2">
                                            <p class="lead text-primary m-0 fw-bold">활동통계</p>
                                        </div>
                                        <div class="card-body">
                                            <div id="activity-chart"><canvas data-bss-chart="{&quot;type&quot;:&quot;bar&quot;,&quot;data&quot;:{&quot;labels&quot;:[&quot;일&quot;,&quot;월&quot;,&quot;화&quot;,&quot;수&quot;,&quot;목&quot;,&quot;금&quot;,&quot;토&quot;],&quot;datasets&quot;:[{&quot;label&quot;:&quot;searchCount&quot;,&quot;backgroundColor&quot;:&quot;#47d6c1&quot;,&quot;borderColor&quot;:&quot;#47d6c1&quot;,&quot;borderWidth&quot;:&quot;&quot;,&quot;data&quot;:[&quot;0&quot;,&quot;0&quot;,&quot;0&quot;,&quot;3&quot;,&quot;0&quot;,&quot;0&quot;,&quot;1&quot;]}]},&quot;options&quot;:{&quot;maintainAspectRatio&quot;:true,&quot;legend&quot;:{&quot;display&quot;:false,&quot;labels&quot;:{&quot;bold&quot;:false,&quot;italic&quot;:false,&quot;fontStyle&quot;:&quot;normal&quot;},&quot;position&quot;:&quot;top&quot;},&quot;title&quot;:{&quot;fontStyle&quot;:&quot;normal&quot;,&quot;position&quot;:&quot;top&quot;},&quot;scales&quot;:{&quot;xAxes&quot;:[{&quot;gridLines&quot;:{&quot;drawBorder&quot;:true,&quot;drawTicks&quot;:true,&quot;borderDash&quot;:[&quot;1&quot;],&quot;zeroLineBorderDash&quot;:[&quot;1&quot;],&quot;drawOnChartArea&quot;:true},&quot;ticks&quot;:{&quot;beginAtZero&quot;:true}}],&quot;yAxes&quot;:[{&quot;gridLines&quot;:{&quot;drawBorder&quot;:true,&quot;drawTicks&quot;:true,&quot;borderDash&quot;:[&quot;1&quot;],&quot;zeroLineBorderDash&quot;:[&quot;1&quot;],&quot;drawOnChartArea&quot;:true},&quot;ticks&quot;:{&quot;beginAtZero&quot;:true}}]}}}"></canvas></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-8">
                                    <div class="card shadow-sm mb-4">
                                        <div class="card-header d-none d-lg-block py-2">
                                            <p class="lead text-primary m-0 fw-bold">사용자 설정</p>
                                        </div>
                                        <div class="card-body">
                                            <form>
                                                <div class="row">
                                                    <div class="col py-1"><label class="form-label" for="username"><strong>사용자 이름</strong></label><input class="form-control" type="text" id="username" placeholder="옥재욱" name="nick" required="" minlength="2" maxlength="8"></div>
                                                </div>
                                                <div class="row">
                                                    <div class="col py-1"><label class="form-label" for="email"><strong>이메일</strong></label><input class="form-control" type="email" id="email" placeholder="okjaeook98@gmail.com" name="email" disabled=""></div>
                                                </div>
                                                <div class="row">
                                                    <div class="col py-1"><button class="btn btn-primary" type="submit">저장하기</button></div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="card shadow-sm mb-4">
                                        <div class="card-header d-none d-lg-block py-2">
                                            <p class="lead text-primary m-0 fw-bold">비밀번호 설정</p>
                                        </div>
                                        <div class="card-body">
                                            <form>
                                                <div class="row">
                                                    <div class="col-auto flex-fill py-1"><label class="form-label"><strong>이전 비밀번호</strong></label><input class="form-control" type="password"></div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-auto flex-fill py-1"><label class="form-label"><strong>새 비밀번호</strong></label><input class="form-control" type="password"></div>
                                                    <div class="col-auto flex-fill py-1"><label class="form-label"><strong>새 비밀번호 확인</strong><br></label><input class="form-control" type="password"></div>
                                                </div>
                                                <div class="row">
                                                    <div class="col py-1">
                                                        <div class="input-group"><button class="btn btn-primary" type="submit">저장하기</button>
                                                            <div class="alert alert-warning flex-fill input-group-text m-0 p-1" role="alert"><span style="font-size: 14px;"><i class="fas fa-exclamation-triangle"></i>비밀번호가 틀립니다</span></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" role="tabpanel" id="dogam">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-3 col-xxl-2 p-2">
                                            <figure class="figure"><a href="product.html"><img class="img-fluid" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_2483836/24838366019.20201114183914.jpg?type=f640" title="이미지 이름 혹은 설명" loading="lazy" width="640px" height="640px" alt="사전 이미지"></a>
                                                <figcaption class="figure-caption">그릇</figcaption>
                                            </figure>
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-3 col-xxl-2 p-2">
                                            <figure class="figure"><a href="product.html"><img class="img-fluid" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_2034702/20347023958.20210517144254.jpg?type=f640" title="이미지 이름 혹은 설명" loading="lazy" width="640px" height="640px" alt="사전 이미지"></a>
                                                <figcaption class="figure-caption">런닝머신</figcaption>
                                            </figure>
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-3 col-xxl-2 p-2">
                                            <figure class="figure"><a href="product.html"><img class="img-fluid" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_1461653/14616534957.20180623175323.jpg?type=f640" title="이미지 이름 혹은 설명" loading="lazy" width="640px" height="640px" alt="사전 이미지"></a>
                                                <figcaption class="figure-caption">나무 조각, 가지, 줄기</figcaption>
                                            </figure>
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-3 col-xxl-2 p-2">
                                            <figure class="figure"><a href="product.html"><img class="img-fluid" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_2742909/27429098399.20210604004021.jpg?type=f640" title="이미지 이름 혹은 설명" loading="lazy" width="640px" height="640px" alt="사전 이미지"></a>
                                                <figcaption class="figure-caption">냄비뚜껑(강화유리)</figcaption>
                                            </figure>
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-3 col-xxl-2 p-2">
                                            <figure class="figure"><a href="product.html"><img class="img-fluid" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_2520129/25201298488.20201212225921.jpg?type=f640" title="이미지 이름 혹은 설명" loading="lazy" width="640px" height="640px" alt="사전 이미지"></a>
                                                <figcaption class="figure-caption">면도칼</figcaption>
                                            </figure>
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-3 col-xxl-2 p-2">
                                            <figure class="figure"><a href="product.html"><img class="img-fluid" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_2618534/26185343849.20210228172138.jpg?type=f640" title="이미지 이름 혹은 설명" loading="lazy" width="640px" height="640px" alt="사전 이미지"></a>
                                                <figcaption class="figure-caption">바둑판</figcaption>
                                            </figure>
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-3 col-xxl-2 p-2">
                                            <figure class="figure"><a href="product.html"><img class="img-fluid" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_2569930/25699304522.20210316103708.jpg?type=f640" title="이미지 이름 혹은 설명" loading="lazy" width="640px" height="640px" alt="사전 이미지"></a>
                                                <figcaption class="figure-caption">복사기</figcaption>
                                            </figure>
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-3 col-xxl-2 p-2">
                                            <figure class="figure"><a href="product.html"><img class="img-fluid" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_1772518/17725189210.20190226150216.jpg?type=f640" title="이미지 이름 혹은 설명" loading="lazy" width="640px" height="640px" alt="사전 이미지"></a>
                                                <figcaption class="figure-caption">볼풋공</figcaption>
                                            </figure>
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-3 col-xxl-2 p-2">
                                            <figure class="figure"><a href="product.html"><img class="img-fluid" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_2503852/25038525522.20201130085638.jpg?type=f640" title="이미지 이름 혹은 설명" loading="lazy" width="640px" height="640px" alt="사전 이미지"></a>
                                                <figcaption class="figure-caption">세탁기</figcaption>
                                            </figure>
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-3 col-xxl-2 p-2">
                                            <figure class="figure"><a href="product.html"><img class="img-fluid" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_2401360/24013605996.20200902215930.jpg?type=f640" title="이미지 이름 혹은 설명" loading="lazy" width="640px" height="640px" alt="사전 이미지"></a>
                                                <figcaption class="figure-caption">유리병뚜껑(철, 알루미늄)</figcaption>
                                            </figure>
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-3 col-xxl-2 p-2">
                                            <figure class="figure"><a href="product.html"><img class="img-fluid" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_2308499/23084992490.20200609114121.jpg?type=f640" title="이미지 이름 혹은 설명" loading="lazy" width="640px" height="640px" alt="사전 이미지"></a>
                                                <figcaption class="figure-caption">정수기</figcaption>
                                            </figure>
                                        </div>
                                        <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-3 col-xxl-2 p-2">
                                            <figure class="figure"><a href="product.html"><img class="img-fluid" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_2537221/25372219749.20201225214656.jpg?type=f640" title="이미지 이름 혹은 설명" loading="lazy" width="640px" height="640px" alt="사전 이미지"></a>
                                                <figcaption class="figure-caption">콘텍트렌즈</figcaption>
                                            </figure>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body text-center p-2">
                                    <div class="bg-light bg-gradient shadow-sm"><button class="btn btn-link w-100 text-decoration-none text-secondary" type="button"><span>더보기</span><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" viewBox="0 0 16 16" fill="currentColor" class="bi bi-chevron-down">
                                                <path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"></path>
                                            </svg></button></div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade specifications" role="tabpanel" id="leaderboard">
                            <div class="row m-0">
                                <div class="col-lg-6 p-1">
                                    <div class="card shadow-sm mx-auto bg-white" id="ranking">
                                        <div class="card-header py-2">
                                            <p class="lead text-primary m-0 fw-bold">순위</p>
                                        </div>
                                        <div class="card-body p-0">
                                            <div class="row m-0">
                                                <div class="col-3 text-center align-self-end p-1">
                                                    <h2><i class="fas fa-trophy leaderboard-icon-second"></i></h2><img class="rounded-circle img-fluid leaderboard-user-img" src="https://i.pravatar.cc/200?img=2" width="150px" height="150px" alt="프로필이미지">
                                                    <p class="lead m-0">텼쟨준탔<br></p><span>100000</span>
                                                </div>
                                                <div class="col-6 text-center align-self-center p-1">
                                                    <h1><i class="fas fa-trophy leaderboard-icon-first"></i></h1><img class="rounded-circle img-fluid leaderboard-user-img" src="https://i.pravatar.cc/200?img=1" width="200px" height="200px" alt="프로필이미지">
                                                    <p class="lead m-0">신걺혐됨<br></p><span>100000</span>
                                                </div>
                                                <div class="col-3 text-center align-self-end p-1">
                                                    <h3><i class="fas fa-trophy leaderboard-icon-third"></i></h3><img class="rounded-circle img-fluid" id="leaderboard-user-img" src="https://i.pravatar.cc/200?img=3" width="100px" height="100px" alt="프로필이미지">
                                                    <p class="lead m-0">펏얜<br></p><span>100000</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body p-0">
                                            <div class="table-responsive scrollable-table">
                                                <table class="table table-hover table-sm table-fixed">
                                                    <tbody>
                                                        <tr>
                                                            <td class="col-1" scope="row">
                                                                <div class="row m-0">
                                                                    <div class="col-auto text-start align-self-center"><span>4</span></div>
                                                                    <div class="col-auto flex-fill align-self-center p-0"><img class="rounded-circle img-fluid leaderboard-user-img" src="https://i.pravatar.cc/200?img=4" width="40px" height="40px" alt="프로필이미지"><span>폄쐈퉁<br></span></div>
                                                                    <div class="col-auto text-end align-self-center ms-auto"><span>1000000</span></div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="col-1" scope="row">
                                                                <div class="row m-0">
                                                                    <div class="col-auto text-start align-self-center"><span>5</span></div>
                                                                    <div class="col-auto flex-fill align-self-center p-0"><img class="rounded-circle img-fluid leaderboard-user-img" src="https://i.pravatar.cc/200?img=5" width="40px" height="40px" alt="프로필이미지"><span>빳겁쟁<br></span></div>
                                                                    <div class="col-auto text-end align-self-center ms-auto"><span>1000000</span></div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="col-1" scope="row">
                                                                <div class="row m-0">
                                                                    <div class="col-auto text-start align-self-center"><span>6</span></div>
                                                                    <div class="col-auto flex-fill align-self-center p-0"><img class="rounded-circle img-fluid leaderboard-user-img" src="https://i.pravatar.cc/200?img=6" width="40px" height="40px" alt="프로필이미지"><span>턺짖슷<br></span></div>
                                                                    <div class="col-auto text-end align-self-center ms-auto"><span>1000000</span></div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="col-1" scope="row">
                                                                <div class="row m-0">
                                                                    <div class="col-auto text-start align-self-center"><span>7</span></div>
                                                                    <div class="col-auto flex-fill align-self-center p-0"><img class="rounded-circle img-fluid leaderboard-user-img" src="https://i.pravatar.cc/200?img=7" width="40px" height="40px" alt="프로필이미지"><span>덜슭룽<br></span></div>
                                                                    <div class="col-auto text-end align-self-center ms-auto"><span>1000000</span></div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="col-1" scope="row">
                                                                <div class="row m-0">
                                                                    <div class="col-auto text-start align-self-center"><span>8</span></div>
                                                                    <div class="col-auto flex-fill align-self-center p-0"><img class="rounded-circle img-fluid leaderboard-user-img" src="https://i.pravatar.cc/200?img=8" width="40px" height="40px" alt="프로필이미지"><span>켠삿딸<br></span></div>
                                                                    <div class="col-auto text-end align-self-center ms-auto"><span>1000000</span></div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="col-1" scope="row">
                                                                <div class="row m-0">
                                                                    <div class="col-auto text-start align-self-center"><span>9</span></div>
                                                                    <div class="col-auto flex-fill align-self-center p-0"><img class="rounded-circle img-fluid leaderboard-user-img" src="https://i.pravatar.cc/200?img=9" width="40px" height="40px" alt="프로필이미지"><span>쌔뇌닐<br></span></div>
                                                                    <div class="col-auto text-end align-self-center ms-auto"><span>1000000</span></div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="col-1" scope="row">
                                                                <div class="row m-0">
                                                                    <div class="col-auto text-start align-self-center"><span>10</span></div>
                                                                    <div class="col-auto flex-fill align-self-center p-0"><img class="rounded-circle img-fluid leaderboard-user-img" src="https://i.pravatar.cc/200?img=10" width="40px" height="40px" alt="프로필이미지"><span>들컹쇄<br></span></div>
                                                                    <div class="col-auto text-end align-self-center ms-auto"><span>1000000</span></div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="col-1" scope="row">
                                                                <div class="row m-0">
                                                                    <div class="col-auto text-start align-self-center"><span>11</span></div>
                                                                    <div class="col-auto flex-fill align-self-center p-0"><img class="rounded-circle img-fluid leaderboard-user-img" src="https://i.pravatar.cc/200?img=11" width="40px" height="40px" alt="프로필이미지"><span>좡텄스<br></span></div>
                                                                    <div class="col-auto text-end align-self-center ms-auto"><span>1000000</span></div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                    <tfoot>
                                                        <tr class="table-light">
                                                            <td class="col-1" scope="row">
                                                                <div class="row m-0">
                                                                    <div class="col-auto text-end align-self-center"><span>55</span></div>
                                                                    <div class="col-auto flex-fill align-self-center p-0"><img class="rounded-circle img-fluid leaderboard-user-img" src="https://i.pravatar.cc/200" width="40px" height="40px" alt="프로필이미지"><span>옥재욱</span></div>
                                                                    <div class="col-auto text-end align-self-center ms-auto"><span><i class="fas fa-coins user-points-coin"></i>1000000</span></div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </tfoot>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 p-1">
                                    <div class="card shadow-sm mx-auto bg-white" id="achievement">
                                        <div class="card-header shadow-sm py-2">
                                            <p class="lead text-primary m-0 fw-bold">업적</p>
                                        </div>
                                        <div class="card-body p-0">
                                            <div class="table-responsive scrollable-table">
                                                <table class="table table-hover table-sm table-fixed">
                                                    <tbody style="height:73vh">
                                                        <tr>
                                                            <td>
                                                                <div class="row m-0">
                                                                    <div class="col-3 text-center align-self-center"><img class="img-fluid" src="assets/img/achievements/001-medal-47.png"></div>
                                                                    <div class="col-9 align-self-center">
                                                                        <h2>Heading</h2>
                                                                        <p>Paragraph</p>
                                                                        <div class="progress">
                                                                            <div class="progress-bar bg-success" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">80%</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="row m-0">
                                                                    <div class="col-3 text-center align-self-center"><img class="img-fluid" src="assets/img/achievements/002-medal-46.png"></div>
                                                                    <div class="col-9 align-self-center">
                                                                        <h2>Heading</h2>
                                                                        <p>Paragraph</p>
                                                                        <div class="progress">
                                                                            <div class="progress-bar bg-success" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">60%</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="row m-0">
                                                                    <div class="col-3 text-center align-self-center"><img class="img-fluid" src="assets/img/achievements/003-medal-45.png"></div>
                                                                    <div class="col-9 align-self-center">
                                                                        <h2>Heading</h2>
                                                                        <p>Paragraph</p>
                                                                        <div class="progress">
                                                                            <div class="progress-bar bg-success" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%;">20%</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="row m-0">
                                                                    <div class="col-3 text-center align-self-center"><img class="img-fluid" src="assets/img/achievements/004-trophy-21.png"></div>
                                                                    <div class="col-9 align-self-center">
                                                                        <h2>Heading</h2>
                                                                        <p>Paragraph</p>
                                                                        <div class="progress">
                                                                            <div class="progress-bar bg-success" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">100%</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="row m-0">
                                                                    <div class="col-3 text-center align-self-center"><img class="img-fluid" src="assets/img/achievements/005-trophy-20.png"></div>
                                                                    <div class="col-9 align-self-center">
                                                                        <h2>Heading</h2>
                                                                        <p>Paragraph</p>
                                                                        <div class="progress">
                                                                            <div class="progress-bar bg-success" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">80%</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="row m-0">
                                                                    <div class="col-3 text-center align-self-center"><img class="img-fluid" src="assets/img/achievements/006-medal-44.png"></div>
                                                                    <div class="col-9 align-self-center">
                                                                        <h2>Heading</h2>
                                                                        <p>Paragraph</p>
                                                                        <div class="progress">
                                                                            <div class="progress-bar bg-success" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100" style="width: 15%;">15%</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
        </div>
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
  if ('serviceWorker' in navigator) {
    window.addEventListener('load', function() {
      navigator.serviceWorker.register('/service-worker.js');
    });
  }
</script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="assets/js/service-worker.js"></script>
</body>

</html>