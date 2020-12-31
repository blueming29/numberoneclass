<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>

<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="/boots/resources/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
.d-flex {
width: 400px;}

</style>
</head>


<body>




	<!-- 00search func -->

<%-- 	<nav class="navbar-expand-md fixed-top navbar navbar-light bg-light">
	<div class="container-fluid">
		<a class="navbar-brand" href="main.do"><img
			src="resources/image/movielex.png" /></a>
		
		<!--  <button class="navbar-toggler collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
		 -->
		  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="true" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
		
		    <div class="navbar-collapse collapse show" id="navbarCollapse" style="">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
		
		
		<form class=" d-flex">
			<input class="form-control me-2" type="search"
				placeholder="키워드를 입력하세요" aria-label="Search">
			<button class="btn btn-outline-success" type="submit">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
					fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
				<path
					d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
				</svg>
			</button>
		</form>
		
	<c:choose>
		<c:when test="${isLogOn == true && member != null}">
			<div>
			  <li class="nav-item active">	<h3>${member.name }님환영합니다.|</h3> </li>
			  <li class="nav-item active">	<a href="#"><button type="button">
						class="btn btn-outline-primary">로그아웃</button></a>  </li>
			</div>
		</c:when>
		<c:otherwise>
			<div>
			  <li class="nav-item active">	<a href="#"><button type="button"
						class="btn btn-outline-primary">로그인</button></a> </li>
			  <li class="nav-item active">	 <a href="#"><button type="button" class="btn btn-outline-success">회원가입</button></a> </li>
			</div>

		</c:otherwise>
	</c:choose>

</ul>
	</div>
	</div>
	</nav>  --%>
	
	
 <nav class="navbar-expand-md fixed-top navbar navbar-light bg-light">
	<div class="container-fluid">
		<a class="navbar-brand" href="main.do"><img
			src="resources/image/movielex.png" /></a>
		<form class=" d-flex">
			<input class="form-control me-2" type="search"
				placeholder="키워드를 입력하세요" aria-label="Search">
			<button class="btn btn-outline-success" type="submit">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
					fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
				<path
					d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
				</svg>
			</button>
		</form>
		
	<c:choose>
		<c:when test="${isLogOn == true && member != null}">
			<div>
				<h3>${member.name }님환영합니다.|</h3>
				<a href="#"><button type="button"
						class="btn btn-outline-primary">로그아웃</button></a>
			</div>
		</c:when>
		<c:otherwise>
			<div>
				<a href="#"><button type="button"
						class="btn btn-outline-primary">로그인</button></a> <a href="#"><button
						type="button" class="btn btn-outline-success">회원가입</button></a>
			</div>

		</c:otherwise>
	</c:choose>


	</div>
	</nav>  



</body>
</html>