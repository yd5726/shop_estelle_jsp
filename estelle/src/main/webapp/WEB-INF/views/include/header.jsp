<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap"
	rel="stylesheet">
<link href="css/header.css?<%=new java.util.Date()%>" rel="stylesheet"
	type="text/css">
<div id="header_wrap">
	<div id="mheader">
		<div class="h_sec01">
			<div class="h_sec01_inner">
				<div class="top_logo">
					<a href="/">Estelle</a>
				</div>
				<div id="slideCateList" class="swiper-container">
					<ul class="categoryList cboth swiper-wrapper">
						<li class="swiper-slide bold swiper-slide-active"><a>NEW</a>
						</li>
						<li class="swiper-slide bold swiper-slide-next"><a>BEST</a>
						</li>
						<li class="swiper-slide line"></li>
						<li class="swiper-slide"><a>아우터</a>
							<ul class="slideSubMenu">
								<li><a class="cate">자켓</a></li>
								<li><a class="cate">코트</a></li>
								<li><a class="cate">패딩/다운</a></li>
								<li><a class="cate">트렌치코트</a></li>
								<li><a class="cate">야상/점퍼</a></li>
							</ul></li>
						<li class="swiper-slide"><a>원피스</a>
							<ul class="slideSubMenu">
								<li><a class="cate">롱</a></li>
								<li><a class="cate">미니</a></li>
								<li><a class="cate">미디움</a></li>
							</ul></li>
						<li class="swiper-slide"><a>상의</a>
							<ul class="slideMenu">
								<li><a class="cate">니트/가디건</a></li>
								<li><a class="cate">블라우스/셔츠</a></li>
								<li><a class="cate">베스트</a></li>
								<li><a class="cate">티셔츠</a></li>
							</ul></li>
						<li class="swiper-slide"><a href="/bottomes">하의</a>
							<ul class="slideMenu">
								<li><a class="cate">데님</a></li>
								<li><a class="cate">슬렉스</a></li>
								<li><a class="cate">스커트</a></li>
								<li><a class="cate">기타</a></li>
							</ul></li>
						<li class="swiper-slide line"></li>
						<li class="swiper-slide"><a>COMMUNITY</a>
							<ul class="slideMenu">
								<li><a>이벤트</a></li>
								<li><a>리뷰</a></li>
								<li><a>공지사항</a></li>
								<li><a>멤버십</a></li>
								<li><a>FAQ</a></li>
							</ul></li>
					</ul>
				</div>
				<div class="right_menu">
					<ul class="login_menu">
						<li><a><img src="../img/nav/search.png" alt="검색"></a></li>
						<li><a><img src="../img/nav/member.png" alt="멤버"></a></li>
						<li><a><img src="../img/nav/favorite.png" alt="좋아요"></a></li>
						<li><a><img src="../img/nav/basket.png" alt="장바구니"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>