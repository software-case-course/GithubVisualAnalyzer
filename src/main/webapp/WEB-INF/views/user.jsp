<!DOCTYPE html>
<html>
 <meta charset="utf-8">
    <title>Github可视化系统</title>
    <!-- 引入 echarts.js -->
    <script src="static/js/echarts.js"></script>
    <script src="static/js/jquery.js"></script>
    <script src="static/js/chinaEng.js"></script>
    
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Lumino - Charts</title>

<link href="static/css/bootstrap.css" rel="stylesheet">
<link href="static/css/datepicker3.css" rel="stylesheet">
<link href="static/css/styles.css" rel="stylesheet">

<!--[if lt IE 9]>
<script src="static/js/html5shiv.js"></script>
<script src="static/js/respond.min.js"></script>
<![endif]-->

<script>
	$(function(){
	$.ajax({
             type: "get",
             url: "static/tables/789.json",
             //data: {username:$("#username").val(), content:$("#content").val()},
             dataType: "jsonp",
			 jsonp:"callbackparam",
             success: function(data){
				 
				 console.log(1)
                       obj=data;
			            //img=document.createElement('img');
	//img.src=obj.rows[0].img;
	//document.querySelector('#pi').appendChild(img);
                      },
				 
			 error:function(){
			
				 
			
			 $.ajax({
             type: "get",
             url: "static/tables/langrank.json",
             //data: {username:$("#username").val(), content:$("#content").val()},
             dataType: "json ",
             success: function(data){
				 obj=data;
                       console.log(obj);
			//     img=document.createElement('img');
	      //       img.src=obj.items[0].avatars[1];
				
				//***********************************************************************************All**********
				 document.getElementById("all0").href=obj[0].nodes[0].html_url;
				 document.getElementById("name0").innerHTML=obj[0].nodes[0].login;
				 document.getElementById("id0").innerHTML=obj[0].nodes[0].id;
				 document.getElementById("followers0").innerHTML=obj[0].nodes[0].followers_count;
				 document.getElementById("following0").innerHTML=obj[0].nodes[0].following_count;
				 
				  document.getElementById("all1").href=obj[0].nodes[1].html_url;
				 document.getElementById("name1").innerHTML=obj[0].nodes[1].login;
				 document.getElementById("id1").innerHTML=obj[0].nodes[1].id;
				 document.getElementById("followers1").innerHTML=obj[0].nodes[1].followers_count;
				 document.getElementById("following1").innerHTML=obj[0].nodes[1].following_count;
				 
				  document.getElementById("all2").href=obj[0].nodes[2].html_url;
				 document.getElementById("name2").innerHTML=obj[0].nodes[2].login;
				 document.getElementById("id2").innerHTML=obj[0].nodes[2].id;
				 document.getElementById("followers2").innerHTML=obj[0].nodes[2].followers_count;
				 document.getElementById("following2").innerHTML=obj[0].nodes[2].following_count;
				 
				  document.getElementById("all3").href=obj[0].nodes[3].html_url;
				 document.getElementById("name3").innerHTML=obj[0].nodes[3].login;
				 document.getElementById("id3").innerHTML=obj[0].nodes[3].id;
				 document.getElementById("followers3").innerHTML=obj[0].nodes[3].followers_count;
				 document.getElementById("following3").innerHTML=obj[0].nodes[3].following_count;
				 
				  document.getElementById("all4").href=obj[0].nodes[4].html_url;
				 document.getElementById("name4").innerHTML=obj[0].nodes[4].login;
				 document.getElementById("id4").innerHTML=obj[0].nodes[4].id;
				 document.getElementById("followers4").innerHTML=obj[0].nodes[4].followers_count;
				 document.getElementById("following4").innerHTML=obj[0].nodes[4].following_count;
				 
				  document.getElementById("all5").href=obj[0].nodes[5].html_url;
				 document.getElementById("name5").innerHTML=obj[0].nodes[5].login;
				 document.getElementById("id5").innerHTML=obj[0].nodes[5].id;
				 document.getElementById("followers5").innerHTML=obj[0].nodes[5].followers_count;
				 document.getElementById("following5").innerHTML=obj[0].nodes[5].following_count;
				 
				  document.getElementById("all6").href=obj[0].nodes[6].html_url;
				 document.getElementById("name6").innerHTML=obj[0].nodes[6].login;
				 document.getElementById("id6").innerHTML=obj[0].nodes[6].id;
				 document.getElementById("followers6").innerHTML=obj[0].nodes[6].followers_count;
				 document.getElementById("following6").innerHTML=obj[0].nodes[6].following_count;
				 
				  document.getElementById("all7").href=obj[0].nodes[7].html_url;
				 document.getElementById("name7").innerHTML=obj[0].nodes[7].login;
				 document.getElementById("id7").innerHTML=obj[0].nodes[7].id;
				 document.getElementById("followers7").innerHTML=obj[0].nodes[7].followers_count;
				 document.getElementById("following7").innerHTML=obj[0].nodes[7].following_count;
				
				 //***********************************************************************************C**********
				 document.getElementById("all01").href=obj[1].nodes[0].html_url;
				 document.getElementById("name01").innerHTML=obj[1].nodes[0].login;
				 document.getElementById("id01").innerHTML=obj[1].nodes[0].id;
				 document.getElementById("followers01").innerHTML=obj[1].nodes[0].followers_count;
				 document.getElementById("following01").innerHTML=obj[1].nodes[0].following_count;
				 
				  document.getElementById("all11").href=obj[1].nodes[1].html_url;
				 document.getElementById("name11").innerHTML=obj[1].nodes[1].login;
				 document.getElementById("id11").innerHTML=obj[1].nodes[1].id;
				 document.getElementById("followers11").innerHTML=obj[1].nodes[1].followers_count;
				 document.getElementById("following11").innerHTML=obj[1].nodes[1].following_count;
				 
				  document.getElementById("all21").href=obj[1].nodes[2].html_url;
				 document.getElementById("name21").innerHTML=obj[1].nodes[2].login;
				 document.getElementById("id21").innerHTML=obj[1].nodes[2].id;
				 document.getElementById("followers21").innerHTML=obj[1].nodes[2].followers_count;
				 document.getElementById("following21").innerHTML=obj[1].nodes[2].following_count;
				 
				  document.getElementById("all31").href=obj[1].nodes[3].html_url;
				 document.getElementById("name31").innerHTML=obj[1].nodes[3].login;
				 document.getElementById("id31").innerHTML=obj[1].nodes[3].id;
				 document.getElementById("followers31").innerHTML=obj[1].nodes[3].followers_count;
				 document.getElementById("following31").innerHTML=obj[1].nodes[3].following_count;
				 
				  document.getElementById("all41").href=obj[1].nodes[4].html_url;
				 document.getElementById("name41").innerHTML=obj[1].nodes[4].login;
				 document.getElementById("id41").innerHTML=obj[1].nodes[4].id;
				 document.getElementById("followers41").innerHTML=obj[1].nodes[4].followers_count;
				 document.getElementById("following41").innerHTML=obj[1].nodes[4].following_count;
				 
				  document.getElementById("all51").href=obj[1].nodes[5].html_url;
				 document.getElementById("name51").innerHTML=obj[1].nodes[5].login;
				 document.getElementById("id51").innerHTML=obj[1].nodes[5].id;
				 document.getElementById("followers51").innerHTML=obj[1].nodes[5].followers_count;
				 document.getElementById("following51").innerHTML=obj[1].nodes[5].following_count;
				 
				  document.getElementById("all61").href=obj[1].nodes[6].html_url;
				 document.getElementById("name61").innerHTML=obj[1].nodes[6].login;
				 document.getElementById("id61").innerHTML=obj[1].nodes[6].id;
				 document.getElementById("followers61").innerHTML=obj[1].nodes[6].followers_count;
				 document.getElementById("following61").innerHTML=obj[1].nodes[6].following_count;
				 
				  document.getElementById("all71").href=obj[1].nodes[7].html_url;
				 document.getElementById("name71").innerHTML=obj[1].nodes[7].login;
				 document.getElementById("id71").innerHTML=obj[1].nodes[7].id;
				 document.getElementById("followers71").innerHTML=obj[1].nodes[7].followers_count;
				 document.getElementById("following71").innerHTML=obj[1].nodes[7].following_count;
				//***********************************************************************************CPP**********

				 document.getElementById("all02").href=obj[2].nodes[0].html_url;
				 document.getElementById("name02").innerHTML=obj[2].nodes[0].login;
				 document.getElementById("id02").innerHTML=obj[2].nodes[0].id;
				 document.getElementById("followers02").innerHTML=obj[2].nodes[0].followers_count;
				 document.getElementById("following02").innerHTML=obj[2].nodes[0].following_count;
				 
				  document.getElementById("all12").href=obj[2].nodes[1].html_url;
				 document.getElementById("name12").innerHTML=obj[2].nodes[1].login;
				 document.getElementById("id12").innerHTML=obj[2].nodes[1].id;
				 document.getElementById("followers12").innerHTML=obj[2].nodes[1].followers_count;
				 document.getElementById("following12").innerHTML=obj[2].nodes[1].following_count;
				 
				  document.getElementById("all22").href=obj[2].nodes[2].html_url;
				 document.getElementById("name22").innerHTML=obj[2].nodes[2].login;
				 document.getElementById("id22").innerHTML=obj[2].nodes[2].id;
				 document.getElementById("followers22").innerHTML=obj[2].nodes[2].followers_count;
				 document.getElementById("following22").innerHTML=obj[2].nodes[2].following_count;
				 
				  document.getElementById("all32").href=obj[2].nodes[3].html_url;
				 document.getElementById("name32").innerHTML=obj[2].nodes[3].login;
				 document.getElementById("id32").innerHTML=obj[2].nodes[3].id;
				 document.getElementById("followers32").innerHTML=obj[2].nodes[3].followers_count;
				 document.getElementById("following32").innerHTML=obj[2].nodes[3].following_count;
				 
				  document.getElementById("all42").href=obj[2].nodes[4].html_url;
				 document.getElementById("name42").innerHTML=obj[2].nodes[4].login;
				 document.getElementById("id42").innerHTML=obj[2].nodes[4].id;
				 document.getElementById("followers42").innerHTML=obj[2].nodes[4].followers_count;
				 document.getElementById("following42").innerHTML=obj[2].nodes[4].following_count;
				 
				  document.getElementById("all52").href=obj[2].nodes[5].html_url;
				 document.getElementById("name52").innerHTML=obj[2].nodes[5].login;
				 document.getElementById("id52").innerHTML=obj[2].nodes[5].id;
				 document.getElementById("followers52").innerHTML=obj[2].nodes[5].followers_count;
				 document.getElementById("following52").innerHTML=obj[2].nodes[5].following_count;
				 
				  document.getElementById("all62").href=obj[2].nodes[6].html_url;
				 document.getElementById("name62").innerHTML=obj[2].nodes[6].login;
				 document.getElementById("id62").innerHTML=obj[2].nodes[6].id;
				 document.getElementById("followers62").innerHTML=obj[2].nodes[6].followers_count;
				 document.getElementById("following62").innerHTML=obj[2].nodes[6].following_count;
				 
				  document.getElementById("all72").href=obj[2].nodes[7].html_url;
				 document.getElementById("name72").innerHTML=obj[2].nodes[7].login;
				 document.getElementById("id72").innerHTML=obj[2].nodes[7].id;
				 document.getElementById("followers72").innerHTML=obj[2].nodes[7].followers_count;
				 document.getElementById("following72").innerHTML=obj[2].nodes[7].following_count;
				
				 //***********************************************************************************CSS**********
				 document.getElementById("all03").href=obj[3].nodes[0].html_url;
				 document.getElementById("name03").innerHTML=obj[3].nodes[0].login;
				 document.getElementById("id03").innerHTML=obj[3].nodes[0].id;
				 document.getElementById("followers03").innerHTML=obj[3].nodes[0].followers_count;
				 document.getElementById("following03").innerHTML=obj[3].nodes[0].following_count;
				 
				  document.getElementById("all13").href=obj[3].nodes[1].html_url;
				 document.getElementById("name13").innerHTML=obj[3].nodes[1].login;
				 document.getElementById("id13").innerHTML=obj[3].nodes[1].id;
				 document.getElementById("followers13").innerHTML=obj[3].nodes[1].followers_count;
				 document.getElementById("following13").innerHTML=obj[3].nodes[1].following_count;
				 
				  document.getElementById("all23").href=obj[3].nodes[2].html_url;
				 document.getElementById("name23").innerHTML=obj[3].nodes[2].login;
				 document.getElementById("id23").innerHTML=obj[3].nodes[2].id;
				 document.getElementById("followers23").innerHTML=obj[3].nodes[2].followers_count;
				 document.getElementById("following23").innerHTML=obj[3].nodes[2].following_count;
				 
				  document.getElementById("all33").href=obj[3].nodes[3].html_url;
				 document.getElementById("name33").innerHTML=obj[3].nodes[3].login;
				 document.getElementById("id33").innerHTML=obj[3].nodes[3].id;
				 document.getElementById("followers33").innerHTML=obj[3].nodes[3].followers_count;
				 document.getElementById("following33").innerHTML=obj[3].nodes[3].following_count;
				 
				  document.getElementById("all43").href=obj[3].nodes[4].html_url;
				 document.getElementById("name43").innerHTML=obj[3].nodes[4].login;
				 document.getElementById("id43").innerHTML=obj[3].nodes[4].id;
				 document.getElementById("followers43").innerHTML=obj[3].nodes[4].followers_count;
				 document.getElementById("following43").innerHTML=obj[3].nodes[4].following_count;
				 
				  document.getElementById("all53").href=obj[3].nodes[5].html_url;
				 document.getElementById("name53").innerHTML=obj[3].nodes[5].login;
				 document.getElementById("id53").innerHTML=obj[3].nodes[5].id;
				 document.getElementById("followers53").innerHTML=obj[3].nodes[5].followers_count;
				 document.getElementById("following53").innerHTML=obj[3].nodes[5].following_count;
				 
				  document.getElementById("all63").href=obj[3].nodes[6].html_url;
				 document.getElementById("name63").innerHTML=obj[3].nodes[6].login;
				 document.getElementById("id63").innerHTML=obj[3].nodes[6].id;
				 document.getElementById("followers63").innerHTML=obj[3].nodes[6].followers_count;
				 document.getElementById("following63").innerHTML=obj[3].nodes[6].following_count;
				 
				  document.getElementById("all73").href=obj[3].nodes[7].html_url;
				 document.getElementById("name73").innerHTML=obj[3].nodes[7].login;
				 document.getElementById("id73").innerHTML=obj[3].nodes[7].id;
				 document.getElementById("followers73").innerHTML=obj[3].nodes[7].followers_count;
				 document.getElementById("following73").innerHTML=obj[3].nodes[7].following_count;
				 //***********************************************************************************HTML**********
				 document.getElementById("all04").href=obj[4].nodes[0].html_url;
				 document.getElementById("name04").innerHTML=obj[4].nodes[0].login;
				 document.getElementById("id04").innerHTML=obj[4].nodes[0].id;
				 document.getElementById("followers04").innerHTML=obj[4].nodes[0].followers_count;
				 document.getElementById("following04").innerHTML=obj[4].nodes[0].following_count;
				 
				  document.getElementById("all14").href=obj[4].nodes[1].html_url;
				 document.getElementById("name14").innerHTML=obj[4].nodes[1].login;
				 document.getElementById("id14").innerHTML=obj[4].nodes[1].id;
				 document.getElementById("followers14").innerHTML=obj[4].nodes[1].followers_count;
				 document.getElementById("following14").innerHTML=obj[4].nodes[1].following_count;
				 
				  document.getElementById("all24").href=obj[4].nodes[2].html_url;
				 document.getElementById("name24").innerHTML=obj[4].nodes[2].login;
				 document.getElementById("id24").innerHTML=obj[4].nodes[2].id;
				 document.getElementById("followers24").innerHTML=obj[4].nodes[2].followers_count;
				 document.getElementById("following24").innerHTML=obj[4].nodes[2].following_count;
				 
				  document.getElementById("all34").href=obj[4].nodes[3].html_url;
				 document.getElementById("name34").innerHTML=obj[4].nodes[3].login;
				 document.getElementById("id34").innerHTML=obj[4].nodes[3].id;
				 document.getElementById("followers34").innerHTML=obj[4].nodes[3].followers_count;
				 document.getElementById("following34").innerHTML=obj[4].nodes[3].following_count;
				 
				  document.getElementById("all44").href=obj[4].nodes[4].html_url;
				 document.getElementById("name44").innerHTML=obj[4].nodes[4].login;
				 document.getElementById("id44").innerHTML=obj[4].nodes[4].id;
				 document.getElementById("followers44").innerHTML=obj[4].nodes[4].followers_count;
				 document.getElementById("following44").innerHTML=obj[4].nodes[4].following_count;
				 
				  document.getElementById("all54").href=obj[4].nodes[5].html_url;
				 document.getElementById("name54").innerHTML=obj[4].nodes[5].login;
				 document.getElementById("id54").innerHTML=obj[4].nodes[5].id;
				 document.getElementById("followers54").innerHTML=obj[4].nodes[5].followers_count;
				 document.getElementById("following54").innerHTML=obj[4].nodes[5].following_count;
				 
				  document.getElementById("all64").href=obj[4].nodes[6].html_url;
				 document.getElementById("name64").innerHTML=obj[4].nodes[6].login;
				 document.getElementById("id64").innerHTML=obj[4].nodes[4].id;
				 document.getElementById("followers64").innerHTML=obj[4].nodes[6].followers_count;
				 document.getElementById("following64").innerHTML=obj[4].nodes[6].following_count;
				 
				  document.getElementById("all74").href=obj[4].nodes[7].html_url;
				 document.getElementById("name74").innerHTML=obj[4].nodes[7].login;
				 document.getElementById("id74").innerHTML=obj[4].nodes[7].id;
				 document.getElementById("followers74").innerHTML=obj[4].nodes[7].followers_count;
				 document.getElementById("following74").innerHTML=obj[4].nodes[7].following_count;
				
				//***********************************************************************************JAVASCRIPT**********
				 document.getElementById("all05").href=obj[5].nodes[0].html_url;
				 document.getElementById("name05").innerHTML=obj[5].nodes[0].login;
				 document.getElementById("id05").innerHTML=obj[5].nodes[0].id;
				 document.getElementById("followers05").innerHTML=obj[5].nodes[0].followers_count;
				 document.getElementById("following05").innerHTML=obj[5].nodes[0].following_count;
				 
				  document.getElementById("all15").href=obj[5].nodes[1].html_url;
				 document.getElementById("name15").innerHTML=obj[5].nodes[1].login;
				 document.getElementById("id15").innerHTML=obj[5].nodes[1].id;
				 document.getElementById("followers15").innerHTML=obj[5].nodes[1].followers_count;
				 document.getElementById("following15").innerHTML=obj[5].nodes[1].following_count;
				 
				  document.getElementById("all25").href=obj[5].nodes[2].html_url;
				 document.getElementById("name25").innerHTML=obj[5].nodes[2].login;
				 document.getElementById("id25").innerHTML=obj[5].nodes[2].id;
				 document.getElementById("followers25").innerHTML=obj[5].nodes[2].followers_count;
				 document.getElementById("following25").innerHTML=obj[5].nodes[2].following_count;
				 
				  document.getElementById("all35").href=obj[5].nodes[3].html_url;
				 document.getElementById("name35").innerHTML=obj[5].nodes[3].login;
				 document.getElementById("id35").innerHTML=obj[5].nodes[3].id;
				 document.getElementById("followers35").innerHTML=obj[5].nodes[3].followers_count;
				 document.getElementById("following35").innerHTML=obj[5].nodes[3].following_count;
				 
				  document.getElementById("all45").href=obj[5].nodes[4].html_url;
				 document.getElementById("name45").innerHTML=obj[5].nodes[4].login;
				 document.getElementById("id45").innerHTML=obj[5].nodes[4].id;
				 document.getElementById("followers45").innerHTML=obj[5].nodes[4].followers_count;
				 document.getElementById("following45").innerHTML=obj[5].nodes[4].following_count;
				 
				  document.getElementById("all55").href=obj[5].nodes[5].html_url;
				 document.getElementById("name55").innerHTML=obj[5].nodes[5].login;
				 document.getElementById("id55").innerHTML=obj[5].nodes[5].id;
				 document.getElementById("followers55").innerHTML=obj[5].nodes[5].followers_count;
				 document.getElementById("following55").innerHTML=obj[5].nodes[5].following_count;
				 
				  document.getElementById("all65").href=obj[5].nodes[6].html_url;
				 document.getElementById("name65").innerHTML=obj[5].nodes[6].login;
				 document.getElementById("id65").innerHTML=obj[5].nodes[6].id;
				 document.getElementById("followers65").innerHTML=obj[5].nodes[6].followers_count;
				 document.getElementById("following65").innerHTML=obj[5].nodes[6].following_count;
				 
				  document.getElementById("all75").href=obj[5].nodes[7].html_url;
				 document.getElementById("name75").innerHTML=obj[5].nodes[7].login;
				 document.getElementById("id75").innerHTML=obj[5].nodes[7].id;
				 document.getElementById("followers75").innerHTML=obj[5].nodes[7].followers_count;
				 document.getElementById("following75").innerHTML=obj[5].nodes[7].following_count;
				

				 //***********************************************************************************OBJECTIVEC*********
				 document.getElementById("all06").href=obj[6].nodes[0].html_url;
				 document.getElementById("name06").innerHTML=obj[6].nodes[0].login;
				 document.getElementById("id06").innerHTML=obj[6].nodes[0].id;
				 document.getElementById("followers06").innerHTML=obj[6].nodes[0].followers_count;
				 document.getElementById("following06").innerHTML=obj[6].nodes[0].following_count;
				 
				  document.getElementById("all16").href=obj[6].nodes[1].html_url;
				 document.getElementById("name16").innerHTML=obj[6].nodes[1].login;
				 document.getElementById("id16").innerHTML=obj[6].nodes[1].id;
				 document.getElementById("followers16").innerHTML=obj[6].nodes[1].followers_count;
				 document.getElementById("following16").innerHTML=obj[6].nodes[1].following_count;
				 
				  document.getElementById("all26").href=obj[6].nodes[2].html_url;
				 document.getElementById("name26").innerHTML=obj[6].nodes[2].login;
				 document.getElementById("id26").innerHTML=obj[6].nodes[2].id;
				 document.getElementById("followers26").innerHTML=obj[6].nodes[2].followers_count;
				 document.getElementById("following26").innerHTML=obj[6].nodes[2].following_count;
				 
				  document.getElementById("all36").href=obj[6].nodes[3].html_url;
				 document.getElementById("name36").innerHTML=obj[6].nodes[3].login;
				 document.getElementById("id36").innerHTML=obj[6].nodes[3].id;
				 document.getElementById("followers36").innerHTML=obj[6].nodes[3].followers_count;
				 document.getElementById("following36").innerHTML=obj[6].nodes[3].following_count;
				 
				  document.getElementById("all46").href=obj[6].nodes[4].html_url;
				 document.getElementById("name46").innerHTML=obj[6].nodes[4].login;
				 document.getElementById("id46").innerHTML=obj[6].nodes[4].id;
				 document.getElementById("followers46").innerHTML=obj[6].nodes[4].followers_count;
				 document.getElementById("following46").innerHTML=obj[6].nodes[4].following_count;
				 
				  document.getElementById("all56").href=obj[6].nodes[5].html_url;
				 document.getElementById("name56").innerHTML=obj[6].nodes[5].login;
				 document.getElementById("id56").innerHTML=obj[6].nodes[5].id;
				 document.getElementById("followers56").innerHTML=obj[6].nodes[5].followers_count;
				 document.getElementById("following56").innerHTML=obj[6].nodes[5].following_count;
				 
				  document.getElementById("all66").href=obj[6].nodes[6].html_url;
				 document.getElementById("name66").innerHTML=obj[6].nodes[6].login;
				 document.getElementById("id66").innerHTML=obj[6].nodes[6].id;
				 document.getElementById("followers66").innerHTML=obj[6].nodes[6].followers_count;
				 document.getElementById("following66").innerHTML=obj[6].nodes[6].following_count;
				 
				  document.getElementById("all76").href=obj[6].nodes[7].html_url;
				 document.getElementById("name76").innerHTML=obj[6].nodes[7].login;
				 document.getElementById("id76").innerHTML=obj[6].nodes[7].id;
				 document.getElementById("followers76").innerHTML=obj[6].nodes[7].followers_count;
				 document.getElementById("following76").innerHTML=obj[6].nodes[7].following_count;
				
				 //***********************************************************************************PHP**********
				 document.getElementById("all07").href=obj[7].nodes[0].html_url;
				 document.getElementById("name07").innerHTML=obj[7].nodes[0].login;
				 document.getElementById("id07").innerHTML=obj[7].nodes[0].id;
				 document.getElementById("followers07").innerHTML=obj[7].nodes[0].followers_count;
				 document.getElementById("following07").innerHTML=obj[7].nodes[0].following_count;
				 
				  document.getElementById("all17").href=obj[7].nodes[1].html_url;
				 document.getElementById("name17").innerHTML=obj[7].nodes[1].login;
				 document.getElementById("id17").innerHTML=obj[7].nodes[1].id;
				 document.getElementById("followers17").innerHTML=obj[7].nodes[1].followers_count;
				 document.getElementById("following17").innerHTML=obj[7].nodes[1].following_count;
				 
				  document.getElementById("all27").href=obj[7].nodes[2].html_url;
				 document.getElementById("name27").innerHTML=obj[7].nodes[2].login;
				 document.getElementById("id27").innerHTML=obj[7].nodes[2].id;
				 document.getElementById("followers27").innerHTML=obj[7].nodes[2].followers_count;
				 document.getElementById("following27").innerHTML=obj[7].nodes[2].following_count;
				 
				  document.getElementById("all37").href=obj[7].nodes[3].html_url;
				 document.getElementById("name37").innerHTML=obj[7].nodes[3].login;
				 document.getElementById("id37").innerHTML=obj[7].nodes[3].id;
				 document.getElementById("followers37").innerHTML=obj[7].nodes[3].followers_count;
				 document.getElementById("following37").innerHTML=obj[7].nodes[3].following_count;
				 
				  document.getElementById("all47").href=obj[7].nodes[4].html_url;
				 document.getElementById("name47").innerHTML=obj[7].nodes[4].login;
				 document.getElementById("id47").innerHTML=obj[7].nodes[4].id;
				 document.getElementById("followers47").innerHTML=obj[7].nodes[4].followers_count;
				 document.getElementById("following47").innerHTML=obj[7].nodes[4].following_count;
				 
				  document.getElementById("all57").href=obj[7].nodes[5].html_url;
				 document.getElementById("name57").innerHTML=obj[7].nodes[5].login;
				 document.getElementById("id57").innerHTML=obj[7].nodes[5].id;
				 document.getElementById("followers57").innerHTML=obj[7].nodes[5].followers_count;
				 document.getElementById("following57").innerHTML=obj[7].nodes[5].following_count;
				 
				  document.getElementById("all67").href=obj[7].nodes[6].html_url;
				 document.getElementById("name67").innerHTML=obj[7].nodes[6].login;
				 document.getElementById("id67").innerHTML=obj[7].nodes[6].id;
				 document.getElementById("followers67").innerHTML=obj[7].nodes[6].followers_count;
				 document.getElementById("following67").innerHTML=obj[7].nodes[6].following_count;
				 
				  document.getElementById("all77").href=obj[7].nodes[7].html_url;
				 document.getElementById("name77").innerHTML=obj[7].nodes[7].login;
				 document.getElementById("id77").innerHTML=obj[7].nodes[7].id;
				 document.getElementById("followers77").innerHTML=obj[7].nodes[7].followers_count;
				 document.getElementById("following77").innerHTML=obj[7].nodes[7].following_count;
				
				 //***********************************************************************************PYTHON**********
				 document.getElementById("all08").href=obj[8].nodes[0].html_url;
				 document.getElementById("name08").innerHTML=obj[8].nodes[0].login;
				 document.getElementById("id08").innerHTML=obj[8].nodes[0].id;
				 document.getElementById("followers08").innerHTML=obj[8].nodes[0].followers_count;
				 document.getElementById("following08").innerHTML=obj[8].nodes[0].following_count;
				 
				  document.getElementById("all18").href=obj[8].nodes[1].html_url;
				 document.getElementById("name18").innerHTML=obj[8].nodes[1].login;
				 document.getElementById("id18").innerHTML=obj[8].nodes[1].id;
				 document.getElementById("followers18").innerHTML=obj[8].nodes[1].followers_count;
				 document.getElementById("following18").innerHTML=obj[8].nodes[1].following_count;
				 
				  document.getElementById("all28").href=obj[8].nodes[2].html_url;
				 document.getElementById("name28").innerHTML=obj[8].nodes[2].login;
				 document.getElementById("id28").innerHTML=obj[8].nodes[2].id;
				 document.getElementById("followers28").innerHTML=obj[8].nodes[2].followers_count;
				 document.getElementById("following28").innerHTML=obj[8].nodes[2].following_count;
				 
				  document.getElementById("all38").href=obj[8].nodes[3].html_url;
				 document.getElementById("name38").innerHTML=obj[8].nodes[3].login;
				 document.getElementById("id38").innerHTML=obj[8].nodes[3].id;
				 document.getElementById("followers38").innerHTML=obj[8].nodes[3].followers_count;
				 document.getElementById("following38").innerHTML=obj[8].nodes[3].following_count;
				 
				  document.getElementById("all48").href=obj[8].nodes[4].html_url;
				 document.getElementById("name48").innerHTML=obj[8].nodes[4].login;
				 document.getElementById("id48").innerHTML=obj[8].nodes[4].id;
				 document.getElementById("followers48").innerHTML=obj[8].nodes[4].followers_count;
				 document.getElementById("following48").innerHTML=obj[8].nodes[4].following_count;
				 
				  document.getElementById("all58").href=obj[8].nodes[5].html_url;
				 document.getElementById("name58").innerHTML=obj[8].nodes[5].login;
				 document.getElementById("id58").innerHTML=obj[8].nodes[5].id;
				 document.getElementById("followers58").innerHTML=obj[8].nodes[5].followers_count;
				 document.getElementById("following58").innerHTML=obj[8].nodes[5].following_count;
				 
				  document.getElementById("all68").href=obj[8].nodes[6].html_url;
				 document.getElementById("name68").innerHTML=obj[8].nodes[6].login;
				 document.getElementById("id68").innerHTML=obj[8].nodes[6].id;
				 document.getElementById("followers68").innerHTML=obj[8].nodes[6].followers_count;
				 document.getElementById("following68").innerHTML=obj[8].nodes[6].following_count;
				 
				  document.getElementById("all78").href=obj[8].nodes[7].html_url;
				 document.getElementById("name78").innerHTML=obj[8].nodes[7].login;
				 document.getElementById("id78").innerHTML=obj[8].nodes[7].id;
				 document.getElementById("followers78").innerHTML=obj[8].nodes[7].followers_count;
				 document.getElementById("following78").innerHTML=obj[8].nodes[7].following_count;
				 
				 //***********************************************************************************RUBY**********
				 document.getElementById("all09").href=obj[9].nodes[0].html_url;
				 document.getElementById("name09").innerHTML=obj[9].nodes[0].login;
				 document.getElementById("id09").innerHTML=obj[9].nodes[0].id;
				 document.getElementById("followers09").innerHTML=obj[9].nodes[0].followers_count;
				 document.getElementById("following09").innerHTML=obj[9].nodes[0].following_count;
				 
				  document.getElementById("all19").href=obj[9].nodes[1].html_url;
				 document.getElementById("name19").innerHTML=obj[9].nodes[1].login;
				 document.getElementById("id19").innerHTML=obj[9].nodes[1].id;
				 document.getElementById("followers19").innerHTML=obj[9].nodes[1].followers_count;
				 document.getElementById("following19").innerHTML=obj[9].nodes[1].following_count;
				 
				  document.getElementById("all29").href=obj[9].nodes[2].html_url;
				 document.getElementById("name29").innerHTML=obj[9].nodes[2].login;
				 document.getElementById("id29").innerHTML=obj[9].nodes[2].id;
				 document.getElementById("followers29").innerHTML=obj[9].nodes[2].followers_count;
				 document.getElementById("following29").innerHTML=obj[9].nodes[2].following_count;
				 
				  document.getElementById("all39").href=obj[9].nodes[3].html_url;
				 document.getElementById("name39").innerHTML=obj[9].nodes[3].login;
				 document.getElementById("id39").innerHTML=obj[9].nodes[3].id;
				 document.getElementById("followers39").innerHTML=obj[9].nodes[3].followers_count;
				 document.getElementById("following39").innerHTML=obj[9].nodes[3].following_count;
				 
				  document.getElementById("all49").href=obj[9].nodes[4].html_url;
				 document.getElementById("name49").innerHTML=obj[9].nodes[4].login;
				 document.getElementById("id49").innerHTML=obj[9].nodes[4].id;
				 document.getElementById("followers49").innerHTML=obj[9].nodes[4].followers_count;
				 document.getElementById("following49").innerHTML=obj[9].nodes[4].following_count;
				 
				  document.getElementById("all59").href=obj[9].nodes[5].html_url;
				 document.getElementById("name59").innerHTML=obj[9].nodes[5].login;
				 document.getElementById("id59").innerHTML=obj[9].nodes[5].id;
				 document.getElementById("followers59").innerHTML=obj[9].nodes[5].followers_count;
				 document.getElementById("following59").innerHTML=obj[9].nodes[5].following_count;
				 
				  document.getElementById("all69").href=obj[9].nodes[6].html_url;
				 document.getElementById("name69").innerHTML=obj[9].nodes[6].login;
				 document.getElementById("id69").innerHTML=obj[9].nodes[6].id;
				 document.getElementById("followers69").innerHTML=obj[9].nodes[6].followers_count;
				 document.getElementById("following69").innerHTML=obj[9].nodes[6].following_count;
				 
				  document.getElementById("all79").href=obj[9].nodes[7].html_url;
				 document.getElementById("name79").innerHTML=obj[9].nodes[7].login;
				 document.getElementById("id79").innerHTML=obj[9].nodes[7].id;
				 document.getElementById("followers79").innerHTML=obj[9].nodes[7].followers_count;
				 document.getElementById("following79").innerHTML=obj[9].nodes[7].following_count;
				 
				  //***********************************************************************************RUBY**********
				 document.getElementById("all010").href=obj[10].nodes[0].html_url;
				 document.getElementById("name010").innerHTML=obj[10].nodes[0].login;
				 document.getElementById("id010").innerHTML=obj[10].nodes[0].id;
				 document.getElementById("followers010").innerHTML=obj[10].nodes[0].followers_count;
				 document.getElementById("following010").innerHTML=obj[10].nodes[0].following_count;
				 
				  document.getElementById("all110").href=obj[10].nodes[1].html_url;
				 document.getElementById("name110").innerHTML=obj[10].nodes[1].login;
				 document.getElementById("id110").innerHTML=obj[10].nodes[1].id;
				 document.getElementById("followers110").innerHTML=obj[10].nodes[1].followers_count;
				 document.getElementById("following110").innerHTML=obj[10].nodes[1].following_count;
				 
				  document.getElementById("all210").href=obj[10].nodes[2].html_url;
				 document.getElementById("name210").innerHTML=obj[10].nodes[2].login;
				 document.getElementById("id210").innerHTML=obj[10].nodes[2].id;
				 document.getElementById("followers210").innerHTML=obj[10].nodes[2].followers_count;
				 document.getElementById("following210").innerHTML=obj[10].nodes[2].following_count;
				 
				  document.getElementById("all310").href=obj[10].nodes[3].html_url;
				 document.getElementById("name310").innerHTML=obj[10].nodes[3].login;
				 document.getElementById("id310").innerHTML=obj[10].nodes[3].id;
				 document.getElementById("followers310").innerHTML=obj[10].nodes[3].followers_count;
				 document.getElementById("following310").innerHTML=obj[10].nodes[3].following_count;
				 
				  document.getElementById("all410").href=obj[10].nodes[4].html_url;
				 document.getElementById("name410").innerHTML=obj[10].nodes[4].login;
				 document.getElementById("id410").innerHTML=obj[10].nodes[4].id;
				 document.getElementById("followers410").innerHTML=obj[10].nodes[4].followers_count;
				 document.getElementById("following410").innerHTML=obj[10].nodes[4].following_count;
				 
				  document.getElementById("all510").href=obj[10].nodes[5].html_url;
				 document.getElementById("name510").innerHTML=obj[10].nodes[5].login;
				 document.getElementById("id510").innerHTML=obj[10].nodes[5].id;
				 document.getElementById("followers510").innerHTML=obj[10].nodes[5].followers_count;
				 document.getElementById("following510").innerHTML=obj[10].nodes[5].following_count;
				 
				  document.getElementById("all610").href=obj[10].nodes[6].html_url;
				 document.getElementById("name610").innerHTML=obj[10].nodes[6].login;
				 document.getElementById("id610").innerHTML=obj[10].nodes[6].id;
				 document.getElementById("followers610").innerHTML=obj[10].nodes[6].followers_count;
				 document.getElementById("following610").innerHTML=obj[10].nodes[6].following_count;
				 
				  document.getElementById("all710").href=obj[10].nodes[7].html_url;
				 document.getElementById("name710").innerHTML=obj[10].nodes[7].login;
				 document.getElementById("id710").innerHTML=obj[10].nodes[7].id;
				 document.getElementById("followers710").innerHTML=obj[10].nodes[7].followers_count;
				 document.getElementById("following710").innerHTML=obj[10].nodes[7].following_count;
				
				
	//document.querySelector('#pi').appendChild(img);
                      },
				 
			 error:function(){
		
		 }
         });
	
		 }
         });
	
});
</script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<script src="js/respond.min.js"></script>
<![endif]-->

</head>
<body>

	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><span>Github</span>可视化</a>
				<ul class="user-menu">
					<li class="dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> 用户 <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
                            <li><a href="signin"><span class="glyphicon glyphicon-pencil"></span> 注册</a></li>
                            <li><a href="login"><span class="glyphicon glyphicon-user"></span> 登陆</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div><!-- /.container-fluid -->
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		
		<ul class="nav menu">
			<li ><a href="index"><span class="glyphicon glyphicon-dashboard"></span> 首页</a></li>
			<li class="parent ">
				<a href="#">
					<span class="glyphicon glyphicon-list"></span> 语言 <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
				</a>
				<ul class="children collapse" id="sub-item-1">
					
							<li><a href="/language/china"><span class="glyphicon glyphicon-stats"></span> 中国</a></li>
						
					
							<li><a href="/language/world"><span class="glyphicon glyphicon-stats"></span> 全世界</a></li>
					
				</ul>
			</li>
			<li class="active"><a href="user"><span class="glyphicon glyphicon-stats"></span> 用户</a></li>
			<li><a href="repos"><span class="glyphicon glyphicon-list-alt"></span> 项目（仓库）</a></li>
			<li><a href="areal"><span class="glyphicon glyphicon-pencil"></span> 地域</a></li>
			
			<li class="parent ">
				<a href="#">
					<span class="glyphicon glyphicon-list"></span> 技术分类 <span data-toggle="collapse" href="#sub-item-2" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
				</a>
				<ul class="children collapse" id="sub-item-2">
		
							<li><a href="technology_1"><span class="glyphicon glyphicon-share-alt"></span> 移动技术</a></li>
				
							<li><a href="technology_2"><span class="glyphicon glyphicon-share-alt"></span> 数据库</a></li>
				
							<li><a href="technology_3"><span class="glyphicon glyphicon-share-alt"></span> 可视化工具</a></li>
					
							<li><a href="technology_4"><span class="glyphicon glyphicon-share-alt"></span> 游戏引擎</a></li>
					
							<li><a href="technology_5"><span class="glyphicon glyphicon-share-alt"></span> web应用</a></li>
					
				</ul>
			</li>
			<li role="presentation" class="divider"></li>
			<li><a href="mine"><span class="glyphicon glyphicon-user"></span> 我的</a></li>
                        <li><a href="search"><span class="glyphicon glyphicon-info-sign"></span> 搜索</a></li>
		</ul>
	</div><!--/.sidebar-->
		

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">用户</li>
			</ol>
		</div><!--/.row-->

		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">用户</h1>
			</div>
		</div><!--/.row-->
		
		<div class="row"></div>
	
	    <div class=" panel panel-default">
	    <div class="panel-heading">所有语言用户排名</div>
	    
	    	<ul id="myTab" class="nav nav-pills">
	<li class="active">
		<a href="#ALL" data-toggle="tab">
			All
		</a>
	</li>
	<li><a href="#C" data-toggle="tab">C</a></li>
	<li><a href="#CSHARP" data-toggle="tab">CSHARP</a></li>
	<li><a href="#CPP" data-toggle="tab">CPP</a></li>
	<li><a href="#CSS" data-toggle="tab">CSS</a></li>
	<li><a href="#HTML" data-toggle="tab">HTML</a></li>
	<li><a href="#JAVASCRIPT" data-toggle="tab">JAVASCRIPT</a></li>
	<li><a href="#OBJECTIVEC" data-toggle="tab">OBJECTIVEC</a></li>
	<li><a href="#PHP" data-toggle="tab">PHP</a></li>
	<li><a href="#PYTHON" data-toggle="tab">PYTHON</a></li>
	<li><a href="#RUBY" data-toggle="tab">RUBY</a></li>

</ul>
   <div id="myTabContent" class="tab-content">
	<div class="tab-pane fade in active" id="ALL">
		<div class="panel panel-default">	
					<div class="panel-body">
						<div class="canvas-wrapper">


							<table id="table1" class="table table-striped"  >

								<tr>
									<th >排行</th>
									<th >用户名</th>
									<th >id</th>
									<th >followers</th>
									<th >following</th>
								</tr>
								<tr>
									<td><a target="_top" id="all0">1</td>
							     	<td id="name0"></td>
									<td id="id0"></td>
									<td id="followers0"></td>
									<td id="following0"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all1">2</td>
							     	<td id="name1"></td>
									<td id="id1"></td>
									<td id="followers1"></td>
									<td id="following1"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all2">3</td>
							     	<td id="name2"></td>
									<td id="id2"></td>
									<td id="followers2"></td>
									<td id="following2"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all3">4</td>
							     	<td id="name3"></td>
									<td id="id3"></td>
									<td id="followers3"></td>
									<td id="following3"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all4">5</td>
							     	<td id="name4"></td>
									<td id="id4"></td>
									<td id="followers4"></td>
									<td id="following4"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all5">6</td>
							     	<td id="name5"></td>
									<td id="id5"></td>
									<td id="followers5"></td>
									<td id="following5"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all6">7</td>
							     	<td id="name6"></td>
									<td id="id6"></td>
									<td id="followers6"></td>
									<td id="following6"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all7">8</td>
							     	<td id="name7"></td>
									<td id="id7"></td>
									<td id="followers7"></td>
									<td id="following7"></td>
									
								</tr>

							</table>
						</div>
					</div>
				</div>
	</div>
	<div class="tab-pane fade" id="C">
		<div class="panel panel-default">	
					<div class="panel-body">
						<div class="canvas-wrapper">


							<table id="table1" class="table table-striped"  >

								<tr>
									<th >排行</th>
									<th >用户名</th>
									<th >id</th>
									<th >followers</th>
									<th >following</th>
								</tr>
								<tr>
									<td><a target="_top" id="all01">1</td>
							     	<td id="name01"></td>
									<td id="id01"></td>
									<td id="followers01"></td>
									<td id="following01"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all11">2</td>
							     	<td id="name11"></td>
									<td id="id11"></td>
									<td id="followers11"></td>
									<td id="following11"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all21">3</td>
							     	<td id="name21"></td>
									<td id="id21"></td>
									<td id="followers21"></td>
									<td id="following21"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all31">4</td>
							     	<td id="name31"></td>
									<td id="id31"></td>
									<td id="followers31"></td>
									<td id="following31"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all41">5</td>
							     	<td id="name41"></td>
									<td id="id41"></td>
									<td id="followers41"></td>
									<td id="following41"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all51">6</td>
							     	<td id="name51"></td>
									<td id="id51"></td>
									<td id="followers51"></td>
									<td id="following51"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all61">7</td>
							     	<td id="name61"></td>
									<td id="id61"></td>
									<td id="followers61"></td>
									<td id="following61"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all71">8</td>
							     	<td id="name71"></td>
									<td id="id71"></td>
									<td id="followers71"></td>
									<td id="following71"></td>
									
								</tr>

							</table>
						</div>
					</div>
				</div>
	</div>
	<div class="tab-pane fade" id="CSHARP">
		<div class="panel panel-default">	
					<div class="panel-body">
						<div class="canvas-wrapper">


							<table id="table1" class="table table-striped"  >

								<tr>
									<th >排行</th>
									<th >用户名</th>
									<th >id</th>
									<th >followers</th>
									<th >following</th>
								</tr>
								<tr>
									<td><a target="_top" id="all02">1</td>
							     	<td id="name02"></td>
									<td id="id02"></td>
									<td id="followers02"></td>
									<td id="following02"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all12">2</td>
							     	<td id="name12"></td>
									<td id="id12"></td>
									<td id="followers12"></td>
									<td id="following12"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all22">3</td>
							     	<td id="name22"></td>
									<td id="id22"></td>
									<td id="followers22"></td>
									<td id="following22"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all32">4</td>
							     	<td id="name32"></td>
									<td id="id32"></td>
									<td id="followers32"></td>
									<td id="following32"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all42">5</td>
							     	<td id="name42"></td>
									<td id="id42"></td>
									<td id="followers42"></td>
									<td id="following42"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all52">6</td>
							     	<td id="name52"></td>
									<td id="id52"></td>
									<td id="followers52"></td>
									<td id="following52"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all62">7</td>
							     	<td id="name62"></td>
									<td id="id62"></td>
									<td id="followers62"></td>
									<td id="following62"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all72">8</td>
							     	<td id="name72"></td>
									<td id="id72"></td>
									<td id="followers72"></td>
									<td id="following72"></td>
									
								</tr>

							</table>
						</div>
					</div>
				</div>
	</div>
	<div class="tab-pane fade" id="CPP">
		<div class="panel panel-default">	
					<div class="panel-body">
						<div class="canvas-wrapper">


							<table id="table1" class="table table-striped"  >

								<tr>
									<th >排行</th>
									<th >用户名</th>
									<th >id</th>
									<th >followers</th>
									<th >following</th>
								</tr>
								<tr>
									<td><a target="_top" id="all03">1</td>
							     	<td id="name03"></td>
									<td id="id03"></td>
									<td id="followers03"></td>
									<td id="following03"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all13">2</td>
							     	<td id="name13"></td>
									<td id="id13"></td>
									<td id="followers13"></td>
									<td id="following13"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all23">3</td>
							     	<td id="name23"></td>
									<td id="id23"></td>
									<td id="followers23"></td>
									<td id="following23"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all33">4</td>
							     	<td id="name33"></td>
									<td id="id33"></td>
									<td id="followers33"></td>
									<td id="following33"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all43">5</td>
							     	<td id="name43"></td>
									<td id="id43"></td>
									<td id="followers43"></td>
									<td id="following43"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all53">6</td>
							     	<td id="name53"></td>
									<td id="id53"></td>
									<td id="followers53"></td>
									<td id="following53"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all63">7</td>
							     	<td id="name63"></td>
									<td id="id63"></td>
									<td id="followers63"></td>
									<td id="following63"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all73">8</td>
							     	<td id="name73"></td>
									<td id="id73"></td>
									<td id="followers73"></td>
									<td id="following73"></td>
									
								</tr>

							</table>
						</div>
					</div>
				</div>
	</div>
	<div class="tab-pane fade" id="CSS">
		<div class="panel panel-default">	
					<div class="panel-body">
						<div class="canvas-wrapper">


							<table id="table1" class="table table-striped"  >

								<tr>
									<th >排行</th>
									<th >用户名</th>
									<th >id</th>
									<th >followers</th>
									<th >following</th>
								</tr>
								<tr>
									<td><a target="_top" id="all04">1</td>
							     	<td id="name04"></td>
									<td id="id04"></td>
									<td id="followers04"></td>
									<td id="following04"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all14">2</td>
							     	<td id="name14"></td>
									<td id="id14"></td>
									<td id="followers14"></td>
									<td id="following14"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all24">3</td>
							     	<td id="name24"></td>
									<td id="id24"></td>
									<td id="followers24"></td>
									<td id="following24"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all34">4</td>
							     	<td id="name34"></td>
									<td id="id34"></td>
									<td id="followers34"></td>
									<td id="following34"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all44">5</td>
							     	<td id="name44"></td>
									<td id="id44"></td>
									<td id="followers44"></td>
									<td id="following44"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all54">6</td>
							     	<td id="name54"></td>
									<td id="id54"></td>
									<td id="followers54"></td>
									<td id="following54"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all64">7</td>
							     	<td id="name64"></td>
									<td id="id64"></td>
									<td id="followers64"></td>
									<td id="following64"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all74">8</td>
							     	<td id="name74"></td>
									<td id="id74"></td>
									<td id="followers74"></td>
									<td id="following74"></td>
									
								</tr>

							</table>
						</div>
					</div>
				</div>
	</div>
	<div class="tab-pane fade" id="HTML">
		<div class="panel panel-default">	
					<div class="panel-body">
						<div class="canvas-wrapper">


							<table id="table1" class="table table-striped"  >

								<tr>
									<th >排行</th>
									<th >用户名</th>
									<th >id</th>
									<th >followers</th>
									<th >following</th>
								</tr>
								<tr>
									<td><a target="_top" id="all05">1</td>
							     	<td id="name05"></td>
									<td id="id05"></td>
									<td id="followers05"></td>
									<td id="following05"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all15">2</td>
							     	<td id="name15"></td>
									<td id="id15"></td>
									<td id="followers15"></td>
									<td id="following15"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all25">3</td>
							     	<td id="name25"></td>
									<td id="id25"></td>
									<td id="followers25"></td>
									<td id="following25"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all35">4</td>
							     	<td id="name35"></td>
									<td id="id35"></td>
									<td id="followers35"></td>
									<td id="following35"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all45">5</td>
							     	<td id="name45"></td>
									<td id="id45"></td>
									<td id="followers45"></td>
									<td id="following45"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all55">6</td>
							     	<td id="name55"></td>
									<td id="id55"></td>
									<td id="followers55"></td>
									<td id="following55"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all65">7</td>
							     	<td id="name65"></td>
									<td id="id65"></td>
									<td id="followers65"></td>
									<td id="following65"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all75">8</td>
							     	<td id="name75"></td>
									<td id="id75"></td>
									<td id="followers75"></td>
									<td id="following75"></td>
									
								</tr>

							</table>
						</div>
					</div>
				</div>
	</div>
	<div class="tab-pane fade" id="JAVASCRIPT">
		<div class="panel panel-default">	
					<div class="panel-body">
						<div class="canvas-wrapper">


							<table id="table1" class="table table-striped"  >

								<tr>
									<th >排行</th>
									<th >用户名</th>
									<th >id</th>
									<th >followers</th>
									<th >following</th>
								</tr>
								<tr>
									<td><a target="_top" id="all06">1</td>
							     	<td id="name06"></td>
									<td id="id06"></td>
									<td id="followers06"></td>
									<td id="following06"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all16">2</td>
							     	<td id="name16"></td>
									<td id="id16"></td>
									<td id="followers16"></td>
									<td id="following16"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all26">3</td>
							     	<td id="name26"></td>
									<td id="id26"></td>
									<td id="followers26"></td>
									<td id="following26"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all36">4</td>
							     	<td id="name36"></td>
									<td id="id36"></td>
									<td id="followers36"></td>
									<td id="following36"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all46">5</td>
							     	<td id="name46"></td>
									<td id="id46"></td>
									<td id="followers46"></td>
									<td id="following46"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all56">6</td>
							     	<td id="name56"></td>
									<td id="id56"></td>
									<td id="followers56"></td>
									<td id="following56"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all66">7</td>
							     	<td id="name66"></td>
									<td id="id66"></td>
									<td id="followers66"></td>
									<td id="following66"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all76">8</td>
							     	<td id="name76"></td>
									<td id="id76"></td>
									<td id="followers76"></td>
									<td id="following76"></td>
									
								</tr>

							</table>
						</div>
					</div>
				</div>
	</div>
	<div class="tab-pane fade" id="OBJECTIVEC">
		<div class="panel panel-default">	
					<div class="panel-body">
						<div class="canvas-wrapper">


							<table id="table1" class="table table-striped"  >

								<tr>
									<th >排行</th>
									<th >用户名</th>
									<th >id</th>
									<th >followers</th>
									<th >following</th>
								</tr>
								<tr>
									<td><a target="_top" id="all07">1</td>
							     	<td id="name07"></td>
									<td id="id07"></td>
									<td id="followers07"></td>
									<td id="following07"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all17">2</td>
							     	<td id="name17"></td>
									<td id="id17"></td>
									<td id="followers17"></td>
									<td id="following17"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all27">3</td>
							     	<td id="name27"></td>
									<td id="id27"></td>
									<td id="followers27"></td>
									<td id="following27"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all37">4</td>
							     	<td id="name37"></td>
									<td id="id37"></td>
									<td id="followers37"></td>
									<td id="following37"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all47">5</td>
							     	<td id="name47"></td>
									<td id="id47"></td>
									<td id="followers47"></td>
									<td id="following47"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all57">6</td>
							     	<td id="name57"></td>
									<td id="id57"></td>
									<td id="followers57"></td>
									<td id="following57"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all67">7</td>
							     	<td id="name67"></td>
									<td id="id67"></td>
									<td id="followers67"></td>
									<td id="following67"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all77">8</td>
							     	<td id="name77"></td>
									<td id="id77"></td>
									<td id="followers77"></td>
									<td id="following77"></td>
									
								</tr>

							</table>
						</div>
					</div>
				</div>
	</div>
	<div class="tab-pane fade" id="PHP">
		<div class="panel panel-default">	
					<div class="panel-body">
						<div class="canvas-wrapper">


							<table id="table1" class="table table-striped"  >

								<tr>
									<th >排行</th>
									<th >用户名</th>
									<th >id</th>
									<th >followers</th>
									<th >following</th>
								</tr>
								<tr>
									<td><a target="_top" id="all08">1</td>
							     	<td id="name08"></td>
									<td id="id08"></td>
									<td id="followers08"></td>
									<td id="following08"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all18">2</td>
							     	<td id="name18"></td>
									<td id="id18"></td>
									<td id="followers18"></td>
									<td id="following18"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all28">3</td>
							     	<td id="name28"></td>
									<td id="id28"></td>
									<td id="followers28"></td>
									<td id="following28"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all38">4</td>
							     	<td id="name38"></td>
									<td id="id38"></td>
									<td id="followers38"></td>
									<td id="following38"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all48">5</td>
							     	<td id="name48"></td>
									<td id="id48"></td>
									<td id="followers48"></td>
									<td id="following48"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all58">6</td>
							     	<td id="name58"></td>
									<td id="id58"></td>
									<td id="followers58"></td>
									<td id="following58"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all68">7</td>
							     	<td id="name68"></td>
									<td id="id68"></td>
									<td id="followers68"></td>
									<td id="following68"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all78">8</td>
							     	<td id="name78"></td>
									<td id="id78"></td>
									<td id="followers78"></td>
									<td id="following78"></td>
									
								</tr>

							</table>
						</div>
					</div>
				</div>
	</div>
	<div class="tab-pane fade" id="PYTHON">
		<div class="panel panel-default">	
					<div class="panel-body">
						<div class="canvas-wrapper">


							<table id="table1" class="table table-striped"  >

								<tr>
									<th >排行</th>
									<th >用户名</th>
									<th >id</th>
									<th >followers</th>
									<th >following</th>
								</tr>
								<tr>
									<td><a target="_top" id="all09">1</td>
							     	<td id="name09"></td>
									<td id="id09"></td>
									<td id="followers09"></td>
									<td id="following09"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all19">2</td>
							     	<td id="name19"></td>
									<td id="id19"></td>
									<td id="followers19"></td>
									<td id="following19"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all29">3</td>
							     	<td id="name29"></td>
									<td id="id29"></td>
									<td id="followers29"></td>
									<td id="following29"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all39">4</td>
							     	<td id="name39"></td>
									<td id="id39"></td>
									<td id="followers39"></td>
									<td id="following39"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all49">5</td>
							     	<td id="name49"></td>
									<td id="id49"></td>
									<td id="followers49"></td>
									<td id="following49"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all59">6</td>
							     	<td id="name59"></td>
									<td id="id59"></td>
									<td id="followers59"></td>
									<td id="following59"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all69">7</td>
							     	<td id="name69"></td>
									<td id="id69"></td>
									<td id="followers69"></td>
									<td id="following69"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all79">8</td>
							     	<td id="name79"></td>
									<td id="id79"></td>
									<td id="followers79"></td>
									<td id="following79"></td>
									
								</tr>

							</table>
						</div>
					</div>
				</div>
	</div>
	<div class="tab-pane fade" id="RUBY">
		<div class="panel panel-default">	
					<div class="panel-body">
						<div class="canvas-wrapper">


							<table id="table1" class="table table-striped"  >

								<tr>
									<th >排行</th>
									<th >用户名</th>
									<th >id</th>
									<th >followers</th>
									<th >following</th>
								</tr>
								<tr>
									<td><a target="_top" id="all010">1</td>
							     	<td id="name010"></td>
									<td id="id010"></td>
									<td id="followers010"></td>
									<td id="following010"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all110">2</td>
							     	<td id="name110"></td>
									<td id="id110"></td>
									<td id="followers110"></td>
									<td id="following110"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all210">3</td>
							     	<td id="name210"></td>
									<td id="id210"></td>
									<td id="followers210"></td>
									<td id="following210"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all310">4</td>
							     	<td id="name310"></td>
									<td id="id310"></td>
									<td id="followers310"></td>
									<td id="following310"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all410">5</td>
							     	<td id="name410"></td>
									<td id="id410"></td>
									<td id="followers410"></td>
									<td id="following410"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all510">6</td>
							     	<td id="name510"></td>
									<td id="id510"></td>
									<td id="followers510"></td>
									<td id="following510"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all610">7</td>
							     	<td id="name610"></td>
									<td id="id610"></td>
									<td id="followers610"></td>
									<td id="following610"></td>
									
								</tr>
								<tr>
									<td><a target="_top" id="all710">8</td>
							     	<td id="name710"></td>
									<td id="id710"></td>
									<td id="followers710"></td>
									<td id="following710"></td>
									
								</tr>

							</table>
						</div>
					</div>
				</div>
	</div>
	
</div>
   
   
   

	    </div>
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading"> Chart</div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							
							 <div id="main" style="width: 100%;height:600px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

		var option = {
     tooltip : {
        trigger: 'axis',
        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
        }
    },
			
	title : {
        text: '用户年龄语言增长情况',
        subtext: '仅供参考'
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
			
    xAxis : [
        {
            type : 'category',
            data : ['第一年','第二年','第三年','第四年','第五年']
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
	
    series:series,
    
};
myChart.showLoading();    
         myChart.setOption(option);
	     var series=[];
         var namesfri=[];    
         var numsfri=[]; 
		 var res=[];  
		 var color=[];
         $.ajax({
         type : "get",
         async : true,            
         url : "static/tables/123.json",    
         dataType : "json",        
         success : function(result){
           
                    for(var i=0;i<result.length;i++){  
                       numsfri.push(result[i].value);   
                     }
                    for(var i=0;i<result.length;i++){       
                        namesfri.push(result[i].name);   	
                      }
					   for(var i=0;i<result.length;i++) {  
                                res.push({  
                                value:numsfri[i], 
                                name:namesfri[i]
                                });
								
					   }
			 color=['#c8efff',
			 '#a7e7ff',
			 '#79d9f1',
			 '#87e7ed',  
			 '#52cdd5',
			 '#5cbce0',	
			 '#1dc0ff', 
			 '#00acee']
			 
			 for(var i=0;i<8;i++){
series.push({
name:namesfri[i],
type:'bar',
data:[numsfri[i],numsfri[i+10],numsfri[i+10],numsfri[i+20],numsfri[i+30]],
itemStyle: {
            normal: {
                color: color[i]
            }
        },			
});                 
}
			 
                   myChart.hideLoading();  
					 
                    myChart.setOption({        
                        legend: {
                            data: namesfri
                        },
                        series: series
                    });
                    

         
        },
		
         error : function(errorMsg) {
        
         alert("数据无法加载");
         myChart.hideLoading();
		 }
    });

       
    </script>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Bar Chart</div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							 <div id="main2" style="width: 100%;height:600px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart2 = echarts.init(document.getElementById('main2'));

        // 指定图表的配置项和数据
        option2 = {
        baseOption: {
            timeline: {
                axisType: 'category',  //控制时间轴为离散数字
                autoPlay: true,
                playInterval: 3000,
				data: [
                    '1年', '2年', '3年',
                    '4年', '5年', 
                ],
               /* data: [
                    '2002-01-01', '2003-01-01', '2004-01-01',
                    '2005-01-01', '2006-01-01', 
                ],
                label: {
                    formatter : function(s) {
                        return (new Date(s)).getFullYear();
                    }
                }*/
            },
            title: {
                subtext: 'Media Query 示例'
            },
            tooltip: {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },
          
           
            calculable : true,
            series: [
             
                {name: '用户占比', type: 'pie'}
            ]
        },
       options: [
            {
                title: {text: '1年用户龄用户语言分布'},
                series:series1
            },
		   {
                title: {text: '2年用户龄用户语言分布'},
                series:series2
            },
		   {
                title: {text: '3年用户龄用户语言分布'},
                series:series3
            },
		   {
                title: {text: '4年用户龄用户语言分布'},
                series:series4
            },
		    {
                title: {text: '5年用户龄用户语言分布'},
                series:series5
            }
	   ]
    };
			
		
		
		
		myChart2.showLoading();    
         myChart2.setOption(option2);
		 var options=[];
	     var series1=[];
		 var series2=[];
		 var series3=[];
		 var series4=[];
		 var series5=[];
			
         var names=[];    
         var nums=[]; 
		 var res=[];   
         $.ajax({
         type : "get",
         async : true,            
         url : "static/tables/789.json",    
         dataType : "json",        
         success : function(result){
           
                    for(var i=0;i<result.length;i++){  
                       nums.push(result[i].value);   
                     }
                    for(var i=0;i<result.length;i++){       
                        names.push(result[i].name);   	
                      }
					   for(var i=0;i<result.length;i++) {  
                                res.push({  
                                value:nums[i], 
                                name:names[i]
                                });
								
					   }
			  for(var i=0;i<1;i++){
series1.push({
type:'pie',
data:[{name:names[i],value:nums[i]},{name:names[i+1],value:nums[i+1]},{name:names[i+2],value:nums[i+2]},{name:names[i+3],value:nums[i+3]},{name:names[i+4],value:nums[i+4]},{name:names[i+5],value:nums[i+5]},{name:names[i+6],value:nums[i+6]},{name:names[i+7],value:nums[i+7]}]
 ,itemStyle: {
            normal: {
                borderWidth: 4,
                borderColor: '#ffffff',
            },
            emphasis: {
                borderWidth: 0,
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
        }
	,color: ['#c8efff',
			 '#a7e7ff',
			 '#79d9f1',
			 '#87e7ed',  
			 '#52cdd5',
			 '#5cbce0',	
			 '#1dc0ff', 
			 '#00acee',
       
	
		
      
		
        
        
        
    ]
});                 
}
			   for(var i=10;i<11;i++){
series2.push({
type:'pie',
data:[{name:names[i],value:nums[i]},{name:names[i+1],value:nums[i+1]},{name:names[i+2],value:nums[i+2]},{name:names[i+3],value:nums[i+3]},{name:names[i+4],value:nums[i+4]},{name:names[i+5],value:nums[i+5]},{name:names[i+6],value:nums[i+6]},{name:names[i+7],value:nums[i+7]}]
});                 
}
 for(var i=20;i<21;i++){
series3.push({
type:'pie',
data:[{name:names[i],value:nums[i]},{name:names[i+1],value:nums[i+1]},{name:names[i+2],value:nums[i+2]},{name:names[i+3],value:nums[i+3]},{name:names[i+4],value:nums[i+4]},{name:names[i+5],value:nums[i+5]},{name:names[i+6],value:nums[i+6]},{name:names[i+7],value:nums[i+7]}]
});                 
}
			  for(var i=30;i<31;i++){
series4.push({
type:'pie',
data:[{name:names[i],value:nums[i]},{name:names[i+1],value:nums[i+1]},{name:names[i+2],value:nums[i+2]},{name:names[i+3],value:nums[i+3]},{name:names[i+4],value:nums[i+4]},{name:names[i+5],value:nums[i+5]},{name:names[i+6],value:nums[i+6]},{name:names[i+7],value:nums[i+7]}]
});                 
}
			  for(var i=40;i<41;i++){
series5.push({
type:'pie',
data:[{name:names[i],value:nums[i]},{name:names[i+1],value:nums[i+1]},{name:names[i+2],value:nums[i+2]},{name:names[i+3],value:nums[i+3]},{name:names[i+4],value:nums[i+4]},{name:names[i+5],value:nums[i+5]},{name:names[i+6],value:nums[i+6]},{name:names[i+7],value:nums[i+7]}]
});                 
}
			 
                    myChart2.hideLoading();  
					 
                    myChart2.setOption({        
                         options: [
            {
                title: {text: '1年用户龄用户语言分布'},
                series:series1
            },
							  {
                title: {text: '2年用户龄用户语言分布'},
                series:series2
            },
							 {
                title: {text: '3年用户龄用户语言分布'},
                series:series3
            },
							  {
                title: {text: '4年用户龄用户语言分布'},
                series:series4
            },
							  {
                title: {text: '5年用户龄用户语言分布'},
                series:series5
            },
	   ]
                    });
                    

         
        },
		
         error : function(errorMsg) {
        
         alert("数据无法加载");
         myChart2.hideLoading();
		 }
    });
    </script>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->		
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Github国内用户分布</div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							 <div id="main3" style="width: 100%;height:500px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart3 = echarts.init(document.getElementById('main3'));
myChart3.setOption({
    series: [{
        type: 'map',
        map: 'china'
    }]
});

		   
option = {
    title: {
        text: 'Github User Number',
        subtext: 'for reference only',
        left: 'center'
    },
    tooltip: {
        trigger: 'item'
    },
   /* legend: {
        orient: 'vertical',
        left: 'left',
        data:['number']
    },*/
    visualMap: {
        min: 0,
        max: 2000,
        left: 'left',
        top: 'bottom',
        text: ['high','low'], 
		inRange: {
            color: ['#e0ffff', '#006edd']
        },// 文本，默认为数值文本
        calculable: true
    },
    toolbox: {
        show: true,
        orient: 'vertical',
        left: 'right',
        top: 'center',
        feature: {
            dataView: {readOnly: false},
            restore: {},
            saveAsImage: {}
        }
    },
	  geo: {
        map: 'china',
        roam: true,
        label: {
            normal: {
                show: true,
                textStyle: {
                    color: 'rgba(0,0,0,0.4)'
                }
            }
        },
        itemStyle: {
            normal:{
                borderColor: 'rgba(0, 0, 0, 0.2)'
            },
            emphasis:{
                areaColor: null,
                shadowOffsetX: 0,
                shadowOffsetY: 0,
                shadowBlur: 20,
                borderWidth: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
        }
    },
    series: [
        {
            name: 'number',
            type: 'map',
            mapType: 'china',
			 geoIndex: 0,
            roam: true,
           /* label: {
                normal: {
                    show: true
                },
                emphasis: {
                    show: true
                }
            }, */
			
			
			
         /*   data:[
                {name: '北京',value: [85] },
                {name: '天津',value: [85] },
                {name: '上海',value: [85]},
                {name: '重庆',value: [85] },
                {name: '河北',value:[85] },
                {name: '河南',value:[85]},
                {name: '云南',value: [85] },
                {name: '辽宁',value: [85] },
                {name: '黑龙江',value:[ 85] },
                {name: '湖南',value: [85] },
                {name: '安徽',value: [85] },
                {name: '山东',value: [85] },
                {name: '新疆',value: [75] },
                {name: '江苏',value: [75]},
                {name: '浙江',value: [75] },
                {name: '江西',value: [75] },
                {name: '湖北',value: [75] },
                {name: '广西',value: [75] },
                {name: '甘肃',value: [75] },
                {name: '山西',value: [75]},
                {name: '内蒙古',value:[75] },
                {name: '陕西',value:[85] },
                {name: '吉林',value: [85]},
                {name: '福建',value:[85] },
                {name: '贵州',value:[85] },
                {name: '广东',value:[ 85]},
                {name: '青海',value: [85] },
                {name: '西藏',value: [36]},
                {name: '四川',value: [36]},
                {name: '宁夏',value:[36] },
                {name: '海南',value:[36] },
                {name: '台湾',value:[ 36]},
                {name: '香港',value:[ 36]},
                {name: '澳门',value:[36] }
            ]*/
			data:[]
			
        },
       
        
    ]
};

myChart3.showLoading();    
         myChart3.setOption(option);
	     var data1=[];
         var names3=[];    
         var nums3=[]; 
		 var res3=[];   
         $.ajax({
         type : "get",
         async : true,            
         url : "static/tables/locationCount.json",    
         dataType : "json",        
         success : function(result){
              
                    for(var i=0;i<result.length;i++){  
                       nums3.push(result[i].value);   
                     }
                    for(var i=0;i<result.length;i++){       
                        names3.push(result[i].name);   	
                      }
					   for(var i=0;i<result.length;i++) {  
                                res3.push({   
								name:names3[i],
                                value:nums3[i],
                               
                                });
								
					   }
			        //南沙群岛名字问题  res.push({name: '南海诸岛',value: 0, itemStyle:{ normal:{opacity:0,label:{show:false}}} })
		/* for(var i=0;i<1;i++){

			 data1.push({
data:{ name: 'HAINAN',value: [18]} 
});                
}*/
		 
                    myChart3.hideLoading();  
					 
                    myChart3.setOption({        
						
                       
                        series: [
						{
							data:res3
							
						}]
                    });
                    

         
        },
		
         error : function(errorMsg) {
        
         alert("数据无法加载");
         mychart3.hideLoading();
		 }
    });		   
		   
		   
if (option && typeof option === "object") {
    myChart3.setOption(option, true);
}
       
    </script>
						</div>
					</div>
				</div>
			</div>
		</div>
			
			
			
			<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading"> 各语言用户用户领极坐标图</div>
					<div class="panel-body">
						<div class="canvas-wrapper">

							
							 <div id="main5" style="width: 100%;height:600px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart5 = echarts.init(document.getElementById('main5'));
option = {
    angleAxis: {
		
       
    },
	tooltip: {
        trigger: 'item',
     
    },
    radiusAxis: {
    },
    polar: {
    },
    series: [],
    legend: {
        show: true,
        data: ['第一年', '第二年', '第三年','第四年','第五年']
    },
	
};


myChart5.showLoading();    
         myChart5.setOption(option);
	     var data1=[];
         var names=[];    
         var nums=[]; 
		 var res=[];
		 var names1=[];
		 var series=[];
		 var year1=[]; 
		 var year2=[]; 
		 var year3=[]; 
		 var year4=[]; 
		 var year5=[]; 
         $.ajax({
         type : "get",
         async : true,            
         url : "static/tables/789.json",    
         dataType : "json",        
         success : function(result){
           
                    for(var i=0;i<result.length;i++){  
                       nums.push(result[i].value);   
                     }
                    for(var i=0;i<result.length;i++){       
                        names.push(result[i].name);   	
                      }
					   for(var i=0;i<result.length;i++) {  
                                res.push({   
								name:names[i],
                                value:nums[i],
                               
                                });
								
					   }
			 
			           for(var i=0;i<8;i++)
						   {
							   names1[i]=names[i]
						   }
			          
			 
			        //南沙群岛名字问题  res.push({name: '南海诸岛',value: 0, itemStyle:{ normal:{opacity:0,label:{show:false}}} })
		/* for(var i=0;i<1;i++){

			 data1.push({
data:{ name: 'HAINAN',value: [18]} 
});                
}*/
		 
                    myChart5.hideLoading();  
					 
                    myChart5.setOption({        
                       angleAxis: {
                       type: 'category',
                       data: names1,
                       z: 10
                       },
                       series: [{
        type: 'bar',
        data:[res[0].value,res[1].value,res[2].value,res[3].value,res[4].value,res[5].value,res[6].value,res[7].value],
        coordinateSystem: 'polar',
        name: '第一年',
        stack: 'a',
						    itemStyle: {
            normal: {
                borderWidth: 4,
                borderColor: '#ffffff',
            },
            emphasis: {
                borderWidth: 0,
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
        },
						   color: [
			 '#87e7ed',  
			
       ],
						   
						   
    }, {
        type: 'bar',
        data:[res[10].value,res[11].value,res[12].value,res[13].value,res[14].value,res[15].value,res[16].value,res[17].value],
        coordinateSystem: 'polar',
        name: '第二年',
        stack: 'a',
		 itemStyle: {
            normal: {
                borderWidth: 4,
                borderColor: '#ffffff',
            },
            emphasis: {
                borderWidth: 0,
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
        },
		color: [  
			 '#52cdd5'
			 
       ]
    }, {
        type: 'bar',
        data: [res[20].value,res[21].value,res[22].value,res[23].value,res[24].value,res[25].value,res[26].value,res[27].value],
        coordinateSystem: 'polar',
        name: '第三年',
        stack: 'a',
		 itemStyle: {
            normal: {
                borderWidth: 4,
                borderColor: '#ffffff',
            },
            emphasis: {
                borderWidth: 0,
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
        },
		color: [
			 '#5cbce0'
			 
       ]
    },{
        type: 'bar',
        data: [res[30].value,res[31].value,res[32].value,res[33].value,res[34].value,res[35].value,res[36].value,res[37].value],
        coordinateSystem: 'polar',
        name: '第四年',
        stack: 'a',
		 itemStyle: {
            normal: {
                borderWidth: 4,
                borderColor: '#ffffff',
            },
            emphasis: {
                borderWidth: 0,
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
        },
		color: [	
			 '#1dc0ff',
			
       ]
    },
							   {
        type: 'bar',
        data: [res[40].value,res[41].value,res[42].value,res[43].value,res[44].value,res[45].value,res[46].value,res[47].value],
        coordinateSystem: 'polar',
        name: '第五年',
        stack: 'a',
								    itemStyle: {
            normal: {
                borderWidth: 4,
                borderColor: '#ffffff',
            },
            emphasis: {
                borderWidth: 0,
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
        },
			color: [
			 '#00acee',
       ]					   
    }],
                    });
                    

         
        },
		
         error : function(errorMsg) {
        
         alert("数据无法加载");
         myChart5.hideLoading();
		 }
    });		   
		   
		   
if (option && typeof option === "object") {
    myChart5.setOption(option, true);
}
		
       
    </script>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->


			
			
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">各语言用户用户领极坐标图</div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							 <div id="main4" style="width: 10%0;height:500px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart4 = echarts.init(document.getElementById('main4'));
option = {
    angleAxis: {
    },
    radiusAxis: {
    },
	tooltip: {
        trigger: 'item',
     
    },
    polar: {
    },
    series: [],
    legend: {
        show: true,
        data: ['第一年', '第二年', '第三年','第四年','第五年']
    }
};



myChart4.showLoading();    
         myChart4.setOption(option);
	     var data1=[];
         var names=[];    
         var nums=[]; 
		 var res=[];
		 var names1=[];
		 var series=[];
		 var year1=[]; 
		 var year2=[]; 
		 var year3=[]; 
		 var year4=[]; 
		 var year5=[]; 
         $.ajax({
         type : "get",
         async : true,            
         url : "static/tables/789.json",    
         dataType : "json",        
         success : function(result){
           
                    for(var i=0;i<result.length;i++){  
                       nums.push(result[i].value);   
                     }
                    for(var i=0;i<result.length;i++){       
                        names.push(result[i].name);   	
                      }
					   for(var i=0;i<result.length;i++) {  
                                res.push({   
								name:names[i],
                                value:nums[i],
                               
                                });
								
					   }
			 
			           for(var i=0;i<8;i++)
						   {
							   names1[i]=names[i]
						   }
			          
			 
			        //南沙群岛名字问题  res.push({name: '南海诸岛',value: 0, itemStyle:{ normal:{opacity:0,label:{show:false}}} })
		/* for(var i=0;i<1;i++){

			 data1.push({
data:{ name: 'HAINAN',value: [18]} 
});                
}*/
		 
                    myChart4.hideLoading();  
					 
                    myChart4.setOption({        
                       radiusAxis: {
        type: 'category',
        data: names1,
        z: 10
    },
                       series: [{
        type: 'bar',
        data:[res[0].value,res[1].value,res[2].value,res[3].value,res[4].value,res[5].value,res[6].value,res[7].value],
        coordinateSystem: 'polar',
        name: '第一年',
        stack: 'a',
						    itemStyle: {
            normal: {
                borderWidth: 4,
                borderColor: '#ffffff',
            },
            emphasis: {
                borderWidth: 0,
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
        },
						   color: [
			 '#87e7ed',  
			
       ]
    }, {
        type: 'bar',
        data:[res[10].value,res[11].value,res[12].value,res[13].value,res[14].value,res[15].value,res[16].value,res[17].value],
        coordinateSystem: 'polar',
        name: '第二年',
        stack: 'a',
		 itemStyle: {
            normal: {
                borderWidth: 4,
                borderColor: '#ffffff',
            },
            emphasis: {
                borderWidth: 0,
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
        },
		color: [  
			 '#52cdd5'
			 
       ]
    }, {
        type: 'bar',
        data: [res[20].value,res[21].value,res[22].value,res[23].value,res[24].value,res[25].value,res[26].value,res[27].value],
        coordinateSystem: 'polar',
        name: '第三年',
        stack: 'a',
		 itemStyle: {
            normal: {
                borderWidth: 4,
                borderColor: '#ffffff',
				
            },
            emphasis: {
                borderWidth: 0,
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
        },
		color: [
			 '#5cbce0'
			 
       ]
    },{
        type: 'bar',
        data: [res[30].value,res[31].value,res[32].value,res[33].value,res[34].value,res[35].value,res[36].value,res[37].value],
        coordinateSystem: 'polar',
        name: '第四年',
        stack: 'a',
		 itemStyle: {
            normal: {
                borderWidth: 4,
                borderColor: '#ffffff',
            },
            emphasis: {
                borderWidth: 0,
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
        },
		color: [	
			 '#1dc0ff',
			
       ]
    },
							   {
        type: 'bar',
        data: [res[40].value,res[41].value,res[42].value,res[43].value,res[44].value,res[45].value,res[46].value,res[47].value],
        coordinateSystem: 'polar',
        name: '第五年',
        stack: 'a',
		 itemStyle: {
            normal: {
                borderWidth: 4,
                borderColor: '#ffffff',
				
                    
            },
			 
            emphasis: {
                borderWidth: 0,
                shadowBlur: 10,
                shadowOffsetX: 0,
                shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
        },
			color: [
			 '#00acee',
       ],
								   
    }],
                    });
                    

         
        },
		
         error : function(errorMsg) {
        
         alert("数据无法加载");
         myChart4.hideLoading();
		 }
    });		   
		   
		   
if (option && typeof option === "object") {
    myChart4.setOption(option, true);
}




        // 使用刚指定的配置项和数据显示图表。
     myChart4.setOption(option);
	 setTimeout(function (){
     window.onresize = function () {
      myChart.resize();
       myChart2.resize();
	   myChart3.resize();
	   myChart4.resize();
	   myChart5.resize();

		   
    }
},400)
    </script>
						</div>
					</div>
				</div>
			</div>
		</div><!--/.row-->
						
	</div>	<!--/.main-->
	  

	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
	<script src="static/js/chart.min.js"></script>
	<script src="static/chart-data.js"></script>
	<script src="static/js/easypiechart.js"></script>
	<script src="static/js/easypiechart-data.js"></script>
	<script src="static/js/bootstrap-datepicker.js"></script>
	<script>
		!function ($) {
		    $(document).on("click","ul.nav li.parent > a > span.icon", function(){          
		        $(this).find('em:first').toggleClass("glyphicon-minus");      
		    }); 
		    $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	



</body></html>