<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>회원가입 - BlisGO</title>
    <meta name="theme-color" content="#ffffff">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="twitter:image" content="https://blisgov2.bss.design/assets/img/favicon/favicon512x512.png">
    <meta name="twitter:description" content="분리배출 도우미">
    <meta name="twitter:title" content="BlisGO">
    <meta property="og:type" content="website">
    <meta name="description" content="분리배출 도우미">
    <meta name="twitter:card" content="summary_large_image">
    <meta property="og:image" content="https://blisgov2.bss.design/assets/img/favicon/favicon512x512.png">
    <meta http-equiv="" content="">
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
<style>
.id_input_re_1{
		color : green;
		display : none;
	}

.id_input_re_2{
		color : red;
		display : none;
	}
</style>
</head>

<body>
    <header id="header">
        <div class="container-fluid d-flex justify-content-center align-items-center d-flex align-items-center" id="highlight-index">
            <article>
                <div class="row m-0">
                    <div class="col p-0">
                        <form action="/registerPOST" method="post">
                            <div class="card">
                                <div class="card-header text-center py-2">
                                    <h2 class="text-primary fw-light m-0">회원가입</h2>
                                </div>
                                <div class="card-body"><input class="form-control" type="text" required="" minlength="1" placeholder="사용자 이름" name="nickname"><input class="form-control email-imput form-control mt-2 mb-2" type="email" required="" placeholder="이메일" minlength="6" name="email"><span class="id_input_re_1">사용 가능한 이메일입니다.<br></span><span class="id_input_re_2">이메일이 이미 존재합니다.<br></span><input class="form-control password-input form-control-borderless mb-2" type="password" required="" placeholder="비밀번호" minlength="6" name="pass"><textarea class="form-control" id="termsOfAgreement" rows="5" readonly="">${termsOfAgreement}</textarea>
                                    <div class="form-check py-2" id="form-check-rememberMe-2"><input class="form-check-input" type="checkbox" id="formCheck-agree-2" for="remember" name="register-check-agree" required=""><label class="form-check-label" for="formCheck"><span class="label-text">약관을 확인했으며 개인정보 수집 및 이용에 동의합니다</span></label></div>
                                    <hr class="mt-2 mb-2"><button class="btn btn-primary d-block box-shadow w-100 mt-2" id="submit-user-2" type="submit">가입하기</button>
                                </div>
                                <div class="card-footer text-center">
                                    <p class="mb-0">이미 계정이 있으신가요?<a id="login-link-1" class="ps-2 text-decoration-none" href="/login">로그인</a></p>
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
    <script src="assets/js/register-check.js"></script>
    <script src="assets/js/service-worker.js"></script>
</body>

</html>