<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>

</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/inc/header.jsp" %>
	<main id="main">
		<h1> 게시판 <small> 수정하기 </small> </h1>
		
		<form method="POST" action="/toy/board/edit.do">
		<table class="vertical">
			<tr>
				<th>제목</th>
				<td><input type="text" name="subject" id=subject" required class="full" autofocus value="${dto.subject}"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="content" id="content" required class="full">${dto.content}</textarea></td>
			</tr>
		</table>
		<div>
			<button type="button" class="back" onclick="location.href='/toy/board/view.do?seq=${dto.seq}';">돌아가기</button>
			<button type="submit" class="edit primary">수정하기</button>
		</div>
		<input type="hidden" name="seq" value="${dto.seq}">
		</form>
		
	</main>
	
	<script>
	
	</script>
</body>
</html>