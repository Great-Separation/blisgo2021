<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko" style="height: 100vh;" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>로그인 - BlisGO</title>
    <meta name="theme-color" content="#ffffff">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="twitter:image" content="https://blisgov2.bss.design/assets/img/favicon/favicon512x512.png">
    <meta name="twitter:description" content="분리배출 도우미">
    <meta name="twitter:title" content="BlisGO">
    <meta property="og:type" content="website">
    <meta name="description" content="분리배출 도우미">
    <meta name="twitter:card" content="summary_large_image">
    <meta property="og:image" content="https://blisgov2.bss.design/assets/img/favicon/favicon512x512.png">
    <meta name="google-signin-client_id" content="YOUR_CLIENT_ID.apps.googleusercontent.com">
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
<link rel="manifest" href="/manifest.json"><script type="text/javascript">
	if(${check} == 2){
		var message = '${msg}';
		alert(message);
	}
</script>
<script src="https://apis.google.com/js/platform.js?onload=renderButton" async defer>
</script>
</head>

<body>
    <header id="header">
        <div class="container-fluid d-flex justify-content-center align-items-center d-flex align-items-center" id="highlight-index">
            <article>
                <form action="/loginPOST" method="post">
                    <div class="card">
                        <div class="card-header">
                            <h2 class="text-center text-primary m-0 fw-light">로그인</h2>
                        </div>
                        <div class="card-body pb-0"><input class="form-control email-imput form-control mt-2" type="email" required="" placeholder="이메일" minlength="6" name="email"><input class="form-control password-input form-control mt-2" type="password" required="" placeholder="비밀번호" minlength="6" name="pass"><button class="btn btn-success box-shadow w-100 mt-2 mb-2" type="submit">로그인</button><c:choose>
    <c:when test="${passCheck==null}">
    </c:when>
    <c:otherwise>
        <div class="alert alert-danger pt-2 pb-2 mb-0 text-center" role="alert">
            <span><i class="fas fa-exclamation-triangle"></i><strong>로그인 실패.</strong> 비밀번호 불일치</span>
        </div>
    </c:otherwise>
</c:choose>
</div>
                        <div class="card-body">
                            <div class="btn-group-vertical d-flex flex-fill" role="group"><button class="btn w-100 mb-2 p-0" type="button"><div id="my-signin2"></div></button></div>
                            <div class="row d-xxl-flex align-items-xxl-center">
                                <div class="col-auto">
                                    <div class="form-check d-xxl-flex align-items-xxl-center" id="form-check-signs-of-agreement-1"><input class="form-check-input" type="checkbox" id="formCheck-remember-1" for="remember" name="check"><label class="form-check-label" for="formCheck"><span class="label-text">로그인 유지</span></label></div>
                                </div>
                                <div class="col"><a class="float-end text-decoration-none" id="forgot-password-link-1" href="/verify">비밀번호 찾기</a></div>
                            </div>
                        </div>
                        <div class="card-footer text-center">
                            <p class="m-0">계정이 없으신가요?<a id="register-link-1" class="text-decoration-none ps-2" href="/register">회원가입</a></p>
                        </div>
                    </div>
                </form>
            </article>
        </div><jsp:include page="navbar.jsp">
    <jsp:param name="name" value="value"/>
</jsp:include>
    </header><jsp:include page="footer.jsp">
    <jsp:param name="name" value="value" />
</jsp:include>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="assets/js/oauth-google.js"></script>
</body>

</html>