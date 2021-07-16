<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ようこそ</title>
<style>
 body {
  color: gray;
}
.a{
	color: red; 
}
</style>
</head>
<body>



<p>ログイン</p>
<div class="a">
<form method="get" action="Login_method">
			ユーザID  <input type="text" name="id"><br>
			パスワード  <input type="text" name="pass"><br>
	<button type="submit">ログイン</button>
</form>
</div>
<p>アカウント作成</p>
<form method="get" action="CreateA.jsp">
	<button type="submit">アカウント作成</button>
</form>
</body>
</html>