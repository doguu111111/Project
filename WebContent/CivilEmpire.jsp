<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Civilwar</title>
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
  background : #C0C0C0;

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


<script type="text/javascript">
var Changefunc = function(){

	//document.getElementById('Civil').innerHTML = '<iframe class ="youtube" width="800" height="480" src="https://www.youtube.com/embed/sVseAYeS8IA?autoplay=1&mute=0&playsinline=1&loop=0&playlist=sVseAYeS8IA&controls=0&disablekb=1&rel=0"frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe><div class="content"><div class="box"><p>帝国内戦</p><a href="DEFCON.jsp"class="button2" >始まった。</a></div><div class="container"></div></div>';
		
}
</script>






</head>
<body>

	<div id = "Civil">
				<iframe class ="Battle"	width="0" height="0" src="http://localhost:8080/Project_git/Source/Gun_Battle.mp"></iframe>
			<div class="box">
  		<p>帝国内戦</p>
  		<div class="main">
				総統の死後、帝国は大混乱に陥った。<br>
				総統が正当な後継者を指名したのにも関わらず、<br>帝国内における強力な派閥が自分たちの未来像で国家を導こうと互いに武装蜂起を開始した。<br>
				今や帝国は、それぞれの指導者に忠誠を誓う部隊によって引き裂かれている。<br>状況の深刻さはまだ分からないが、帝国は中央集権の完全な崩壊に直面しているか、<br>
				あるいは既に崩壊しているかもしれない。<br>
				
				<br>帝国からの爆撃部隊はモスコーヴィエン国家弁務官区の飛行場から軍閥国家に向けて気が滅入るほどの頻度で飛び立ち、<br>
				見えるものすべてを爆撃し、人々の生活のほぼ全てに深刻な悪影響を与えていた。<br>
				自由飛行士団の航空部隊がわずかな好機も逃さずに爆撃部隊を迎撃せんと奮戦していた。<br>
				今、帝国の爆撃は止まり、青い空が顔を覗かせ、一時の平和が訪れている。<br>
				
				
				<br>しかし、帝国に打ち砕かれた軍閥国家は行動を起こそうとしている。
				

  					

				</div>
				<a href="SuperEvent_Empire_CivilWar.jsp"class="button" >確かなる帝国の終焉だ。</a>
				</div>
				
	</div>

</body>


</html>