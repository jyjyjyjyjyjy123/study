<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://pinnpublic.dothome.co.kr/cdn/example-min.css">
<style>

</style>
</head>
<body>
	<h1>로그인</h1>
	<!-- 아이디와 비밀번호를 입력받는 페이지 -->
	<form method="POST" action="loginok.jsp">
	<table class="vertical">
		<tr>
			<th>아이디</th>
			<td><input type="text" name="id" required></td>
		</tr>
		<tr>
			<th>암호</th>
			<td><input type="password" name="pw" required></td>
		</tr>
	</table>
	
	<div>
		<input type="submit" value="로그인">
	</div>
	</form>
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="http://pinnpublic.dothome.co.kr/cdn/example-min.js"></script>
	<script>
	
	</script>
</body>
</html>