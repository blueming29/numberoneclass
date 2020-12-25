<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/sliderStyle.css" />

</head>
<body>
	<div class="slide_outer_wrap">
		<div class="slide_wrapper">
			<h3 class="subject">박스오피스</h3>
			<div class=slide_container>
				<ul class="slides">
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
								<p class="spec">${dto.movie_releasedate } / ${dto.movie_nation }</p>
								<p class="spec">평점 ★ ${dto.movie_point }</p>
							</div>
						</a>
						</li>
					</c:forEach>
				</ul>
				<div class="prev"></div>
				<div class="next"></div>
			</div>
		</div>

	</div>


	<script src="resources/script/sliderScript.js"></script>
</body>
</html>