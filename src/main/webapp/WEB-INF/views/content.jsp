<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" oncontextmenu="return false" ondragstart="return false">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>게시글 - BlisGO</title>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
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
                    <h1>커뮤니티<br></h1>
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
    <main id="main" class="pt-2 pb-2">
        <section>
            <div class="container p-0" id="community-content">
                <article>
                    <div class="card shadow-sm">
                        <div class="card-header">
                            <div class="row">
                                <div class="col-auto flex-fill p-0">
                                    <ul class="list-group list-group-horizontal flex-fill">
                                        <li class="list-group-item flex-fill"><span>글내용 샘플입니다아~</span></li>
                                        <li class="list-group-item"><span>옥재욱</span></li>
                                    </ul>
                                </div>
                                <div class="col-auto flex-fill p-0">
                                    <ul class="list-group list-group-horizontal">
                                        <li class="list-group-item flex-fill"><i class="far fa-clock"></i><span>2021/07/31</span></li>
                                        <li class="list-group-item flex-fill"><i class="far fa-eye"></i><span>123</span></li>
                                        <li class="list-group-item flex-fill"><i class="fas fa-heart text-danger"></i><span>20</span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <p class="card-text">지금 이 태그는 paragraph 입니다. write페이지는 rich text editor중 TinyMCE 에디터 API를 이용한 것입니다. 이점 유의하세요~</p>
                        </div>
                        <div class="card-footer p-1">
                            <div class="col">
                                <div class="btn-group float-end" role="group"><button class="btn btn-info" type="button" onclick="location.href=&#39;#&#39;"><i class="fas fa-pencil-alt text-white"></i></button><button class="btn btn-danger" type="button" onclick="location.href=&#39;#&#39;"><i class="fas fa-trash-alt"></i></button></div>
                            </div>
                        </div>
                        <div class="card-body pt-2 p-1">
                            <div class="input-group"><input class="form-control" type="text" placeholder="댓글을 입력하세요"><button class="btn btn-success float-end btn-success" type="submit"><i class="fas fa-paper-plane"></i></button></div>
                        </div>
                        <div class="card-body pt-2 p-1 pb-0">
                            <div class="table-responsive">
                                <table class="table table-fixed">
                                    <tbody>
                                        <tr>
                                            <td class="p-0">
                                                <div class="row p-0 m-0">
                                                    <div class="col-auto align-self-center p-0"><img class="img-fluid rounded-circle" id="comment-user-img" width="40px" height="40px" alt="프로필이미지" src="https://i.pravatar.cc/200"></div>
                                                    <div class="col"><strong>옥재욱</strong><span class="text-secondary ms-2">02:05</span>
                                                        <p class="m-0">화</p>
                                                    </div>
                                                    <div class="col-auto align-self-center me-0 pe-0"><button class="btn btn-danger" type="button" onclick="location.href=&#39;#&#39;"><i class="fas fa-trash-alt"></i></button></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-0">
                                                <div class="row p-0 m-0">
                                                    <div class="col-auto align-self-center p-0"><img class="img-fluid rounded-circle" id="comment-user-img-1" width="40px" height="40px" alt="프로필이미지" src="https://i.pravatar.cc/200"></div>
                                                    <div class="col"><strong>옥재욱</strong><span class="text-secondary ms-2">02:05</span>
                                                        <p class="m-0">이</p>
                                                    </div>
                                                    <div class="col-auto align-self-center me-0 pe-0"><button class="btn btn-danger" type="button" onclick="location.href=&#39;#&#39;"><i class="fas fa-trash-alt"></i></button></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-0">
                                                <div class="row p-0 m-0">
                                                    <div class="col-auto align-self-center p-0"><img class="img-fluid rounded-circle" id="comment-user-img-2" width="40px" height="40px" alt="프로필이미지" src="https://i.pravatar.cc/200"></div>
                                                    <div class="col"><strong>옥재욱</strong><span class="text-secondary ms-2">02:05</span>
                                                        <p class="m-0">자</p>
                                                    </div>
                                                    <div class="col-auto align-self-center me-0 pe-0"><button class="btn btn-danger" type="button" onclick="location.href=&#39;#&#39;"><i class="fas fa-trash-alt"></i></button></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-0">
                                                <div class="row p-0 m-0">
                                                    <div class="col-auto align-self-center p-0"><img class="img-fluid rounded-circle" id="comment-user-img-3" width="40px" height="40px" alt="프로필이미지" src="https://i.pravatar.cc/200"></div>
                                                    <div class="col"><strong>옥재욱</strong><span class="text-secondary ms-2">02:05</span>
                                                        <p class="m-0">말</p>
                                                    </div>
                                                    <div class="col-auto align-self-center me-0 pe-0"><button class="btn btn-danger" type="button" onclick="location.href=&#39;#&#39;"><i class="fas fa-trash-alt"></i></button></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-0">
                                                <div class="row p-0 m-0">
                                                    <div class="col-auto align-self-center p-0"><img class="img-fluid rounded-circle" id="comment-user-img-4" width="40px" height="40px" alt="프로필이미지" src="https://i.pravatar.cc/200"></div>
                                                    <div class="col"><strong>옥재욱</strong><span class="text-secondary ms-2">02:05</span>
                                                        <p class="m-0">고</p>
                                                    </div>
                                                    <div class="col-auto align-self-center me-0 pe-0"><button class="btn btn-danger" type="button" onclick="location.href=&#39;#&#39;"><i class="fas fa-trash-alt"></i></button></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-0">
                                                <div class="row p-0 m-0">
                                                    <div class="col-auto align-self-center p-0"><img class="img-fluid rounded-circle" id="comment-user-img-5" width="40px" height="40px" alt="프로필이미지" src="https://i.pravatar.cc/200"></div>
                                                    <div class="col"><strong>옥재욱</strong><span class="text-secondary ms-2">02:05</span>
                                                        <p class="m-0">모</p>
                                                    </div>
                                                    <div class="col-auto align-self-center me-0 pe-0"><button class="btn btn-danger" type="button" onclick="location.href=&#39;#&#39;"><i class="fas fa-trash-alt"></i></button></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-0">
                                                <div class="row p-0 m-0">
                                                    <div class="col-auto align-self-center p-0"><img class="img-fluid rounded-circle" id="comment-user-img-6" width="40px" height="40px" alt="프로필이미지" src="https://i.pravatar.cc/200"></div>
                                                    <div class="col"><strong>옥재욱</strong><span class="text-secondary ms-2">02:05</span>
                                                        <p class="m-0">더</p>
                                                    </div>
                                                    <div class="col-auto align-self-center me-0 pe-0"><button class="btn btn-danger" type="button" onclick="location.href=&#39;#&#39;"><i class="fas fa-trash-alt"></i></button></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="p-0">
                                                <div class="row p-0 m-0">
                                                    <div class="col-auto align-self-center p-0"><img class="img-fluid rounded-circle" id="comment-user-img-7" width="40px" height="40px" alt="프로필이미지" src="https://i.pravatar.cc/200"></div>
                                                    <div class="col"><strong>옥재욱</strong><span class="text-secondary ms-2">02:05</span>
                                                        <p class="m-0">나</p>
                                                    </div>
                                                    <div class="col-auto align-self-center me-0 pe-0"><button class="btn btn-danger" type="button" onclick="location.href=&#39;#&#39;"><i class="fas fa-trash-alt"></i></button></div>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td class="p-0">
                                                <div class="bg-light bg-gradient shadow-sm"><button class="btn btn-link w-100 text-decoration-none text-secondary" type="button" onclick="location.href=&#39;#&#39;"><span>더보기</span><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-chevron-down">
                                                            <path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"></path>
                                                        </svg></button></div>
                                            </td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </article>
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
</body>

</html>