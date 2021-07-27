<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>確認画面</title>
<style>
p{
	font-size :20pt;
}
</style>
</head>
<body>

<%
				String id = request.getParameter("id");
				String pass = request.getParameter("pass");
				
				id=new String(id.getBytes("8859_1"),"Shift_JIS");
				pass=new String(pass.getBytes("8859_1"),"Shift_JIS");

%>



<p>この情報でよろしいですか</p>
<form method="get" action="CreateA_Method">
		<input type="hidden" name="id" value=<%=id%>>
				<input type="hidden" name="pass" value=<%=pass%>>
	
	<button type="submit">はい</button>
</form>
<form method="get" action="Login.jsp">
	<button type="submit">いいえ</button>
</form>
</body>
</html>