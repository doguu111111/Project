<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

.main{
		color: #000011;

}

.box {
    padding: 0.5em 1em;
    margin: 2em 0;
    font-weight: bold;
    border: solid 3px #000000;
    text-align: center;
    background: #999999;
}
.box p {
    margin: 0; 
    padding: 0;
}



body{
    background: #111111;
  	//width: 1500px;
  //	padding: 10px;
  	//text-align: center;
  	//border: 20px solid #add8e6;
  	//margin: 40px auto;
}

	.youtube{
    position: fixed;
  	left: 50%;
  	top: 50%;
  	transform: translateX(-50%)
               translateY(-50%);

}
  p{
  color: orange;
  font-size: 20px;
  
}

.button {
  display: inline-block;
  max-width: 300px;
  text-align: left;
  font-size: 20px;
  color: #111111;
  text-decoration: none;
  font-weight: bold;
  padding: 8px 16px;
  border-radius: 4px;
  transition: .4s;

  position: relative;
  left: 0px;
  top: 80px;
}

	.youtube{
  //position: relative ;
  //padding-top: 56.25%;
  //display: block;
  //margin: 0 auto;
  //max-width: 100%;
    position: fixed;
  	left: 50%;
  	top: 50%;
  	transform: translateX(-50%)
               translateY(-50%);


	}
	
		.content {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  //color: #fff;
}

.container {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 100%;
  transform: translate(-50%, -50%);
}
	
.button2 {
  display: inline-block;
  max-width: 300px;
  text-align: center;
  font-size: 20px;
  color: #111111;
  text-decoration: none;
  font-weight: bold;
  padding: 8px 16px;
  border-radius: 4px;
  transition: .4s;
  background : #C0C0C0;

  position: relative;
  left: 10px;
  top: 650px;
}



	

</style>






</head>
<body>

<div class="box">
<p>帝国内戦</p>
<iframe class ="youtube" width="800" height="480" src="https://www.youtube.com/embed/sVseAYeS8IA?autoplay=1&mute=0&playsinline=1&loop=0&playlist=sVseAYeS8IA&controls=0&disablekb=1&rel=0"frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<div class="content">
<a href="DEFCON.jsp"class="button2" >始まった。</a>
</div>
<div class="container">
</div>
</div>


</body>
</html>