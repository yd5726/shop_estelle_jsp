<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="css/bottomes.css?<%=new java.util.Date()%>" rel="stylesheet"
	type="text/css">
<div id="main_content">
	<div id="content_wrap">
		<div class="content_title">
			<h2>하의</h2>
			<div>
				<ul>
					<li><a href="bottomes?select_kcode=1">데님</a></li>
					<li><a href="bottomes?select_kcode=2">슬렉스</a></li>
					<li><a href="bottomes?select_kcode=3">스커트</a></li>
				</ul>
			</div>
		</div>
		<div class="content_nav">
			<div class="content_nav_left">
				<a class="on">필터 열기</a> <a class="off">필터 닫기</a>
			</div>
			<div class="content_nav_right">
				<div>
					<form id="searchForm" action="bottomes" method="post">
						<select name="select_kcode" onchange="this.form.submit()">
							<option value="" ${select_kcode eq '' ? 'selected':''}>상품정렬</option>
							<option value="1" ${select_kcode eq '1' ? 'selected':''}>데님</option>
							<option value="2" ${select_kcode eq '2' ? 'selected':''}>슬렉스</option>
							<option value="3" ${select_kcode eq '3' ? 'selected':''}>스커트</option>
						</select>
					</form>
				</div>
			</div>
		</div>
		<div class="content_section">
			<div class="main_section">
				<ul class="prdList">
					<c:forEach items='${kcode_list}' var='vo'>
						<li>
							<div class="box">
								<div class="thumbnail">
									<c:if test="${0 ne vo.pdcpct}">
										<div class="sale_txt">
                                    		${vo.pdcpct}
                                    		<span>%</span>
                                		</div>
                                	</c:if>
									<div class="info_icon"></div>
									<div class="prdImg">
										<a><img src="${vo.pmainphoto}"></a>
									</div>
								</div>
								<div class="description">
									<div class="name">
										<a>${vo.pname}</a>
									</div>
									<ul class="price">
										<c:if test="${0 eq vo.pdcpct}">
											<li><span>${vo.pprice}</span></li>
										</c:if>
										<c:if test="${0 ne vo.pdcpct}">
											<li><span style="color:#aaa; text-decoration:line-through;">${vo.pprice}</span></li>
											<li><span>${vo.pprice - (vo.pprice * (vo.pdcpct / 100))}</span></li>
										</c:if>
									</ul>
								</div>
							</div>
						</li>
					</c:forEach>
				</ul>
			</div>
			<div class="page_section">
				<ul>
					<li><a><img src="../img/svg/btn_page_prev2.svg"></a></li>
					<li><a><img src="../img/svg/btn_page_prev.svg"></a></li>
					<li><a>1</a></li>
					<li><a>2</a></li>
					<li><a>3</a></li>
					<li><a>4</a></li>
					<li><a>5</a></li>
					<li><a><img src="../img/svg/btn_page_next.svg"></a></li>
					<li><a><img src="../img/svg/btn_page_next2.svg"></a></li>
				</ul>
			</div>
		</div>
	</div>
</div>