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
    <link rel="stylesheet" href="assets/css/style.css">
<link rel="manifest" href="/manifest.json">
</head>

<body>
    <header id="header">
        <div class="container-fluid d-flex justify-content-center align-items-center d-flex align-items-center" id="highlight-index">
            <article>
                <div class="row">
                    <div class="col">
                        <form>
                            <div class="card d-inline-block">
                                <div class="card-header">
                                    <h2 class="text-center text-primary fw-light m-0">인증</h2>
                                </div>
                                <div class="card-body"><input class="form-control email-imput form-control mb-2" type="email" required="" placeholder="이메일" minlength="6" name="email"><button class="btn btn-success d-block box-shadow w-100" id="submit-email-verify-1" type="submit">전송</button></div>
                                <div class="card-body"><input class="form-control mb-2" type="text" placeholder="6자리 숫자를 입력하세요" name="verify" inputmode="numeric" maxlength="6" minlength="6" required="" autofocus=""><button class="btn btn-dark d-block box-shadow w-100" id="submit-code-verify-1" type="submit">인증</button><a class="card-link float-start text-decoration-none" id="forgot-password-1" href="/verify">이메일 다시 보내기</a></div>
                                <div class="card-body"></div>
                                <div class="card-footer text-center">
                                    <p class="mb-0">계정이 없으신가요?<a id="register-link-1" class="text-decoration-none ps-2" href="/register">회원가입</a></p>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </article>
        </div><jsp:include page="navbar.jsp">
    <jsp:param name="name" value="value" />
</jsp:include>
    </header><jsp:include page="footer.jsp">
    <jsp:param name="name" value="value" />
</jsp:include>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="assets/js/load-more.js"></script>
    <script src="assets/js/service-worker.js"></script>
</body>

</html>