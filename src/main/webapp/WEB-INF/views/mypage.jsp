<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>마이페이지 - BlisGO</title>
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
    <link rel="stylesheet" href="assets/css/table-scrollable-layout.css">
<link rel="manifest" href="/manifest.json"><style>
.pass_input_re_1{
		color : green;
		display : none;
	}

.pass_input_re_2{
		color : red;
		display : none;
	}
</style>
</head>

<body>
    <header id="header">
        <div id="nav-white-space"></div>
        <div class="container-fluid text-white d-none d-lg-block" id="highlight">
            <div class="row">
                <div class="col text-center">
                    <h1>마이페이지<br></h1>
                </div>
            </div>
        </div><jsp:include page="navbar.jsp">
    <jsp:param name="name" value="value" />
</jsp:include>
    </header>
    <main class="pt-2 pb-2">
        <div class="container p-0" id="mypage">
            <article>
                <div>
                    <ul class="nav nav-tabs mb-2" role="tablist" id="myTab">
                        <li class="nav-item" role="presentation"><a class="nav-link active" role="tab" data-bs-toggle="tab" id="description-tab" href="#account">회원정보 조회/수정</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" role="tab" data-bs-toggle="tab" id="reviews-tab" href="#dogam">도감</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" role="tab" data-bs-toggle="tab" id="specifications-tabs" href="#leaderboard">리더보드</a></li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active description" role="tabpanel" id="account">
                            <div class="row mb-3 m-0">
                                <div class="col-lg-4">
                                    <div class="card shadow-sm mb-3">
                                        <div class="card-body text-center">
                                            <form>
                                                <div class="row">
                                                    <div class="col"><img class="rounded-circle mb-3 mt-4" src="${mem.getProfile_image()}" width="160px" height="160px" loading="lazy" alt="프로필이미지">
                                                        <p class="lead">${mem.getNickname()}</p>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col"><button class="btn btn-primary" type="submit">이미지 변경</button></div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="card shadow-sm mb-4">
                                        <div class="card-header py-2">
                                            <p class="lead text-primary m-0 fw-bold">활동통계</p>
                                        </div>
                                        <div class="card-body">
                                            <div id="activity-chart"><canvas data-bss-chart="{&quot;type&quot;:&quot;bar&quot;,&quot;data&quot;:{&quot;labels&quot;:[&quot;일&quot;,&quot;월&quot;,&quot;화&quot;,&quot;수&quot;,&quot;목&quot;,&quot;금&quot;,&quot;토&quot;],&quot;datasets&quot;:[{&quot;label&quot;:&quot;searchCount&quot;,&quot;backgroundColor&quot;:&quot;#47d6c1&quot;,&quot;borderColor&quot;:&quot;#47d6c1&quot;,&quot;borderWidth&quot;:&quot;&quot;,&quot;data&quot;:[&quot;0&quot;,&quot;0&quot;,&quot;0&quot;,&quot;3&quot;,&quot;0&quot;,&quot;0&quot;,&quot;1&quot;]}]},&quot;options&quot;:{&quot;maintainAspectRatio&quot;:true,&quot;legend&quot;:{&quot;display&quot;:false,&quot;labels&quot;:{&quot;bold&quot;:false,&quot;italic&quot;:false,&quot;fontStyle&quot;:&quot;normal&quot;},&quot;position&quot;:&quot;top&quot;},&quot;title&quot;:{&quot;fontStyle&quot;:&quot;normal&quot;,&quot;position&quot;:&quot;top&quot;},&quot;scales&quot;:{&quot;xAxes&quot;:[{&quot;gridLines&quot;:{&quot;drawBorder&quot;:true,&quot;drawTicks&quot;:true,&quot;borderDash&quot;:[&quot;1&quot;],&quot;zeroLineBorderDash&quot;:[&quot;1&quot;],&quot;drawOnChartArea&quot;:true},&quot;ticks&quot;:{&quot;fontStyle&quot;:&quot;normal&quot;,&quot;beginAtZero&quot;:true}}],&quot;yAxes&quot;:[{&quot;gridLines&quot;:{&quot;drawBorder&quot;:true,&quot;drawTicks&quot;:true,&quot;borderDash&quot;:[&quot;1&quot;],&quot;zeroLineBorderDash&quot;:[&quot;1&quot;],&quot;drawOnChartArea&quot;:true},&quot;ticks&quot;:{&quot;fontStyle&quot;:&quot;normal&quot;,&quot;beginAtZero&quot;:true}}]}}}"></canvas></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-8">
                                    <div class="card shadow-sm mb-4">
                                        <div class="card-header d-none d-lg-block py-2">
                                            <p class="lead text-primary m-0 fw-bold">사용자 설정</p>
                                        </div>
                                        <div class="card-body">
                                            <form method="post">
                                                <div class="row">
                                                    <div class="col py-1"><label class="form-label" for="username"><strong>사용자 이름</strong></label><input class="form-control" type="text" id="username" placeholder="옥재욱" name="nickname" required="" minlength="2" maxlength="8" value="${mem.getNickname()}"></div>
                                                </div>
                                                <div class="row">
                                                    <div class="col py-1"><label class="form-label" for="email"><strong>이메일</strong></label><input class="form-control" type="email" id="email" name="email" readonly="readonly" value="${mem.getEmail()}"></div>
                                                </div>
                                                <div class="row">
                                                    <div class="col py-1"><button class="btn btn-primary" type="submit" formaction="/mypageModifyAccount">변경</button><button class="btn btn-warning float-end" type="button" data-bs-target="#modal-delete-account" data-bs-toggle="modal">탈퇴</button></div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="card shadow-sm mb-4">
                                        <div class="card-header d-none d-lg-block py-2">
                                            <p class="lead text-primary m-0 fw-bold">비밀번호 설정</p>
                                        </div>
                                        <div class="card-body">
                                            <form method="post" action="modifyPassword">
                                                <div class="row">
                                                    <div class="col-auto flex-fill py-1"><label class="form-label"><strong>이전 비밀번호</strong></label><input class="form-control" type="password" name="beforePass"></div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-auto flex-fill py-1"><label class="form-label"><strong>새 비밀번호</strong></label><input class="form-control" type="password" id="input-new-pass" name="newPass"></div>
                                                    <div class="col-auto flex-fill py-1"><label class="form-label"><strong>새 비밀번호 확인</strong><br></label><input class="form-control" type="password" id="input-pass-Check"><span class="pass_input_re_1">비밀번호가 일치 합니다.<br></span><span class="pass_input_re_2">비밀번호가 불일치합니다.<br></span></div>
                                                </div>
                                                <div class="row">
                                                    <div class="col py-1">
                                                        <div class="input-group"><button class="btn btn-primary" type="submit">변경</button>
                                                            <div class="input-group-text p-0 m-0 alert-warning">
                                                            <c:choose>
                                                        		<c:when test="${passCheck==null}">
    															</c:when>
    															<c:otherwise>
                                                            		<div class="alert alert-warning flex-fill input-group-text m-0 p-1" role="alert"><span style="font-size: 14px;"><i class="fas fa-exclamation-triangle"></i>비밀번호가 틀립니다</span></div>
                                                        		</c:otherwise>
                                                        	</c:choose>
															</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" role="tabpanel" id="dogam">
                            <div class="card">
                                <div class="card-body">
                                    <div class="row" id="dogamList">
                                    <c:forEach items="${dogamList}" var="dogam">
                                        <div class="col-6 col-sm-6 col-md-6 col-lg-4 col-xl-3 col-xxl-2 p-2">
                                            <figure class="figure"><a href="/product?dic_no=${dogam.getDic_no()}"><img class="img-fluid" data-bs-toggle="tooltip" data-bss-tooltip="" data-bss-hover-animate="pulse" src="${dogam.getThumbnail()}" title="${dogam.getEng_name()}" loading="lazy" width="640px" height="640px" alt="사전 이미지"></a>
                                                <figcaption class="figure-caption">${dogam.getName()}</figcaption>
                                            </figure>
                                        </div>
                                    </c:forEach> 
                                    </div>
                                </div>
                                <div class="card-body text-center p-0">
                                    <div class="bg-light bg-gradient shadow-sm"><button class="btn btn-link w-100 text-decoration-none text-secondary" type="button" id="loadmore"><span>더보기</span><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-chevron-down">
                                                <path fill-rule="evenodd" d="M1.646 4.646a.5.5 0 0 1 .708 0L8 10.293l5.646-5.647a.5.5 0 0 1 .708.708l-6 6a.5.5 0 0 1-.708 0l-6-6a.5.5 0 0 1 0-.708z"></path>
                                            </svg></button></div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade specifications" role="tabpanel" id="leaderboard">
                            <div class="row m-0">
                                <div class="col-lg-6 p-1">
                                    <div class="card shadow-sm mx-auto bg-white" id="ranking">
                                        <div class="card-header py-2">
                                            <p class="lead text-primary m-0 fw-bold">순위</p>
                                        </div>
                                        <div class="card-body p-0">
                                            <div class="row m-0">
                                                <div class="col-3 text-center align-self-end p-1">
                                                    <h2><i class="fas fa-trophy leaderboard-icon-second"></i></h2><img class="rounded-circle img-fluid leaderboard-user-img" src="https://i.pravatar.cc/200?img=2" width="150px" height="150px" alt="프로필이미지">
                                                    <p class="lead m-0">${rankList[1].getNickname()}<br></p><span>${rankList[1].getMemPoint()}</span>
                                                </div>
                                                <div class="col-6 text-center align-self-center p-1">
                                                    <h1><i class="fas fa-trophy leaderboard-icon-first"></i></h1><img class="rounded-circle img-fluid leaderboard-user-img" src="https://i.pravatar.cc/200?img=1" width="200px" height="200px" alt="프로필이미지">
                                                    <p class="lead m-0">${rankList[0].getNickname()}<br></p><span>${rankList[0].getMemPoint()}</span>
                                                </div>
                                                <div class="col-3 text-center align-self-end p-1">
                                                    <h3><i class="fas fa-trophy leaderboard-icon-third"></i></h3><img class="rounded-circle img-fluid" id="leaderboard-user-img" src="https://i.pravatar.cc/200?img=3" width="100px" height="100px" alt="프로필이미지">
                                                    <p class="lead m-0">${rankList[2].getNickname()}<br></p><span>${rankList[2].getMemPoint()}</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="card-body p-0">
                                            <div class="table-responsive scrollable-table">
                                                <table class="table table-hover table-sm table-fixed">
                                                	<c:forEach items="${rankList}" var="rank" begin="3" end="49">
                                                    <tbody>
                                                        <tr>
                                                            <td class="col-1" scope="row">
                                                                <div class="row m-0">
                                                                    <div class="col-auto text-start align-self-center"><span>${rank.getRankNum()}</span></div>
                                                                    <div class="col-auto flex-fill align-self-center p-0"><img class="rounded-circle img-fluid leaderboard-user-img" src="https://i.pravatar.cc/200?img=4" width="40px" height="40px" alt="프로필이미지"><span>${rank.getNickname()}<br></span></div>
                                                                    <div class="col-auto text-end align-self-center ms-auto"><span>${rank.getMemPoint()}</span></div>
                                                                </div>
                                                            </td>
                                                        </tr>              
                                                    </tbody>                                                	
                                                    <tfoot>
                                                        <tr class="table-light">
                                                            <td class="col-1" scope="row">
                                                            <c:if test="${rank.getNickname() == mem.getNickname()}">
                                                                <div class="row m-0">   
                                                                    <div class="col-auto text-end align-self-center"><span>${rank.getRankNum()}</span></div>
                                                                    <div class="col-auto flex-fill align-self-center p-0"><img class="rounded-circle img-fluid leaderboard-user-img" src="https://i.pravatar.cc/200" width="40px" height="40px" alt="프로필이미지"><span>${mem.getNickname()}</span></div>
                                                                    <div class="col-auto text-end align-self-center ms-auto"><span><i class="fas fa-coins user-points-coin"></i>${mem.getMemPoint()}</span></div>
                                                                </div>
                                                            </c:if>  
                                                            </td>
                                                        </tr>
                                                    </tfoot>
                                                    </c:forEach>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 p-1">
                                    <div class="card shadow-sm mx-auto bg-white" id="achievement">
                                        <div class="card-header shadow-sm py-2">
                                            <p class="lead text-primary m-0 fw-bold">업적</p>
                                        </div>
                                        <div class="card-body p-0">
                                            <div class="table-responsive scrollable-table">
                                                <table class="table table-hover table-sm table-fixed">
                                                    <tbody style="height:73vh">
                                                        <tr>
                                                            <td>
                                                                <div class="row m-0">
                                                                    <div class="col-3 text-center align-self-center"><img class="img-fluid" src="assets/img/achievements/001-medal-47.png"></div>
                                                                    <div class="col-9 align-self-center">
                                                                        <h2>Heading</h2>
                                                                        <p>Paragraph</p>
                                                                        <div class="progress">
                                                                            <div class="progress-bar bg-success" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">80%</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="row m-0">
                                                                    <div class="col-3 text-center align-self-center"><img class="img-fluid" src="assets/img/achievements/002-medal-46.png"></div>
                                                                    <div class="col-9 align-self-center">
                                                                        <h2>Heading</h2>
                                                                        <p>Paragraph</p>
                                                                        <div class="progress">
                                                                            <div class="progress-bar bg-success" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">60%</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="row m-0">
                                                                    <div class="col-3 text-center align-self-center"><img class="img-fluid" src="assets/img/achievements/003-medal-45.png"></div>
                                                                    <div class="col-9 align-self-center">
                                                                        <h2>Heading</h2>
                                                                        <p>Paragraph</p>
                                                                        <div class="progress">
                                                                            <div class="progress-bar bg-success" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%;">20%</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="row m-0">
                                                                    <div class="col-3 text-center align-self-center"><img class="img-fluid" src="assets/img/achievements/004-trophy-21.png"></div>
                                                                    <div class="col-9 align-self-center">
                                                                        <h2>Heading</h2>
                                                                        <p>Paragraph</p>
                                                                        <div class="progress">
                                                                            <div class="progress-bar bg-success" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%;">100%</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="row m-0">
                                                                    <div class="col-3 text-center align-self-center"><img class="img-fluid" src="assets/img/achievements/005-trophy-20.png"></div>
                                                                    <div class="col-9 align-self-center">
                                                                        <h2>Heading</h2>
                                                                        <p>Paragraph</p>
                                                                        <div class="progress">
                                                                            <div class="progress-bar bg-success" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">80%</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="row m-0">
                                                                    <div class="col-3 text-center align-self-center"><img class="img-fluid" src="assets/img/achievements/006-medal-44.png"></div>
                                                                    <div class="col-9 align-self-center">
                                                                        <h2>Heading</h2>
                                                                        <p>Paragraph</p>
                                                                        <div class="progress">
                                                                            <div class="progress-bar bg-success" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100" style="width: 15%;">15%</div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
        </div>
    </main>
    <div class="modal fade" role="dialog" tabindex="-1" id="modal-delete-account">
        <div class="modal-dialog modal-dialog-centered" role="document">
        <form method="post">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">회원탈퇴</h4><button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>탈퇴 후 데이터는 모두 사라지며 복구할 수 없습니다.</p>
                </div>
                <div class="modal-footer"><button class="btn btn-light" type="button" data-bs-dismiss="modal">취소</button><button class="btn btn-danger" type="submit" formaction="/mypageDeleteAccount">확인</button></div>
            </div>
        </form>
        </div>
    </div><jsp:include page="footer.jsp">
    <jsp:param name="name" value="value" />
</jsp:include>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.bundle.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="assets/js/pass-check.js"></script>
    <script src="assets/js/dogam-more.js"></script>
</body>

</html>