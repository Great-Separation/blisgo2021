<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>소개 - BlisGO</title>
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
<link rel="manifest" href="/manifest.json">
</head>

<body>
    <header id="header">
        <div id="nav-white-space"></div>
        <div class="container-fluid text-white d-none d-lg-block" id="highlight">
            <div class="row">
                <div class="col text-center">
                    <h1>소개<br></h1>
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
                    <h2 class="text-center intro">기능</h2>
                    <p class="text-center intro">Nunc luctus in metus eget fringilla. Aliquam sed justo ligula. Vestibulum nibh erat, pellentesque ut laoreet vitae. </p>
                </div>
            </div>
            <div class="row m-0">
                <div class="col-sm-2 col-md-2 align-self-center"><i class="far fa-money-bill-alt icon" id="feature-icon"></i></div>
                <div class="col-sm-10 col-md-4 item">
                    <h3 class="text-primary name">Cost Effective</h3>
                    <p class="text-secondary description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est.</p>
                </div>
                <div class="col-sm-2 col-md-2 align-self-center"><i class="fas fa-database icon" id="feature-icon"></i></div>
                <div class="col-sm-10 col-md-4 item">
                    <h3 class="text-primary name">DB based</h3>
                    <p class="text-secondary description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est.</p>
                </div>
            </div>
            <div class="row m-0">
                <div class="col-sm-2 col-md-2 float-end align-self-center"><i class="fas fa-qrcode icon" id="feature-icon"></i></div>
                <div class="col-sm-10 col-md-4 item">
                    <h3 class="text-primary name">QR based<br></h3>
                    <p class="text-secondary description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est.</p>
                </div>
                <div class="col-sm-2 col-md-2 align-self-center"><i class="fas fa-leaf icon" id="feature-icon"></i></div>
                <div class="col-sm-10 col-md-4 item">
                    <h3 class="text-primary name">Eco system<br></h3>
                    <p class="text-secondary description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est.</p>
                </div>
            </div>
            <div class="row m-0">
                <div class="col-sm-2 col-md-2 align-self-center"><i class="fas fa-recycle icon" id="feature-icon"></i></div>
                <div class="col-sm-10 col-md-4 item">
                    <h3 class="text-primary name">Recycle<br></h3>
                    <p class="text-secondary description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est.</p>
                </div>
                <div class="col-sm-2 col-md-2 align-self-center"><i class="fas fa-camera icon" id="feature-icon"></i></div>
                <div class="col-sm-10 col-md-4 item">
                    <h3 class="text-primary name">Simple use case<br></h3>
                    <p class="text-secondary description">Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est.</p>
                </div>
            </div>
        </div>
        <div class="container p-2" id="chart">
            <div class="row m-0">
                <div class="col">
                    <h2 class="text-center">적절한 이름죰(뭐넣지이)</h2>
                    <p class="text-center">Nunc luctus in metus eget fringilla. Aliquam sed justo ligula. Vestibulum nibh erat, pellentesque ut laoreet vitae. </p>
                </div>
            </div>
            <div class="row m-0">
                <div class="col">
                    <div><canvas data-bss-chart="{&quot;type&quot;:&quot;line&quot;,&quot;data&quot;:{&quot;labels&quot;:[&quot;January&quot;,&quot;February&quot;,&quot;March&quot;,&quot;April&quot;,&quot;May&quot;,&quot;June&quot;],&quot;datasets&quot;:[{&quot;label&quot;:&quot;Revenue&quot;,&quot;backgroundColor&quot;:&quot;#7CD2B3&quot;,&quot;borderColor&quot;:&quot;#7CD2B3&quot;,&quot;data&quot;:[&quot;4500&quot;,&quot;5300&quot;,&quot;6250&quot;,&quot;7800&quot;,&quot;9800&quot;,&quot;15000&quot;],&quot;fill&quot;:true}]},&quot;options&quot;:{&quot;maintainAspectRatio&quot;:true,&quot;legend&quot;:{&quot;display&quot;:false,&quot;labels&quot;:{&quot;bold&quot;:false,&quot;italic&quot;:false,&quot;fontStyle&quot;:&quot;normal&quot;}},&quot;title&quot;:{&quot;fontStyle&quot;:&quot;normal&quot;,&quot;display&quot;:false,&quot;text&quot;:&quot;&quot;},&quot;scales&quot;:{&quot;xAxes&quot;:[{&quot;ticks&quot;:{&quot;fontStyle&quot;:&quot;normal&quot;}}],&quot;yAxes&quot;:[{&quot;ticks&quot;:{&quot;fontStyle&quot;:&quot;normal&quot;}}]}}}"></canvas></div>
                </div>
            </div>
        </div>
        <div class="container p-2">
            <div class="row m-0">
                <div class="col">
                    <h2 class="text-center">만든 사람들</h2>
                    <p class="text-center">Nunc luctus in metus eget fringilla. Aliquam sed justo ligula. Vestibulum nibh erat, pellentesque ut laoreet vitae. </p>
                </div>
            </div>
            <div class="card-group m-0">
                <div class="card"><img class="img-fluid card-img-top w-100 d-block" src="https://avatars.githubusercontent.com/u/26517061?v=4" loading="lazy" width="640px" height="640px" alt="만든 사람들">
                    <div class="card-body">
                        <h4 class="card-title">옥재욱</h4>
                        <p class="card-text">본인 기술 설명</p><a class="btn btn-light" role="button" href="https://github.com/laigasus"><i class="fab fa-github"></i></a>
                    </div>
                </div>
                <div class="card"><img class="img-fluid card-img-top w-100 d-block" src="https://avatars.githubusercontent.com/u/82010586?v=4" loading="lazy" width="640px" height="640px" alt="만든 사람들">
                    <div class="card-body">
                        <h4 class="card-title">김민균</h4>
                        <p class="card-text">본인 기술 설명</p><a class="btn btn-light" role="button" href="https://github.com/min-gyun-98"><i class="fab fa-github"></i></a>
                    </div>
                </div>
                <div class="card"><img class="img-fluid card-img-top w-100 d-block" src="https://avatars.githubusercontent.com/u/26201797?v=4" loading="lazy" width="640px" height="640px" alt="만든 사람들">
                    <div class="card-body">
                        <h4 class="card-title">김민수</h4>
                        <p class="card-text">본인 기술 설명</p><a class="btn btn-light" role="button" href="https://github.com/rlaalstn0107"><i class="fab fa-github"></i></a>
                    </div>
                </div>
                <div class="card"><img class="img-fluid card-img-top w-100 d-block" src="https://avatars.githubusercontent.com/u/81316381?v=4" loading="lazy" width="640px" height="640px" alt="만든 사람들">
                    <div class="card-body">
                        <h4 class="card-title">오민영</h4>
                        <p class="card-text">본인 기술 설명</p><a class="btn btn-light" role="button" href="https://github.com/ominyoung"><i class="fab fa-github"></i></a>
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
                            <p class="text-center">Nunc luctus in metus eget fringilla. Aliquam sed justo ligula. Vestibulum nibh erat, pellentesque ut laoreet vitae. </p>
                        </div>
                    </div><iframe allowfullscreen="" frameborder="0" loading="lazy" src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA8LykylI5ehO5qC-VFkcBYtpG8jHKRsOY&amp;q=%EB%8F%99%EC%96%91%EB%AF%B8%EB%9E%98%EB%8C%80%ED%95%99%EA%B5%90&amp;zoom=15" width="100%" height="450"></iframe>
                </section>
            </article>
        </div>
    </main><jsp:include page="footer.jsp">
    <jsp:param name="name" value="value" />
</jsp:include>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
</body>

</html>