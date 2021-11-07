<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        </div><jsp:include page="navbar.jsp">
    <jsp:param name="name" value="value" />
</jsp:include>
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
                                        <li class="list-group-item flex-fill"><span>${articles.getBd_title()}<br></span></li>
                                        <li class="list-group-item"><span>${articles.getBd_writer()}<br></span></li>
                                    </ul>
                                </div>
                                <div class="col-auto flex-fill p-0">
                                    <ul class="list-group list-group-horizontal">
                                        <li class="list-group-item flex-fill"><i class="far fa-clock"></i><span>${articles.getBd_date()}<br></span></li>
                                        <li class="list-group-item flex-fill"><i class="far fa-eye"></i><span>${articles.getBd_views()}<br></span></li>
                                        <li class="list-group-item flex-fill"><i class="fas fa-heart text-danger"></i><span>${articles.getBd_favorite()}<br></span></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <p class="card-text">${articles.getBd_content()}<br></p>
                        </div>
                        <div class="card-footer p-1">
                            <div class="col"><div class="btn-group float-end" role="group">
    <button class="btn btn-danger" type="button" onclick="location.href='/favoriteBoard?bd_no=${bd_no}'">
        <i class="fas fa-heart"></i>
    </button>
    <c:choose>
        <c:when test="${session_user_nick eq articles.getBd_writer()}">
            <button class="btn btn-info" type="button" onclick="location.href='/content_update?bd_no=${bd_no}'">
                <i class="fas fa-pencil-alt"></i>
            </button>
            <button class="btn btn-secondary" type="button" onclick="alert('글이 삭제되었습니다'); location.href='/content_delete?bd_no=${bd_no}'">
                <i class="fas fa-trash-alt"></i>
            </button>
        </c:when>
    </c:choose>
    <a class="btn btn-secondary" role="button" data-bs-toggle="tooltip" data-bss-tooltip="" href="/community" title="글 목록으로 이동합니다"><i class="fas fa-align-justify"></i></a>
</div></div>
                        </div>
                        <div class="card-body pt-2 p-1">
                            <form method="post" action="/commentPOST"><input class="form-control" type="hidden" name="mem_no" value="${mem.getMem_no()}"><input class="form-control" type="hidden" name="bd_no" value="${articles.getBd_no()}"><c:choose>
    <c:when test="${mem==null}">
        <div class="input-group">
            <input type="text" class="form-control" placeholder="로그인 후 이용할 수 있습니다" readonly name="content" />
            <button class="btn btn-success disabled float-end btn-success" type="submit">
                <i class="fas fa-paper-plane"></i>
            </button>
        </div>
    </c:when>
    <c:otherwise>
        <div class="input-group">
            <input type="text" class="form-control" placeholder="댓글을 입력하세요" name="content" />
            <button class="btn btn-success float-end btn-success" type="submit">
                <i class="fas fa-paper-plane"></i>
            </button>
        </div>
    </c:otherwise>
</c:choose></form>
                        </div>
                        <div class="card-body pt-2 p-1 pb-0"><div class="table-responsive">
    <table class="table table-fixed">
        <tbody>
            <c:forEach items="${comments}" var="comment" varStatus="status">
                <tr>
                    <td class="p-0">
                        <form action="/commentRemove" method="post">
                            <input type="hidden" class="form-control" name="bd_no" value="${articles.getBd_no()}" />
                            <div class="row p-0 m-0">
                                <div class="col-auto align-self-center p-0">
                                    <img class="img-fluid rounded-circle" id="comment-user-img" width="40px" height="40px" alt="프로필이미지" src="${comments_user[status.index].getProfile_image()}" />
                                </div>
                                <div class="col">
                                    <strong>${comments_user[status.index].getNickname()}</strong>
                                    <span class="text-secondary ms-2">${comment.getComment_date()}</span>
                                    <p class="m-0">${comment.getContent()}</p>
                                </div>
                                <div class="col-auto align-self-center me-0 pe-0">
                                    <c:if test="${mem.getMem_no() eq comments_user[status.index].getMem_no()}">
                                        <button class="btn btn-danger" type="submit">
                                            <i class="fas fa-trash-alt"></i>
                                        </button>
                                    </c:if>
                                </div>
                            </div>
                            <input type="hidden" class="form-control" name="comment_no" value="${comment.getComment_no()}" />
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
        <tfoot>
            <tr>
                <td class="p-0">
                    <div class="bg-light bg-gradient shadow-sm">
                        <button class="btn btn-link w-100 text-decoration-none text-secondary" type="button" onclick="location.href=&#39;#&#39;">
                            <span>더보기</span>
                            <i class="fas fa-chevron-down"></i>
                        </button>
                    </div>
                </td>
            </tr>
        </tfoot>
    </table>
</div></div>
                    </div>
                </article>
            </div>
        </section>
    </main><jsp:include page="footer.jsp">
    <jsp:param name="name" value="value" />
</jsp:include>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
</body>

</html>