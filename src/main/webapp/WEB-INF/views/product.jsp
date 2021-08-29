<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">

<head>
    <jsp:include page="modules/head.jsp">
        <jsp:param name="name" value="value" />
    </jsp:include>
    <title>상세정보 - BlisGO</title>

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
                        <li class="nav-item" id="login"><a class="nav-link" data-bs-toggle="tooltip" data-bss-tooltip="" data-bs-placement="bottom" href="/login" title="회원이용시 다양한 혜택을 이용할 수 있습니다">로그인</a></li>
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
    <main class="pt-2 pb-2">
        <section>
            <div class="container" id="category-product">
                <article id="info" class="pb-2">
                    <div class="row">
                        <div class="col-md-6 text-center"><img class="img-fluid shadow-sm bounce animated small-preview" src="${product.getThumbnail()}" alt="사전 이미지" width="640px" height="640px"></div>
                        <div class="col-md-6 align-self-center">
                            <div class="row">
                                <div class="col-12 py-1">
                                    <ol class="breadcrumb mt-1 mb-1">
                                        <li class="breadcrumb-item"><a><span>${product.getCategory_mid()}</span></a></li>
                                        <li class="breadcrumb-item"><a><span>${product.getName()}</span></a></li>
                                    </ol>
                                    <hr class="mt-1 mb-0">
                                </div>
                            </div>
                            <div class="row justify-content-end">
                                <div class="col-9 align-self-center py-1">
                                    <h1 class="m-0">${product.getName()}</h1>
                                </div>
                                <div class="col-3 align-self-center py-1 text-end">
                                    <div class="btn-group" role="group" id="product-icon"><button class="btn btn-link" id="btn-toast" type="button" data-bs-target="#liveToast" data-bs-toggle="toast"><i class="fas fa-bookmark"></i></button><button class="btn btn-link" id="btn-share" type="button" data-bs-target="#modal-share" data-bs-toggle="modal"><i class="fas fa-share-alt"></i></button></div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-auto align-self-center py-1"><i class="fas fa-star" id="product-star"></i><span id="product-rating">${product.getPopularity()}</span></div>
                                <div class="col align-self-center py-1"><i class="fas fa-book"></i><span>도감에 추가됨</span></div>
                            </div>
                            <div class="row">
                                <div class="col py-1"><c:forEach var="tag" items="${category_mid_list}">
    <span class="badge rounded-pill bg-light" id="product-badge"><i class="fas fa-hashtag"></i>${tag}</span>
</c:forEach></div>
                                <div class="col-12">
                                    <hr class="mt-1 mb-1">
                                </div>
                                <div class="col-12 py-1"><h6 class="py-2">${product.getGuide()}</h6></div>
                            </div>
                        </div>
                    </div>
                </article>
                <article id="describe">
                    <hr><div>
    <c:set var="flag" value="true"/>
    <ul class="nav nav-tabs mb-2" role="tablist" id="myTab">
        <c:forEach var="guide" items="${guides}">
            <c:choose> 
                <c:when test="${flag}">
                    <c:set var="flag" value="false"/>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link active" role="tab" data-bs-toggle="tab" href="#${guide.getGuide_name()}">${guide.getGuide_name()}</a>
                    </li>
                </c:when> 
                <c:otherwise>
                    <li class="nav-item" role="presentation">
                        <a class="nav-link" role="tab" data-bs-toggle="tab" href="#${guide.getGuide_name()}">${guide.getGuide_name()}</a>
                    </li>
                </c:otherwise>
            </c:choose> 
        </c:forEach>
    </ul>
    <c:set var="flag" value="true"/>
    <div class="tab-content" id="myTabContent">
        <!-- 첫번째 탭 active 설정 이후 hide-->
        <c:forEach var="guide" items="${guides}">
            <c:choose> 
                <c:when test="${flag}">
                    <c:set var="flag" value="false"/>
                    <div class="tab-pane fade show active description" role="tabpanel" id="${guide.getGuide_name()}">
                        <img class="img-fluid copyright" src="${guide.getImage_path()}" width="100%" height="100%" alt="설명서">
                    </div>
                </c:when> 
                <c:otherwise>
                    <div class="tab-pane fade specifications" role="tabpanel" id="${guide.getGuide_name()}">
                        <img class="img-fluid copyright" src="${guide.getImage_path()}" width="100%" height="100%" alt="설명서">
                    </div>
                </c:otherwise>
            </c:choose> 
        </c:forEach>
    </div>
</div>
                    <hr>
                </article>
                <div class="modal fade" role="dialog" tabindex="-1" id="modal-share">
                    <div class="modal-dialog modal-dialog-centered" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">공유하기</h4><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>
                            <div class="modal-body text-center">
                                <div class="btn-group" role="group"><button class="btn btn-link" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" type="button" title="구글"><i class="fab fa-google" style="color: var(--bs-red);font-size: 30px;" title="구글"></i></button><button class="btn btn-link" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" type="button" title="페이스북"><i class="fab fa-facebook-f" data-bs-toggle="tooltip" data-bss-tooltip="" style="color: var(--bs-blue);font-size: 30px;"></i></button><button class="btn btn-link" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" type="button" title="인스타그램"><i class="fab fa-instagram" style="background: #ffffff;color: var(--bs-pink);font-size: 30px;"></i></button><button class="btn btn-link" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" type="button" title="카카오톡"><i class="fas fa-comment" style="color: var(--bs-yellow);font-size: 30px;"></i></button><button class="btn btn-link" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" type="button" title="깃허브"><i class="fab fa-github-alt" style="color: var(--bs-indigo);font-size: 30px;"></i></button></div>
                            </div>
                            <div class="modal-footer"><script>
    window.onload=function(){
	    var obShareUrl = document.getElementById("ShareUrl");
	    obShareUrl.value = window.document.location.href;
    };
    function copyURLToClipboard(){
	    var obShareUrl = document.getElementById("ShareUrl");
	    obShareUrl.select();
	    document.execCommand("copy");
	    obShareUrl.blur();
    }
</script>
                                <div class="input-group"><span class="input-group-text bg-white"><i class="fas fa-link"></i></span><input class="form-control" type="url" id="ShareUrl" readonly=""><button class="btn btn-primary" type="button" onclick="copyURLToClipboard()"><i class="far fa-copy"></i></button></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="toast-container d-flex position-fixed bottom-0 end-0 p-3" id="toast-bookmark">
                    <div class="toast fade hide" role="alert" id="liveToast" aria-live="assertive" aria-atomic="true">
                        <div class="toast-header"><img class="me-2" src="${product.getThumbnail()}" width="50px" height="50px"><strong class="me-auto">도감에 추가되었습니다</strong><small>방금</small><button class="btn-close ms-2 mb-1 close" data-bs-dismiss="toast"></button></div>
                        <div class="toast-body" role="alert">
                            <p>분리배출 도우미를 통해 도감에 추가할 수 있습니다&nbsp;</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container container text-center my-3 mb-2 pt-2" id="similar-waste">
                <div class="row">
                    <div class="col">
                        <div class="intro">
                            <h2 class="text-center">연관된 폐기물</h2>
                        </div>
                    </div>
                </div>
                <div class="row"><c:forEach items="${relatedProducts}" var="relatedProduct">
    <div class="col-6 col-lg-3 spacer-slider">
        <figure class="figure">
            <a href="/product?dic_no=${relatedProduct.getDic_no()}">
                <img class="img-fluid" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" src="${relatedProduct.getThumbnail()}" title="${relatedProduct.getEng_name()}" loading="lazy" width="640px" height="640px" alt="사전 이미지">
            </a>
            <figcaption class="figure-caption">${relatedProduct.getName()}</figcaption>
        </figure>
    </div>
</c:forEach></div>
            </div>
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
    <script src="assets/js/toast.js"></script>
</body>

</html>