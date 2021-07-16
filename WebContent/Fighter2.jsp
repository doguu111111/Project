<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>


* {
  padding: 0;
  margin: 0;
}

	youtube{
  position: relative;
  max-width: 100%;
  padding-top: 56.25%;
	}
	.youtube iframe {
  position: absolute;
  top: 0;
  right: 0;
  width: 100% !important;
  height: 100% !important;
}
	

</style>



</head>
<body>

<div id="youtube">
  <iframe style="max-width:100%;" width="560" height="315" src="https://www.youtube.com/embed/edwLI4pZ82A?autoplay=1" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

</body>
</html>