<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>분리수GO!</title>
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
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/flick/jquery-ui.css">
    <link rel="stylesheet" href="assets/css/image-slider.css">
    <link rel="stylesheet" href="assets/css/style.css">
<link rel="manifest" href="/manifest.json">
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
                                    <form class="d-flex align-items-center ui-filterable" autocomplete="off" action="/dictionary" method="get"><input class="form-control form-control-sm form-control-borderless p-1" type="search" id="autocomplete" placeholder="키워드를 입력하세요" name="category_small" minlength="1" required="" style="padding: 0px;border-style: none;" autocomplete="off"><button class="btn btn-success" type="submit">GO!</button></form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><jsp:include page="navbar.jsp">
    <jsp:param name="name" value="value" />
</jsp:include>
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
                                        <figcaption class="figure-caption text-white">${recentProducts.get(cnt).getName()}</figcaption>
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
                                        <figcaption class="figure-caption text-white">${recentProducts.get(cnt).getName()}</figcaption>
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
    </main><jsp:include page="footer.jsp">
    <jsp:param name="name" value="value" />
</jsp:include><script>
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
    <script src="assets/js/load-more.js"></script>
    <script src="assets/js/service-worker.js"></script>
    <script src="assets/js/wasteList.js"></script>
</body>

</html>