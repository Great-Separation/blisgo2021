<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">

<head>

    <jsp:include page="modules/head.jsp">
        <jsp:param name="name" value="value" />
    </jsp:include>
    <title>분리수GO!</title>
</head>

<body oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
    <header id="header" style="background-image: url(https://source.unsplash.com/1920x1920/daily?nature,water)center / cover no-repeat);background-position: center;background-size: cover;">
        <div class="container-fluid d-flex justify-content-center align-items-center d-flex align-items-center" id="highlight-index">
            <div class="row" style="width: 90vw;">
                <div class="col text-center text-white">
                    <h1 th:text="${name}">분리수GO!</h1>
                    <p class="lead">분리배출을 더욱 편리하게!</p>
                    <div class="row">
                        <div class="col">
                            <div class="card m-auto" style="max-width:850px">
                                <div class="card-body p-1">
                                    <form class="d-flex align-items-center ui-filterable" autocomplete="off" action="/dictionary" method="get"><input class="form-control form-control-sm form-control-borderless p-1" type="search" id="autocomplete" placeholder="키워드를 입력하세요" name="category_small" minlength="1" required="" style="padding: 0px;border-style: none;" autocomplete="off"><button class="btn btn-success" type="submit">GO!</button></form><script src="https://code.jquery.com/jquery-1.12.4.js"></script>
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
    <main class="pt-2 pb-2" style="height: 93.5vh;">
        <section class="justify-content-center align-items-center">
            <div class="container container text-center my-3 pt-2 p-0" id="recent-waste">
                <article>
                    <div class="intro">
                        <h2 class="text-center">최근 등록된 폐기물</h2>
                    </div><div class="carousel slide carousel-dark" data-bs-ride="carousel" id="carousel">
    <div class="carousel-inner">
        <c:set var="cnt" value="0"/>
        <c:set var="recentProducts" value="${recentProducts}"/>
        <c:forEach var="i" begin="1" end="3" step="1">
            <c:choose>
                <c:when test="${i eq 1}">
                    <div class="carousel-item active p-2">
                        <div class="row">
                            <c:forEach var="j" begin="1" end="4" step="1">
                                <div class="col-6 col-lg-3 spacer-slider">
                                    <figure class="figure"><a href="/product?dic_no=${recentProducts.get(cnt).getDic_no()}"><img class="img-fluid" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" src="${recentProducts.get(cnt).getThumbnail()}" title="${recentProducts.get(cnt).getEng_name()}" loading="lazy" alt="사전 이미지" width="640px" height="640px"></a>
                                        <figcaption class="figure-caption">${recentProducts.get(cnt).getName()}</figcaption>
                                    </figure>
                                </div>
                                <c:set var="cnt" value="${cnt+1}"/>
                            </c:forEach>
                        </div>
                    </div>
                </c:when> 
                <c:otherwise>
                    <div class="carousel-item p-2">
                        <div class="row">
                            <c:forEach var="j" begin="1" end="4" step="1">
                                <div class="col-6 col-lg-3 spacer-slider">
                                    <figure class="figure"><a href="/product?dic_no=${recentProducts.get(cnt).getDic_no()}"><img class="img-fluid" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" src="${recentProducts.get(cnt).getThumbnail()}" title="${recentProducts.get(cnt).getEng_name()}" loading="lazy" alt="사전 이미지" width="640px" height="640px"></a>
                                        <figcaption class="figure-caption">${recentProducts.get(cnt).getName()}</figcaption>
                                    </figure>
                                </div>
                                <c:set var="cnt" value="${cnt+1}"/>
                            </c:forEach>
                        </div>
                    </div>
                </c:otherwise>
            </c:choose> 
        </c:forEach>
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
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="assets/js/service-worker.js"></script>
    <script src="assets/js/wasteList.js"></script>
</body>

</html>