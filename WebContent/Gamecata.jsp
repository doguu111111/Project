<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

body{


}


button{
	font-size	:20pt;
	position: fixed;
  	left: 50%;
  	top: 13%;
  	transform: translateX(-50%)
               translateY(-50%);
}
  .ribbon21-wrapper {
  display: block;
  position: relative;
  margin: 0 auto;
  padding: 60px 0;
  width: 350px;
  background: #f1f1f1;
  }
.ribbon21 {
  display: inline-block;
  position: absolute;
  left: 0;
  top: 10px;
  box-sizing: border-box;
  padding: 0 10px;
  margin: 0;
  height: 30px;
  line-height: 30px;
  font-size: 18px;
  letter-spacing: 0.1em;
  color: white;
  background: #ff7470;
  box-shadow: 1px -1px 1px rgba(0, 0, 0, 0.1);
}
.ribbon21:before {
  position: absolute;
  content: '';
  top: -8px;
  left: -7px;
  border: none;
  height: 38px;
  width: 7px;
  background: #ff7470;
  border-radius: 5px 0 0 5px;
}
.ribbon21:after {
  position: absolute;
  content: '';
  top: -7px;
  left: -5px;
  border: none;
  height: 7px;
  width: 5px;
  background: #b25552;
  border-radius: 5px 0 0 5px;
}
</style>
</head>
<body>
 <%


 %>

 <div class="ribbon21-wrapper">
  <h3 class="ribbon21">ようこそ!</h3>
  <p> 							</p>
</div>

<form method="get" action="Defcon_Level">

	<button type="submit">✈たのしいこうくうき✈</button>
</form>


</body>
</html>