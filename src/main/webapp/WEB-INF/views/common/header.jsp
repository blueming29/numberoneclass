<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="0" width="100%">
		<tr>
			<td><a href="main.do">No.1 CLASS</a></td>
			<td><h1>sample_header</h1></td>
			<td>
				<c:choose>
					<c:when test="${isLogOn == true && member != null}">
						<h3>${member.name }님 환영합니다. | </h3>
						<h3><a href="">로그아웃</a></h3>
					</c:when>
					<c:otherwise>
						<h3><a href="">로그인</a></h3>
					</c:otherwise>
				</c:choose>
			
			</td>
		</tr>
	
	</table>

</body>
</html>