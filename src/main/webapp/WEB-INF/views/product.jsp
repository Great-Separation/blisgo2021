<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>상세정보 - BlisGO</title>
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
    <link rel="stylesheet" href="assets/css/image-slider.css">
    <link rel="stylesheet" href="assets/css/style.css">
<link rel="manifest" href="/manifest.json">
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
        </div><jsp:include page="navbar.jsp">
    <jsp:param name="name" value="value" />
</jsp:include>
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
                                    <div class="btn-group" role="group" id="product-icon"><button class="btn btn-link" id="btn-toast" type="button" data-bs-toggle="toast" onclick="location.href=&#39;dogamBookmark?dic_no=${product.getDic_no()}&#39;" value="${dogamCheck}"><i class="fas fa-bookmark"></i></button><button class="btn btn-link" id="btn-share" type="button" data-bs-target="#modal-share" data-bs-toggle="modal"><i class="fas fa-share-alt"></i></button></div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-auto align-self-center py-1"><i class="fas fa-star" id="product-star"></i><span id="product-rating">${star}/10</span></div>
                                <div class="col align-self-center py-1"><i class="fas fa-book"></i><span>사전코드&gt;<strong>${product.getDic_no()}</strong></span></div>
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
                    <div class="toast fade hide" role="alert" id="liveToast2" aria-live="assertive" aria-atomic="true">
                        <div class="toast-header"><img class="me-2" src="${product.getThumbnail()}" width="50px" height="50px"><strong class="me-auto">이미 추가되었습니다</strong><small>방금</small><button class="btn-close ms-2 mb-1 close" data-bs-dismiss="toast"></button></div>
                        <div class="toast-body" role="alert">
                            <p>분리배출 도우미를 통해 도감에 추가할 수 있습니다&nbsp;</p>
                        </div>
                    </div>
                    <div class="toast fade hide" role="alert" id="liveToast3" aria-live="assertive" aria-atomic="true">
                        <div class="toast-header"><img class="me-2" src="${product.getThumbnail()}" width="50px" height="50px"><strong class="me-auto">로그인 후 추가할 수 있습니다</strong><small>방금</small><button class="btn-close ms-2 mb-1 close" data-bs-dismiss="toast"></button></div>
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
            <figcaption class="figure-caption text-white">${relatedProduct.getName()}</figcaption>
        </figure>
    </div>
</c:forEach></div>
            </div>
        </section>
    </main><jsp:include page="footer.jsp">
    <jsp:param name="name" value="value" />
</jsp:include>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="assets/js/toast.js"></script>
</body>

</html>