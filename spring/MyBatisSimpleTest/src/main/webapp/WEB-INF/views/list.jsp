<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Example</title>
<link rel="stylesheet" href="https://me2.do/5BvBFJ57">
</head>
<body>

	<table>
		<c:forEach items="${list}" var="dto">		
		<tr>
			<td>${dto.name}</td>
			<td>${dto.age}</td>
			<td>${dto.gender}</td>
			<td>${dto.address}</td>
			<td>${dto.regdate}</td>
		</tr>
		</c:forEach>
	</table>
	
	<hr>
	
	<div>
		<div>${dto.name}</div>
		<div>${dto.age}</div>
		<div>${dto.gender}</div>
		<div>${dto.address}</div>
		<div>${dto.regdate}</div>
	</div>
	

	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script>
	
	</script>
</body>
</html>