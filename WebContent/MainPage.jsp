<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    String logined = (String)session.getAttribute("logined");
    String id = (String)session.getAttribute("id");
	if(logined==null){
		%><jsp:forward page="Login.jsp" /><%
	}
	out.println("ようこそ"+id+"さん");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メインページ</title>
</head>
<body>
<form method="get" action="Logout">
	<button type="submit">ログアウト</button>
</form>
</body>
</html>