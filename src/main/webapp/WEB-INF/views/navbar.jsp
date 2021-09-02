<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav
	class="navbar navbar-light navbar-expand-lg fixed-top bg-white shadow-sm justify-content-between"
	id="transmenu">
	<div class="container">
		<a class="navbar-brand logo" id="navbar-brand" href="/">분리수GO!</a>
		<button data-bs-toggle="collapse"
			class="navbar-toggler collapsed mr-auto p-0"
			data-bs-target="#navbar-collapse" id="navbar-toggle">
			<span class="visually-hidden">Toggle navigation</span><span
				class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbar-collapse">
			<div class="dropdown d-lg-none navbar-left" id="usericon-mobile">
				<a aria-expanded="false" data-bs-toggle="dropdown"
					class="text-decoration-none text-reset"><c:choose>
						<c:when test="${mem == null}">
						</c:when>
						<c:otherwise>
							<div class="container">
								<hr id="usericon-mobile-hr-top" />
								<div class="row">
									<div
										class="col d-flex justify-content-start align-items-center p-0">
										<img class="img-fluid rounded-circle"
											src="https://i.pravatar.cc/200" width="40px" height="40px"
											alt="프로필이미지" /><span>${mem.getNickname()}</span>
									</div>
									<div class="col d-flex justify-content-end align-items-center">
										<span class="user-points"><i
											class="fas fa-coins user-points-coin"></i>${mem.getMempoint()}</span>
									</div>
								</div>
								<hr id="usericon-mobile-hr-bottom" />
							</div>
						</c:otherwise>
					</c:choose></a>
				<div class="dropdown-menu dropdown-menu-end">
					<a class="dropdown-item" href="qrlogin.html">QR생성</a><a
						class="dropdown-item" href="mypage.html">마이페이지</a><a
						class="dropdown-item" href="mypage.html">로그아웃</a>
				</div>
			</div>
			<ul class="navbar-nav ms-auto">
				<li class="nav-item dropdown" id="service-list"><a
					class="dropdown-toggle nav-link" aria-expanded="false"
					data-bs-toggle="dropdown" href="#">검수목록</a>
					<div class="dropdown-menu">
						<h6 class="dropdown-header">회원</h6>
						<a class="dropdown-item" href="/mypage">마이페이지(검수용)</a><a
							class="dropdown-item" href="/register" title="사용자 계정을 추가합니다">회원가입(검수용)</a><a
							class="dropdown-item" href="/login">로그인(검수용)</a><a
							class="dropdown-item" href="/qrlogin">QR로그인(검수용)</a><a
							class="dropdown-item" href="/verify">인증(검수용)</a>
						<div class="dropdown-divider"></div>
						<h6 class="dropdown-header">사전</h6>
						<a class="dropdown-item" href="/dictionary">사전(검수용)</a><a
							class="dropdown-item" href="/product">사전내용(검수용)</a>
						<div class="dropdown-divider"></div>
						<h6 class="dropdown-header">게시판</h6>
						<a class="dropdown-item" href="/community">커뮤니티(검수용)</a><a
							class="dropdown-item" href="/content">글내용(검수용)</a><a
							class="dropdown-item" href="/write">글쓰기(검수용)</a>
						<div class="dropdown-divider"></div>
						<h6 class="dropdown-header">부가</h6>
						<a class="dropdown-item" href="/faq">FAQ(검수용)</a><a
							class="dropdown-item" href="/errorHandler">오류페이지(검수용)</a><a
							class="dropdown-item" href="/introduce">소개(검수용)</a>
					</div></li>
				<li class="nav-item" id="encyclopedia"><a class="nav-link"
					data-bs-toggle="tooltip" data-bss-tooltip=""
					data-bs-placement="bottom" href="/dictionary" title="분리배출 사전입니다">사전</a></li>
				<li class="nav-item" id="community"><a class="nav-link"
					data-bs-toggle="tooltip" data-bss-tooltip=""
					data-bs-placement="bottom" href="/community"
					title="자유롭게 글을 작성할 수 있습니다">게시판</a></li>
				<li class="nav-item" id="login"><a class="nav-link"
					data-bs-toggle="tooltip" data-bss-tooltip=""
					data-bs-placement="bottom" id="login-flag" href="/login"
					title="회원이용시 다양한 혜택을 이용할 수 있습니다">로그인</a>
				<c:if test="${mem != null}">
						<script>
							document.getElementById("login-flag").className = "nav-link d-none";
						</script>
					</c:if></li>
			</ul>
		</div>
		<div class="dropstart d-none d-lg-block navbar-right"
			id="usericon-desktop">
			<c:choose>
				<c:when test="${mem == null}">
				</c:when>
				<c:otherwise>
					<a aria-expanded="false" data-bs-toggle="dropdown"
						class="text-decoration-none text-reset"> <img
						class="img-fluid rounded-circle" id="usericon-desktop-image"
						src="https://i.pravatar.cc/200" width="40px" height="40px"
						alt="프로필이미지" />
					</a>
					<div class="dropdown-menu">
						<h6 class="dropdown-header">${mem.getNickname()}<span
								class="float-end user-points"><i
								class="fas fa-coins user-points-coin"></i>${mem.getMempoint()}</span>
						</h6>
						<a class="dropdown-item" href="/qrlogin">QR생성</a> <a
							class="dropdown-item" href="/mypage">마이페이지</a> <a
							class="dropdown-item" href="/logout">로그아웃</a>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</nav>