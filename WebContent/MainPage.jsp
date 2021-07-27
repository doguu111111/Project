<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メインページ</title>
<style>
body {
  color: #668ad8;
  width: 500px;/*ボックス自体の横の長さ*/
  border: double 5px #668ad8;/*二重線 太さ 色*/
  background: #f1f8ff;
  padding: 0.5em 0.5em 0.5em 2em;
  margin: 30px auto;
  position: relative;
 }

.A{
	text-align: text-right;
	padding: 5px;
	position: absolute;
    right: 0;
    bottom: 10;
 }
.B{
	width: 120px; /* 下線の長さ */
	padding: 10px;
	border-bottom: solid 3px #cce4ff;
  	position: relative;
}

.B:after {
  position: absolute;
  content: " ";
  display: block;
  border-bottom: solid 3px #5472cd;
  bottom: -3px;
  width: 30%; /* 下線部の色が濃い部分の割合 */
}

.C{
	width: 120px;
	padding: 10px;
	border-bottom: solid 3px #cce4ff;
  	position: relative;
}

.C:after {
  position: absolute;
  content: " ";
  display: block;
  border-bottom: solid 3px #5472cd;
  bottom: -3px;
  width: 30%;
}

</style>
</head>
<body>
<div class ="A">
<form method="get" action="Logout">

	<button type="submit">ログアウト</button>
</form>
</div>
<div class ="B">
<form method="get" action="Chat.jsp">

	<button type="submit">SNS</button>
</form>
</div>
<div class = "C">
<form method="get" action="Gamecata.jsp">

	<button type="submit">ゲーム</button>
</form>
</div>
</body>
</html>