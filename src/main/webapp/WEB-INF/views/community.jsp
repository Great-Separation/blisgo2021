<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>게시판 - BlisGO</title>
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
                    <h1>커뮤니티<br></h1>
                </div>
            </div>
        </div><jsp:include page="navbar.jsp">
    <jsp:param name="name" value="value" />
</jsp:include>
    </header>
    <main id="main" class="pt-2 pb-2">
        <section>
            <div class="container p-0" id="community-forum">
                <article>
                    <div class="card shadow-sm">
                        <div class="card-header py-2">
                            <div class="row">
                                <div class="col p-0">
                                    <form>
                                        <div class="input-group"><select class="border rounded form-select w-25" name="community-category">
                                                <option value="title">제목</option>
                                                <option value="writer">작성자</option>
                                            </select><input class="border rounded form-control w-50" type="search" placeholder="내용을 입력하세요" name="community-search"><button class="btn btn-primary" type="submit"><i class="fas fa-search"></i></button></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="card-body p-1"><div class="table-responsive">
    <table class="table table-hover">
        <tbody>
            <c:forEach items="${articles}" var="article">
                <tr>
                    <td>
                        <a class="d-block text-decoration-none text-reset" href="/content?bd_no=${article.getBd_no()}">${article.getBd_title()}<span class="text-info">(3)</span><br></a>
                    </td>
                    <td>
                        <a class="text-end d-block text-decoration-none text-reset" href="/content?bd_no=${article.getBd_no()}">${article.getBd_writer()}</a>
                    </td>
                    <td class="d-none d-lg-table-cell">
                        <a class="text-end d-block text-decoration-none text-black-50" href="/content?bd_no=${article.getBd_no()}">${article.getBd_title()}<br></a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div></div>
                        <div class="card-body text-center p-0">
                            <div class="bg-light bg-gradient shadow-sm"><button class="btn btn-link w-100 text-decoration-none text-secondary" type="button"><span>더보기</span><i class="fas fa-chevron-down"></i></button></div>
                        </div>
                    </div>
                </article>
            </div><a class="btn btn-success d-flex justify-content-center align-items-center position-fixed rounded-circle" role="button" data-bs-toggle="tooltip" data-bss-tooltip="" id="float-btn-add" href="/write" title="새로 작성합니다"><i class="fas fa-plus" id="float-btn-icon"></i></a>
        </section>
    </main><jsp:include page="footer.jsp">
    <jsp:param name="name" value="value" />
</jsp:include>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
</body>

</html>