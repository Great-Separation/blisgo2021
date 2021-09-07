<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>사전 - BlisGO</title>
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
        </div><jsp:include page="navbar.jsp">
    <jsp:param name="name" value="value" />
</jsp:include>
    </header>
    <main id="main" class="pt-2 pb-2">
        <div class="container p-0" id="category">
            <div class="card">
                <div class="card-header">
                    <div class="row">
                        <div class="col p-0">
                            <form method="get" action="/dictionary">
                                <div class="row m-0">
                                    <div class="col p-0">
                                        <div class="input-group"><select class="border rounded form-select" name="category_big">
                                                <option value="" selected="">대분류</option>
                                                <option value="생활폐기물">생활폐기물</option>
                                                <option value="폐가전제품">폐가전제품</option>
                                                <option value="대형폐기물">대형폐기물</option>
                                                <option value="기타폐기물">기타폐기물</option>
                                            </select><select class="form-select" name="category_mid">
                                                <option value="" selected="">중분류</option>
                                                <option value="종이">종이</option>
                                                <option value="종이팩">종이팩</option>
                                                <option value="금속캔">금속캔</option>
                                                <option value="고철">고철</option>
                                                <option value="유리병">유리병</option>
                                                <option value="플라스틱">플라스틱</option>
                                                <option value="비닐">비닐</option>
                                                <option value="발포합성">발포합성</option>
                                                <option value="의류">의류</option>
                                                <option value="가전제품">가전제품</option>
                                                <option value="대형">대형</option>
                                                <option value="음식물">음식물</option>
                                                <option value="유해">유해</option>
                                                <option value="불연성, 종량제">불연성, 종량제</option>
                                                <option value="종량제봉투">종량제봉투</option>
                                                <option value="전용함">전용함</option>
                                                <option value="전문시설">전문시설</option>
                                                <option value="주의">주의</option>
                                                <option value="재질별분리">재질별분리</option>
                                            </select></div>
                                    </div>
                                </div>
                                <div class="row m-0">
                                    <div class="col p-0">
                                        <div class="input-group"><input class="border rounded form-control" type="search" placeholder="내용을 입력하세요" name="category_small"><button class="btn btn-primary col-1" id="category-search-btn" type="submit"><i class="fas fa-search"></i></button></div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="row" id="productList"><c:forEach items="${products}" var="product">
    <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-3 col-xxl-2 p-2">
        <figure class="figure">
            <a href="/product?dic_no=${product.getDic_no()}">
                <img class="img-fluid" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" src="${product.getThumbnail()}" title="${product.getEng_name()}" loading="lazy" width="640px" height="640px" alt="사전 이미지">
            </a>
            <figcaption class="figure-caption text-white">${product.getName()}</figcaption>
        </figure>
    </div>
</c:forEach></div>
                </div>
                <div class="card-body text-center p-0">
                    <div class="bg-light bg-gradient shadow-sm"><button class="btn btn-link w-100 text-decoration-none text-secondary" id="loadmore" type="button"><span>더보기</span><i class="fas fa-chevron-down"></i></button></div>
                </div>
            </div>
        </div>
    </main><jsp:include page="footer.jsp">
    <jsp:param name="name" value="value" />
</jsp:include>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Readmore.js/2.2.1/readmore.js"></script>
    <script src="assets/js/load-more.js"></script>
    <script src="assets/js/service-worker.js"></script>
</body>

</html>