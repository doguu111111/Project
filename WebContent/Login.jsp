<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ようこそ</title>

<style>
  body {
    /*background: #e0ffff;*/
    background: #ffffff;
  	width: 500px;
  	padding: 10px;
  	text-align: center;
  	border: 10px solid #add8e6;
  	margin: 30px auto;
  }

p {
  position: relative;
  padding-left: 25px;
  font-size: 200%;
}
p:before {
  position: absolute;
  content: '';
  bottom: -3px;
  left: 0;
  width: 0;
  height: 0;
  border: none;
  border-left: solid 15px transparent;
  border-bottom: solid 15px rgb(119, 195, 223);
}
p:after {
  position: absolute;
  content: '';
  bottom: -3px;
  left: 10px;
  width: 100%;
  border-bottom: solid 3px rgb(119, 195, 223);
}

.A{
     padding-left: 150px;
	 width: 200px;
}

.B{
	 width: 200px;
	 padding-left: 150px;
}

form{
	font-size:100%;
}
</style>
</head>
<body>
 <div>
<p>ログイン</p>
<form method="get" action="Login_method">
<div class ="A">
			ユーザID  <input type="text" name="id"><br>
</div>
<div class ="B">
			パスワード  <input type="text" name="pass"><br>
</div>
	<button type="submit">ログイン</button>
</form>
 </div>
 	<p>アカウント作成</p>
<form method="get" action="CreateA.jsp">
	<button type="submit">アカウント作成</button>
	</form>
 
</body>
</html>