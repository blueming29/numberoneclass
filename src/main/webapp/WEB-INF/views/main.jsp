<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script src="resources/script/all.min.js"></script>
<script src="resources/script/bxSlider.js"></script>
<link rel="stylesheet" href="resources/css/bxSlider.css" />

</head>
<body>
	<div class="mainListContainer">
		<div class="mainListTitleRow">
			<p class="mainListTitle">박스오피스</p>
		</div>
		<div class="slideWrap boxoffice">
			<ul class="multiple_slider">
				<% int i = 1; %>
				<c:forEach var="dto" items="${list }" >
					<li>
						<a href="">
							<div class="movie_img_container">
								<c:choose>
									<c:when test="${dto.movie_img == null }">
										<img class="movie_img" src="http://placehold.it/250x360"/>
									</c:when>
									<c:otherwise>
										<img class="movie_img" src="${dto.movie_img }" />
									</c:otherwise>
								</c:choose>
								<% 
									if(i <= 10) {
								%>
									<div class="ranking_badge">
										<%= i %>					
									</div>
								
								<%
										i++;
									}
								%>
								
							</div>
							<div class="movie_detail">
								<p class="title">${dto.movie_title }</p>
								<p class="spec">${dto.movie_releasedate }<span class="on_display"> / ${dto.movie_nation }</span></p>
								<p class="spec"><span class="on_display">평점</span> ★ ${dto.movie_point }</p>
							</div>
						</a>
					</li>
				</c:forEach>
			</ul>
		</div>
	</div>
</body>
</html>