<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<script>
//window.onload=function(){
//setInterval("document.getElementById('SNS').src='./SNS.jsp'",1000);
//}

function reload(){
	
	location.reload("document.getElementById('SNS').src='./SNS.jsp'");
	
}


</script>

<p>チャット</p>
	<form method="get" action="Sns_method">
			<div class ="A">
			つぶやく内容  <input type="text" name="mutter"><br>
			</div>
	<button type="submit">つぶやく</button>
	<input type="button"  value="更新" onclick="reload()">
	</form>

<iframe src="./SNS.jsp" id = "SNS" width="800" height="500"></iframe>


</body>
</html>