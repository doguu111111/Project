<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

html, body {
  margin: 0;
  padding: 0;
  background-color: black;
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
	//.youtube iframe {
  //position: absolute;
  //top: 0;
  //right: 0;
  //width: 100% !important;
  //height: 100% !important;
//}

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
	
	.button {
  display       : inline-block;
  font-size     : 18pt;        /* 文字サイズ */
  text-align    : center;      /* 文字位置   */
  cursor        : pointer;     /* カーソル   */
  padding       : 12px 10px;   /* 余白       */
  background    : #6666ff;     /* 背景色     */
  color         : #ffffff;     /* 文字色     */
  line-height   : 1em;         /* 1行の高さ  */
  transition    : .3s;         /* なめらか変化 */
  box-shadow    : 1px 1px 2px #666666;  /* 影の設定 */
  border        : 2px solid #6666ff;    /* 枠の指定 */
  position: relative;
  left: 1300px;
  top: 750px;
}
.button:hover {
  box-shadow    : none;        /* カーソル時の影消去 */
  color         : #6666ff;     /* 背景色     */
  background    : #ffffff;     /* 文字色     */
}
</style>


<script type="text/javascript">
var Changefunc = function(){

		document.getElementById('OP').innerHTML = '<iframe class ="youtube" src="http://localhost:8080/Project_git/ProjectThree_debug/index.html" width="1000" height="700" scrolling="no" frameborder="0"></iframe>';
		
}
</script>






</head>
<body>
	<div id = "OP">
  <iframe class ="youtube" width="800" height="500" src="https://www.youtube.com/embed/edwLI4pZ82A?controls=0&autoplay=1&rel=0&loop=1&showinfo=0&disablekb=1&playsinline=1&playlist=edwLI4pZ82A" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

  <div class="content">
  				<input type="button" value="Skip" class="button" onclick="Changefunc()">
    <div class="container">
    </div>
  </div>
	</div>


</body>
</html>