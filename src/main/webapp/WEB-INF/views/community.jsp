<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">

<head>
    <jsp:include page="modules/head.jsp">
        <jsp:param name="name" value="value" />
    </jsp:include>
    <title>게시판 - BlisGO</title>
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
                        <c:if test = "${mem == null}">
                        <li class="nav-item" id="login"><a class="nav-link" data-bs-toggle="tooltip" data-bss-tooltip="" data-bs-placement="bottom" href="/login" title="회원이용시 다양한 혜택을 이용할 수 있습니다">로그인</a></li>
						</c:if>
						<c:if test = "${mem != null}">
                        <li class="nav-item" id="login"><a class="nav-link" data-bs-toggle="tooltip" data-bss-tooltip="" data-bs-placement="bottom" href="/login" title="${mem.getNickname()}">${mem.getNickname()}</a></li>
						</c:if>
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
                        <div class="card-body p-1">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <tbody>
                                        <tr>
                                            <td><a class="d-block text-decoration-none text-reset" href="/content">글내용 샘플입니다아~<span class="text-info">(3)</span><br></a></td>
                                            <td><a class="text-end d-block text-decoration-none text-reset" href="/content">옥재욱</a></td>
                                            <td class="d-none d-lg-table-cell"><a class="text-end d-block text-decoration-none text-black-50" href="/content">2008/01/03<br></a></td>
                                        </tr>
                                        <tr>
                                            <td><a class="d-block text-decoration-none text-reset" href="/content">글내용 샘플입니다아~<span class="text-info">(3)</span><br></a></td>
                                            <td><a class="text-end d-block text-decoration-none text-reset" href="/content">옥재욱</a></td>
                                            <td class="d-none d-lg-table-cell"><a class="text-end d-block text-decoration-none text-black-50" href="/content">2008/01/03<br></a></td>
                                        </tr>
                                        <tr>
                                            <td><a class="d-block text-decoration-none text-reset" href="/content">글내용 샘플입니다아~<span class="text-info">(3)</span><br></a></td>
                                            <td><a class="text-end d-block text-decoration-none text-reset" href="/content">옥재욱</a></td>
                                            <td class="d-none d-lg-table-cell"><a class="text-end d-block text-decoration-none text-black-50" href="/content">2008/01/03<br></a></td>
                                        </tr>
                                        <tr>
                                            <td><a class="d-block text-decoration-none text-reset" href="/content">글내용 샘플입니다아~<span class="text-info">(3)</span><br></a></td>
                                            <td><a class="text-end d-block text-decoration-none text-reset" href="/content">옥재욱</a></td>
                                            <td class="d-none d-lg-table-cell"><a class="text-end d-block text-decoration-none text-black-50" href="/content">2008/01/03<br></a></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="card-body text-center p-0">
                            <div class="bg-light bg-gradient shadow-sm"><button class="btn btn-link w-100 text-decoration-none text-secondary" type="button"><span>더보기</span><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-chevron-down">
                                        <path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"></path>
                                    </svg></button></div>
                        </div>
                    </div>
                </article>
            </div><a class="btn btn-success d-flex justify-content-center align-items-center position-fixed rounded-circle" role="button" data-bs-toggle="tooltip" data-bss-tooltip="" id="float-btn-add" href="/write" title="새로 작성합니다"><i class="fas fa-plus" id="float-btn-icon"></i></a>
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
    <script src="assets/js/service-worker.js"></script>
</body>

</html>