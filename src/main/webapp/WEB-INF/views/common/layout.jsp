<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
#container {
	width: 100%;
	margin: 0px auto;
	text-align: center;
	border: 0px solid #bcbcbc;
}

#header {
	padding: 5px;
	margin-bottom: 5px;
	border: 0px solid #bcbcbc;
	background-color: lightgreen;
}

#content{
	width: 100%;
	float: left;
	text-align: left;
	border: 0px solid #bcbcbc;
}

#footer{
	clear: both;
	padding: 5px;
	border: 0px solid #bcbcbc;
	background-color: lightblue;
}
</style>

<title><tiles:insertAttribute name="title" /></title>
</head>
<body>
	<div id="container">
		<div id="header">
			<!-- xml에서 지정한 put-attribute의 이름 -->
			<tiles:insertAttribute name="header" />
		</div>
		<div id="content">
			<tiles:insertAttribute name="body" />
		</div>
		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>

	</div>
</body>
</html>