<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" oncontextmenu="return false" ondragstart="return false">

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
<link rel="manifest" href="/manifest.json"><script src="https://cdn.tiny.cloud/1/0mwjfs8tijzbt7jipwitlhmj1l6rg57ggo1uh82ty5ccpwnw/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
</head>

<body>
    <header id="header">
        <div id="nav-white-space"></div>
        <div class="container-fluid text-white d-none d-lg-block" id="highlight">
            <div class="row">
                <div class="col text-center">
                    <h1>글쓰기<br></h1>
                </div>
            </div>
        </div><jsp:include page="navbar.jsp">
    <jsp:param name="name" value="value" />
</jsp:include>
    </header>
    <main class="pt-2 pb-2">
        <section>
            <div class="container p-0" id="community-write">
                <form method="post" action="/write">
                    <div class="card shadow">
                        <div class="card-header">
                            <div class="row">
                                <div class="col p-0">
                                    <div class="input-group"><input class="form-control" type="text" placeholder="제목" value="${article.getBd_title()}" name="write-title"><span class="input-group-text"><input class="form-control" type="hidden" name="write-bd_no" value="${article.getBd_no()}">${article.getBd_writer()}<br></span></div>
                                </div>
                            </div>
                        </div>
                        <div class="card-body p-0"><textarea class="form-control" id="txtTinyMCE" name="write-content">${article.getBd_content()}</textarea></div>
                        <div class="card-footer p-1">
                            <div class="btn-group float-end" role="group"><button class="btn btn-success" data-bs-toggle="tooltip" data-bss-tooltip="" type="submit" title="글을 게시판에 올립니다"><i class="fas fa-check"></i></button><a class="btn btn-secondary" role="button" data-bs-toggle="tooltip" data-bss-tooltip="" href="/community" title="글 목록으로 이동합니다"><i class="fas fa-align-justify"></i></a></div>
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </main><jsp:include page="footer.jsp">
    <jsp:param name="name" value="value" />
</jsp:include>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="assets/js/tinymce.js"></script>
</body>

</html>