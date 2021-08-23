<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>상세정보 - BlisGO</title>
    <meta name="theme-color" content="#ffffff">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@5.1.0/dist/united/bootstrap.min.css">
    <link rel="manifest" href="manifest.json">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Ubuntu:wght@400;700&amp;display=swap">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.12.0/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/css/image-slider.css">
    <link rel="stylesheet" href="assets/css/style.css">
<link rel="manifest" href="/manifest.json">
</head>

<body>
    <header id="header">
        <div id="nav-white-space"></div>
        <div class="container-fluid text-white d-none d-lg-block" id="highlight">
            <div class="row">
                <div class="col text-center">
                    <h1>분리배출 사전<br></h1>
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
                        <div class="dropdown-menu dropdown-menu-end"><a class="dropdown-item" href="/qrlogin">QR생성</a><a class="dropdown-item" href="/mypage">마이페이지</a><a class="dropdown-item" href="/logout">로그아웃</a></div>
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
                            <h6 class="dropdown-header">옥재욱님<span class="float-end user-points"><i class="fas fa-coins user-points-coin"></i>10000</span></h6><a class="dropdown-item" href="/qrlogin">QR생성</a><a class="dropdown-item" href="/mypage">마이페이지조회/수정</a><a class="dropdown-item" href="/logout">로그아웃</a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </header>
    <main class="pt-2 pb-2">
        <section>
            <div class="container" id="category-product">
                <article id="info" class="pb-2">
                    <div class="row">
                        <div class="col-md-6 text-center"><img class="img-fluid shadow-sm bounce animated small-preview" src="https://shopping-phinf.pstatic.net/main_2483836/24838366019.20201114183914.jpg?type=f640" alt="사전 이미지" width="640px" height="640px"></div>
                        <div class="col-md-6 align-self-center">
                            <div class="row">
                                <div class="col-12 py-1">
                                    <ol class="breadcrumb mt-1 mb-1">
                                        <li class="breadcrumb-item"><a><span>가연성, 불연성 폐기물</span></a></li>
                                        <li class="breadcrumb-item"><a><span>그릇</span></a></li>
                                    </ol>
                                    <hr class="mt-1 mb-0">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col align-self-center py-1">
                                    <h1 class="m-0">그릇</h1>
                                </div>
                                <div class="col align-self-center py-1 text-end">
                                    <div class="btn-group" role="group" id="product-icon"><button class="btn btn-link" id="btn-toast" type="button" data-bs-target="#liveToast" data-bs-toggle="toast"><i class="fas fa-bookmark"></i></button><button class="btn btn-link" id="btn-share" type="button" data-bs-target="#modal-share" data-bs-toggle="modal"><i class="fas fa-share-alt"></i></button></div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-auto align-self-center py-1"><i class="fas fa-star" id="product-star"></i><span id="product-rating">7.7</span></div>
                                <div class="col align-self-center py-1"><i class="fas fa-book"></i><span>도감에 추가됨</span></div>
                            </div>
                            <div class="row">
                                <div class="col py-1"><span class="badge rounded-pill bg-light" id="product-badge"><i class="fas fa-hashtag"></i>(불연성)종량제</span><span class="badge rounded-pill bg-light" id="product-badge"><i class="fas fa-hashtag"></i>고철</span><span class="badge rounded-pill bg-light" id="product-badge"><i class="fas fa-hashtag"></i>플라스틱</span></div>
                                <div class="col-12">
                                    <hr class="mt-1 mb-1">
                                </div>
                                <div class="col-12 py-1">
                                    <h6 class="py-2"><strong>(불연성)종량제</strong>&nbsp;&lt; 도자기·유리그릇<br><strong>고철</strong>&nbsp;&lt; 금속, 비금속그릇<br><strong>플라스틱</strong>&nbsp;&lt; 플라스틱 그릇<br></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </article>
                <article id="describe">
                    <hr>
                    <div>
                        <ul class="nav nav-tabs mb-2" role="tablist" id="myTab">
                            <li class="nav-item" role="presentation"><a class="nav-link active" role="tab" data-bs-toggle="tab" id="tag1-tab" href="#tag1">(불연성)종량제</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" role="tab" data-bs-toggle="tab" id="tag2-tab" href="#tag2">고철</a></li>
                            <li class="nav-item" role="presentation"><a class="nav-link" role="tab" data-bs-toggle="tab" id="tag3-tab" href="#tag3">플라스틱</a></li>
                        </ul>
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active description" role="tabpanel" id="tag1"><img class="img-fluid copyright" src="assets/img/recycle-guide/recycle불연성-종량제.png" loading="lazy" width="100%" height="100%" alt="설명서"></div>
                            <div class="tab-pane fade specifications" role="tabpanel" id="tag2"><img class="img-fluid copyright" src="assets/img/recycle-guide/recycle고철류.png" loading="lazy" width="100%" height="100%" alt="설명서"></div>
                            <div class="tab-pane fade" role="tabpanel" id="tag3"><img class="img-fluid copyright" src="assets/img/recycle-guide/recycle플라스틱.png" loading="lazy" width="100%" height="100%" alt="설명서"></div>
                        </div>
                    </div>
                    <hr>
                </article>
                <div class="modal fade" role="dialog" tabindex="-1" id="modal-share">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">공유하기</h4><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body text-center">
                                <p>Share this link via</p>
                                <div class="btn-group" role="group"><button class="btn btn-link" type="button"><i class="fab fa-google" style="color: var(--bs-red);font-size: 30px;"></i></button><button class="btn btn-link" type="button"><i class="fab fa-facebook-f" style="color: var(--bs-blue);font-size: 30px;"></i></button><button class="btn btn-link" type="button"><i class="fab fa-instagram" style="background: #ffffff;color: var(--bs-pink);font-size: 30px;"></i></button><button class="btn btn-link" type="button"><i class="icon ion-chatbubble" style="color: var(--bs-yellow);font-size: 30px;"></i></button><button class="btn btn-link" type="button"><i class="fab fa-github-alt" style="color: var(--bs-indigo);font-size: 30px;"></i></button></div>
                            </div>
                            <div class="modal-footer">
                                <div class="input-group"><span class="input-group-text bg-white"><i class="fas fa-link"></i></span><input class="form-control" type="url" placeholder="http://blisgo.com/product?link=here"><button class="btn btn-primary" type="button"><i class="far fa-copy"></i></button></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="toast-container d-flex position-fixed bottom-0 end-0 p-3" id="toast-bookmark">
                    <div class="toast fade hide" role="alert" id="liveToast" aria-live="assertive" aria-atomic="true">
                        <div class="toast-header"><img class="me-2"><strong class="me-auto">Title</strong><small>10 min ago</small><button class="btn-close ms-2 mb-1 close" data-bs-dismiss="toast"></button></div>
                        <div class="toast-body" role="alert">
                            <p>장치를 통해 도감에 추가할 수 있습니다&nbsp;</p>
                        </div>
                    </div>
                    <div class="toast fade hide" role="alert" id="toast-1">
                        <div class="toast-header"><img class="me-2"><strong class="me-auto">Title</strong><small>10 min ago</small><button class="btn-close ms-2 mb-1 close" data-bs-dismiss="toast"></button></div>
                        <div class="toast-body" role="alert">
                            <p>Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
                        </div>
                    </div>
                    <div class="toast fade hide" role="alert" id="toast-2">
                        <div class="toast-header"><img class="me-2"><strong class="me-auto">Title</strong><small>10 min ago</small><button class="btn-close ms-2 mb-1 close" data-bs-dismiss="toast"></button></div>
                        <div class="toast-body" role="alert">
                            <p>Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
                        </div>
                    </div>
                    <div class="toast fade hide" role="alert" id="toast-3">
                        <div class="toast-header"><img class="me-2"><strong class="me-auto">Title</strong><small>10 min ago</small><button class="btn-close ms-2 mb-1 close" data-bs-dismiss="toast"></button></div>
                        <div class="toast-body" role="alert">
                            <p>Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
                        </div>
                    </div>
                    <div class="toast fade hide" role="alert" id="toast-4">
                        <div class="toast-header"><img class="me-2"><strong class="me-auto">Title</strong><small>10 min ago</small><button class="btn-close ms-2 mb-1 close" data-bs-dismiss="toast"></button></div>
                        <div class="toast-body" role="alert">
                            <p>Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
                        </div>
                    </div>
                    <div class="toast fade hide" role="alert" id="toast-5">
                        <div class="toast-header"><img class="me-2"><strong class="me-auto">Title</strong><small>10 min ago</small><button class="btn-close ms-2 mb-1 close" data-bs-dismiss="toast"></button></div>
                        <div class="toast-body" role="alert">
                            <p>Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
                        </div>
                    </div>
                    <div class="toast fade hide" role="alert" id="toast-6">
                        <div class="toast-header"><img class="me-2"><strong class="me-auto">Title</strong><small>10 min ago</small><button class="btn-close ms-2 mb-1 close" data-bs-dismiss="toast"></button></div>
                        <div class="toast-body" role="alert">
                            <p>Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
                        </div>
                    </div>
                    <div class="toast fade hide" role="alert" id="toast-7">
                        <div class="toast-header"><img class="me-2"><strong class="me-auto">Title</strong><small>10 min ago</small><button class="btn-close ms-2 mb-1 close" data-bs-dismiss="toast"></button></div>
                        <div class="toast-body" role="alert">
                            <p>Nullam id dolor id nibh ultricies vehicula ut id elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus.</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container container text-center my-3 mb-2 pt-2" id="similar-waste">
                <div class="row">
                    <div class="col">
                        <div class="intro">
                            <h2 class="text-center">연관된 폐기물</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-6 col-lg-3 spacer-slider">
                        <figure class="figure"><a href="/product"><img class="img-fluid" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_2324808/23248083407.20200623235150.jpg?type=f640" loading="lazy" width="640px" height="640px" alt="사전 이미지"></a>
                            <figcaption class="figure-caption">헬멧</figcaption>
                        </figure>
                    </div>
                    <div class="col-6 col-lg-3 spacer-slider">
                        <figure class="figure"><a href="/product"><img class="img-fluid" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_1226839/12268397055.20170915173215.jpg?type=f640" loading="lazy" width="640px" height="640px" alt="사전 이미지"></a>
                            <figcaption class="figure-caption">치약용기</figcaption>
                        </figure>
                    </div>
                    <div class="col-6 col-lg-3 spacer-slider">
                        <figure class="figure"><a href="/product"><img class="img-fluid" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_2579926/25799266307.20210130165913.jpg?type=f640" loading="lazy" width="640px" height="640px" alt="사전 이미지"></a>
                            <figcaption class="figure-caption">진열대</figcaption>
                        </figure>
                    </div>
                    <div class="col-6 col-lg-3 spacer-slider">
                        <figure class="figure"><a href="/product"><img class="img-fluid" data-bss-hover-animate="pulse" src="https://shopping-phinf.pstatic.net/main_2308499/23084992490.20200609114121.jpg?type=f640" loading="lazy" width="640px" height="640px" alt="사전 이미지"></a>
                            <figcaption class="figure-caption">정수기</figcaption>
                        </figure>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer class="d-none d-lg-block p-4" id="footer">
        <section>
            <div class="row">
                <div class="col text-center"><a class="btn btn-outline-light btn-floating m-1" href="https://gitlab.com/hanok" role="button"><i class="fab fa-gitlab"></i></a></div>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="assets/js/service-worker.js"></script>
    <script src="assets/js/toast.js"></script>
</body>

</html>