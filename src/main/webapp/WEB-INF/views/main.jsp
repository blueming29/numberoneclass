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

	<%-- 	<h1>메인페이지 입니다.</h1>
	<c:forEach var="dto" items="${list }">
 		${dto.movie_title } <br />
	
	</c:forEach> --%>
	<div class="slide_wrapper">
		<ul class="slides">
			<li><img src="http://placehold.it/300x300" alt=""></li>
			<li><img src="http://placehold.it/300x300" alt=""></li>
			<li><img src="http://placehold.it/300x300" alt=""></li>
			<li><img src="http://placehold.it/300x300" alt=""></li>
			<li><img src="http://placehold.it/300x300" alt=""></li>
			<li><img src="http://placehold.it/300x300" alt=""></li>
			<li><img src="http://placehold.it/300x300" alt=""></li>
			<li><img src="http://placehold.it/300x300" alt=""></li>

		</ul>

	</div>
	<p class="controls">
		<span class="prev">prev</span>
		<span class="next">next</span>
	</p>
	
	<script src="resources/script/sliderScript.js"></script>
</body>
</html>