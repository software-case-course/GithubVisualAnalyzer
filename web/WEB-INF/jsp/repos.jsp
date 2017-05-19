<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<html>
    <meta charset="utf-8">
    <title>ECharts</title>
    <!-- 引入 echarts.js -->
    <script src="js/echarts.min.js"></script>
    <script type="text/javascript" src="js/jquery.js"></script>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Lumino - Charts</title>

<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/datepicker3.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">



<script type="text/javascript">
	
$(function()
  {
	var obj;
	var img;
         $.ajax({
             type: "get",
             url: "data4.json",
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
             url: "api/repos/trending",
             //data: {username:$("#username").val(), content:$("#content").val()},
             dataType: "json",
             success: function(data){
				 obj=data;
                       console.log(obj);
			//     img=document.createElement('img');
	      //       img.src=obj.items[0].avatars[1];
				 document.getElementById("p1").height="200";
                 document.getElementById("p1").width="200";
				 document.getElementById("p1").src=obj.items[0].avatars[0];
				  document.getElementById("p11").height="200";
                 document.getElementById("p11").width="200";
				 document.getElementById("p11").src=obj.items[0].avatars[0];
				 document.getElementById("w1").href=obj.items[0].repo_link;
				 document.getElementById("d1").innerHTML=obj.items[0].desc;
				 document.getElementById("data11").innerHTML=obj.items[0].stars;
				 document.getElementById("data12").innerHTML=obj.items[0].forks;
				 document.getElementById("data13").innerHTML=obj.items[0].lang;
				 document.getElementById("stars1").innerHTML=obj.items[0].added_stars;
				 document.getElementById("repo1").innerHTML="项目仓库:"+obj.items[0].repo;
				 document.getElementById("desc1").innerHTML="项目描述:"+obj.items[0].desc;
				 
				  document.getElementById("p2").height="400";
                 document.getElementById("p2").width="400";
				 document.getElementById("p2").src=obj.items[1].avatars[0];
				 document.getElementById("d2").innerHTML=obj.items[1].desc;
				  document.getElementById("w2").href=obj.items[1].repo_link;
				 document.getElementById("p21").height="200";
                 document.getElementById("p21").width="200";
				 document.getElementById("p21").src=obj.items[1].avatars[0];	
				 document.getElementById("data21").innerHTML=obj.items[1].stars;
				 document.getElementById("data22").innerHTML=obj.items[1].forks;
				 document.getElementById("data23").innerHTML=obj.items[1].lang;
				 document.getElementById("stars2").innerHTML=obj.items[1].added_stars;
				 document.getElementById("repo2").innerHTML="项目仓库:"+obj.items[1].repo;
				 document.getElementById("desc2").innerHTML="项目描述:"+obj.items[1].desc;
				 
				   document.getElementById("p3").height="400";
                 document.getElementById("p3").width="400";
				 document.getElementById("p3").src=obj.items[2].avatars[0];
				 document.getElementById("d3").innerHTML=obj.items[2].desc;
				  document.getElementById("w3").href=obj.items[2].repo_link; 
				 document.getElementById("p31").height="200";
                 document.getElementById("p31").width="200";
				 document.getElementById("p31").src=obj.items[2].avatars[0];	
				 document.getElementById("data31").innerHTML=obj.items[1].stars;
				 document.getElementById("data32").innerHTML=obj.items[2].forks;
				 document.getElementById("data33").innerHTML=obj.items[2].lang;
				 document.getElementById("stars3").innerHTML=obj.items[2].added_stars;
				 document.getElementById("repo3").innerHTML="项目仓库:"+obj.items[2].repo;
				 document.getElementById("desc3").innerHTML="项目描述:"+obj.items[2].desc;
				 
				 
				   document.getElementById("p4").height="400";
                 document.getElementById("p4").width="400";
				 document.getElementById("p4").src=obj.items[3].avatars[0];
				 document.getElementById("d4").innerHTML=obj.items[3].desc;
				  document.getElementById("w4").href=obj.items[3].repo_link;
				 document.getElementById("p41").height="200";
                 document.getElementById("p41").width="200";
				 document.getElementById("p41").src=obj.items[3].avatars[0];	
				 document.getElementById("data41").innerHTML=obj.items[3].stars;
				 document.getElementById("data42").innerHTML=obj.items[3].forks;
				 document.getElementById("data43").innerHTML=obj.items[3].lang;
				 document.getElementById("stars4").innerHTML=obj.items[3].added_stars;
				 document.getElementById("repo4").innerHTML="项目仓库:"+obj.items[3].repo;
				 document.getElementById("desc4").innerHTML="项目描述:"+obj.items[3].desc;
				 
				   document.getElementById("p5").height="400";
                 document.getElementById("p5").width="400";
				 document.getElementById("p5").src=obj.items[4].avatars[0];
				 document.getElementById("d5").innerHTML=obj.items[4].desc;
				  document.getElementById("w5").href=obj.items[4].repo_link;
				 document.getElementById("p51").height="200";
                 document.getElementById("p51").width="200";
				 document.getElementById("p51").src=obj.items[4].avatars[0];	
				 document.getElementById("data51").innerHTML=obj.items[4].stars;
				 document.getElementById("data52").innerHTML=obj.items[4].forks;
				 document.getElementById("data53").innerHTML=obj.items[4].lang;
				 document.getElementById("stars5").innerHTML=obj.items[4].added_stars;
				 document.getElementById("repo5").innerHTML="项目仓库:"+obj.items[4].repo;
				 document.getElementById("desc5").innerHTML="项目描述:"+obj.items[4].desc;
	//document.querySelector('#pi').appendChild(img);
                      },
				 
			 error:function(){alert("error");
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
<div class="adcenter"><script src="../新建文件夹 (2)/Lumino - Charts3_files/ca-pub-1542822386688301.js"></script><script src="../新建文件夹 (2)/Lumino - Charts3_files/ggad2_728x90.js"></script><link type="text/css" rel="stylesheet" href="../新建文件夹 (2)/Lumino - Charts3_files/astyle.css">
<div align="center">
<script async="" src="../新建文件夹 (2)/Lumino - Charts3_files/adsbygoogle.js"></script>
<!-- cssmoban_728*90_show -->
<ins data-adsbygoogle-status="done" class="adsbygoogle" style="display:inline-block;width:728px;height:90px" data-ad-client="ca-pub-1542822386688301" data-ad-slot="3852412413"><ins id="aswift_0_expand" style="display:inline-table;border:none;height:90px;margin:0;padding:0;position:relative;visibility:visible;width:728px;background-color:transparent"><ins id="aswift_0_anchor" style="display:block;border:none;height:90px;margin:0;padding:0;position:relative;visibility:visible;width:728px;background-color:transparent"><iframe marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no" allowfullscreen="true" onload="var i=this.id,s=window.google_iframe_oncopy,H=s&amp;&amp;s.handlers,h=H&amp;&amp;H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&amp;&amp;d&amp;&amp;(!d.body||!d.body.firstChild)){if(h.call){setTimeout(h,0)}else if(h.match){try{h=s.upd(h,i)}catch(e){}w.location.replace(h)}}" id="aswift_0" name="aswift_0" style="left:0;position:absolute;top:0;" height="90" width="728" frameborder="0"></iframe></ins></ins></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
</div>
</div>
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#sidebar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#"><span>Github</span></a>
				<ul class="user-menu">
					<li class="dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> User <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#"><span class="glyphicon glyphicon-user"></span> Profile</a></li>
							<li><a href="#"><span class="glyphicon glyphicon-cog"></span> Settings</a></li>
							<li><a href="#"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
						</ul>
					</li>
				</ul>
			</div>
							
		</div><!-- /.container-fluid -->
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		<form role="search">
			<div class="form-group">
				<input class="form-control" placeholder="Search" type="text">
			</div>
		</form>
		<ul class="nav menu">
			<li><a href="http://demo.cssmoban.com/cssthemes3/btst_5_medialoot/index.html"><span class="glyphicon glyphicon-dashboard"></span> 首页</a></li>
			<li><a href="http://demo.cssmoban.com/cssthemes3/btst_5_medialoot/widgets.html"><span class="glyphicon glyphicon-th"></span> 语言</a></li>
			<li ><a href="http://demo.cssmoban.com/cssthemes3/btst_5_medialoot/charts.html"><span class="glyphicon glyphicon-stats"></span> 用户</a></li>
			<li class="active"><a href="http://demo.cssmoban.com/cssthemes3/btst_5_medialoot/tables.html"><span class="glyphicon glyphicon-list-alt"></span> 项目</a></li>
			<li><a href="http://demo.cssmoban.com/cssthemes3/btst_5_medialoot/forms.html"><span class="glyphicon glyphicon-pencil"></span> 地域</a></li>
			<li><a href="http://demo.cssmoban.com/cssthemes3/btst_5_medialoot/panels.html"><span class="glyphicon glyphicon-info-sign"></span> 技术分类</a></li>
			<li class="parent ">
				<a href="#">
					<span class="glyphicon glyphicon-list"></span> Dropdown <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
				</a>
				<ul class="children collapse" id="sub-item-1">
					<li>
						<a class="" href="#">
							<span class="glyphicon glyphicon-share-alt"></span> Sub Item 1
						</a>
					</li>
					<li>
						<a class="" href="#">
							<span class="glyphicon glyphicon-share-alt"></span> Sub Item 2
						</a>
					</li>
					<li>
						<a class="" href="#">
							<span class="glyphicon glyphicon-share-alt"></span> Sub Item 3
						</a>
					</li>
				</ul>
			</li>
			<li role="presentation" class="divider"></li>
			<li><a href="http://demo.cssmoban.com/cssthemes3/btst_5_medialoot/login.html"><span class="glyphicon glyphicon-user"></span> Login Page</a></li>
		</ul>
		<div class="attribution">Template by <a href="http://www.medialoot.com/item/lumino-admin-bootstrap-template/">地域</a></div>
	</div><!--/.sidebar-->
	
	
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">		
		
		<div class="row"> </div><!--/.row-->
		
		  <div class="row">
				

		  <div class="col-xs-12 col-md-4 col-lg-offset-0 col-lg-4">
			
				<div class="panel panel-blue ">
					<div class="panel-heading dark-overlay"><span class="glyphicon glyphicon-check"></span>所有仓库排行   </div>
					<div class="panel-body">
						<ul class="todo-list" id="myTab" >
						<li class="todo-list-item">
							   <div class="row ">
                                    <div class="col-xs-3 col-lg-2">
                                           <div class="avatar">
                                           
                                        <img id="p1" alt="Circle Image" class="img-rounded img-no-padding img-responsive" >
                                           
                                             </div>
                                             
                                     </div>
                                     
                                   <div class="col-xs-9 col-lg-9 ">
                                    
								
									<a href="#no1" data-toggle="tab" >	<span id="d1"></span></a>
								    
                                     </div>
                                 
								</div>
						  </li>
						  
						  
						  <li class="todo-list-item ">
								  <div class="row ">
                                    <div class="col-xs-3 col-lg-2">
                                           <div class="avatar">
                                           
                                      <img id="p2" alt="Circle Image" class="img-rounded img-no-padding img-responsive" >
                                           
                                             </div>
                                             
                                     </div>
                                     
                                   <div class="col-xs-9 col-lg-9 ">
                                    
								
									<a href="#no2" data-toggle="tab" >	<span id="d2"></span></a>
								    
                                     </div>
                                 
							</div>
								
							</li>
							<li class="todo-list-item">
								<div class="row ">
                                    <div class="col-xs-3 col-lg-2">
                                           <div class="avatar">
                                   <img id="p3" alt="Circle Image" class="img-rounded img-no-padding img-responsive" >
                                           
                                             </div>
                                             
                                     </div>
                                     
                                   <div class="col-xs-4 col-lg-9 ">
                                    
								
									<a href="#no3" data-toggle="tab" >	<span id="d3"></span></a>
								    
                                     </div>
                                 
								</div>
							</li>
							<li class="todo-list-item">
								 <div class="row ">
                                    <div class="col-xs-3 col-lg-2">
                                           <div class="avatar">
                                           
                                       <img id="p4" alt="Circle Image" class="img-rounded img-no-padding img-responsive" >
                                           
                                             </div>
                                             
                                     </div>
                                     
                                   <div class="col-xs-9 col-lg-9 ">
                                    
								
									<a href="#no4" data-toggle="tab" >	<span id="d4"></span></a>
								    
                                     </div>
                                 
								</div>
				
							</li>
							
							<li class="todo-list-item">
								 <div class="row ">
                                    <div class="col-xs-3 col-lg-2">
                                           <div class="avatar">
                                           
                                         <img id="p5" alt="Circle Image" class="img-rounded img-no-padding img-responsive" >
                                           
                                             </div>
                                             
                                     </div>
                                     
                                   <div class="col-xs-9 col-lg-9 ">
                                    
								
									<a href="#no5" data-toggle="tab" >	<span id="d5"></span></a>
								    
                                     </div>
                                 
								</div>
							</li>
						</ul>
					</div>
					
				</div>
								
			</div><!--/.col-->
		
	<div class="col-xs-12 col-md-8 col-lg-offset-0 col-lg-8">
			<div class="panel panel-info">
	<div class="panel-blue">
			<div class="panel-heading dark-overlay"><span class="glyphicon glyphicon-check"></span>仓库  </div>
	</div>
	<div id="myTabContent" class="tab-content">
	
	<div class="tab-pane fade in active" id="no1">
	<div class="panel-body">
    <div class="col-xs-offset-4 col-xs-4  col-md-offset-4  col-md-4 col-lg-offset-4 co-lg-4">
    <img id="p11" alt="Circle Image" class="img-circle img-no-padding img-responsive" >
    </div>
	</div>	
	<div class="row text-center">
  <div class="col-xs-4 col-md-4 col-lg-4">
  <span class="glyphicon glyphicon-star" data-toggle="tooltip" data-placement="top" title="starts" style="font-size: 40px"><p id="data11"></span>
  </div>
  <div class="col-xs-4 col-md-4 col-lg-4">
  	 <span class="glyphicon glyphicon-eye-open"data-toggle="tooltip" data-placement="top" title="forks" style="font-size: 40px"><p id="data12"></p></span>
  </div>
  <div class="col-xs-4 col-md-4 col-lg-4">
  	<span class="glyphicon glyphicon-tags" data-toggle="tooltip" data-placement="top" title="language" style="font-size: 40px"><p id="data13"></p></span>
  </div>
  <div class="row " style="margin-top: 100px" >
  <p><h1 id="stars1" ></p>
  </div>

</div>
<div class="row " style=" margin:20px" >
  <p><h3 id="repo1" ></p>
  <p><h3 id="desc1" ></h1></p>
  
 
</div>
    <a target="_top" id="w1" ><button type="button" class="btn btn-block btn-primary">进入仓库</button></a>
	</div>
	
	<div class="tab-pane fade" id="no2">
	<div class="panel-body">
    <div class="col-xs-offset-4 col-xs-4  col-md-offset-4  col-md-4 col-lg-offset-4 co-lg-4">
    <img id="p21" alt="Circle Image" class="img-circle img-no-padding img-responsive" >
    </div>
	</div>	
	<div class="row text-center">
  <div class="col-xs-4 col-md-4 col-lg-4">
  <span class="glyphicon glyphicon-star" data-toggle="tooltip" data-placement="top" title="starts" style="font-size: 40px"><p id="data21"></span>
  </div>
  <div class="col-xs-4 col-md-4 col-lg-4">
  	 <span class="glyphicon glyphicon-eye-open"data-toggle="tooltip" data-placement="top" title="forks" style="font-size: 40px"><p id="data22"></p></span>
  </div>
  <div class="col-xs-4 col-md-4 col-lg-4">
  	<span class="glyphicon glyphicon-tags" data-toggle="tooltip" data-placement="top" title="language" style="font-size: 40px"><p id="data23"></p></span>
  </div>
  <div class="row " style="margin-top: 100px" >
  <p><h1 id="stars2" ></h1></p>
  </div>

</div>
<div class="row " style=" margin:20px" >
  <p><h3 id="repo2" ></p>
  <p><h3 id="desc2" ></h1></p>
</div>
<a target="_top" id="w2" ><button type="button" class="btn btn-block btn-primary">进入仓库</button></a>
	</div>
	<div class="tab-pane fade " id="no3">
	<div class="panel-body">
    <div class="col-xs-offset-4 col-xs-4  col-md-offset-4  col-md-4 col-lg-offset-4 co-lg-4">
    <img id="p31" alt="Circle Image" class="img-circle img-no-padding img-responsive" >
    </div>
	</div>	
	<div class="row text-center">
  <div class="col-xs-4 col-md-4 col-lg-4">
  <span class="glyphicon glyphicon-star" data-toggle="tooltip" data-placement="top" title="starts" style="font-size: 40px"><p id="data31"></span>
  </div>
  <div class="col-xs-4 col-md-4 col-lg-4">
  	 <span class="glyphicon glyphicon-eye-open"data-toggle="tooltip" data-placement="top" title="forks" style="font-size: 40px"><p id="data32"></p></span>
  </div>
  <div class="col-xs-4 col-md-4 col-lg-4">
  	<span class="glyphicon glyphicon-tags" data-toggle="tooltip" data-placement="top" title="language" style="font-size: 40px"><p id="data33"></p></span>
  </div>
  <div class="row " style="margin-top: 100px" >
  <p><h1 id="stars3" ></p>
  </div>

</div>
<div class="row " style=" margin:20px" >
  <p><h3 id="repo3" ></p>
  <p><h3 id="desc3" ></h1></p>
</div>
<a target="_top" id="w3" ><button type="button" class="btn btn-block btn-primary">进入仓库</button></a>
	</div>
	
	
	<div class="tab-pane fade" id="no4">
	<div class="panel-body">
    <div class="col-xs-offset-4 col-xs-4  col-md-offset-4  col-md-4 col-lg-offset-4 co-lg-4">
    <img id="p41" alt="Circle Image" class="img-circle img-no-padding img-responsive" >
    </div>
	</div>	
	<div class="row text-center">
  <div class="col-xs-4 col-md-4 col-lg-4">
  <span class="glyphicon glyphicon-star" data-toggle="tooltip" data-placement="top" title="starts" style="font-size: 40px"><p id="data41"></span>
  </div>
  <div class="col-xs-4 col-md-4 col-lg-4">
  	 <span class="glyphicon glyphicon-eye-open"data-toggle="tooltip" data-placement="top" title="forks" style="font-size: 40px"><p id="data42"></p></span>
  </div>
  <div class="col-xs-4 col-md-4 col-lg-4">
  	<span class="glyphicon glyphicon-tags" data-toggle="tooltip" data-placement="top" title="language" style="font-size: 40px"><p id="data43"></p></span>
  </div>
  <div class="row " style="margin-top: 100px" >
  <p><h1 id="stars4" ></h1></p>
  </div>

</div>
<div class="row " style=" margin:20px" >
  <p><h3 id="repo4" ></p>
  <p><h3 id="desc4" ></h1></p>
</div>
<a target="_top" id="w4" ><button type="button" class="btn btn-block btn-primary">进入仓库</button></a>
	</div>
	
	
	<div class="tab-pane fade" id="no5">
	<div class="panel-body">
    <div class="col-xs-offset-4 col-xs-4  col-md-offset-4  col-md-4 col-lg-offset-4 co-lg-4">
    <img id="p51" alt="Circle Image" class="img-circle img-no-padding img-responsive" >
    </div>
	</div>	
	<div class="row text-center">
  <div class="col-xs-4 col-md-4 col-lg-4">
  <span class="glyphicon glyphicon-star" data-toggle="tooltip" data-placement="top" title="starts" style="font-size: 40px"><p id="data51"></span>
  </div>
  <div class="col-xs-4 col-md-4 col-lg-4">
  	 <span class="glyphicon glyphicon-eye-open"data-toggle="tooltip" data-placement="top" title="forks" style="font-size: 40px"><p id="data52"></p></span>
  </div>
  <div class="col-xs-4 col-md-4 col-lg-4">
  	<span class="glyphicon glyphicon-tags" data-toggle="tooltip" data-placement="top" title="language" style="font-size: 40px"><p id="data53"></p></span>
  </div>
  <div class="row " style="margin-top: 100px" >
  <p><h1 id="stars5" ></h1></p>
  </div>

</div>
<div class="row " style=" margin:20px" >
  <p><h3 id="repo5" ></p>
  <p><h3 id="desc5" ></h1></p>
</div>
<a target="_top" id="w5" ><button type="button" class="btn btn-block btn-primary">进入仓库</button></a>
	</div>
	
	
	</div>
	</div>
	
	
	
	
</div>
						
							
								
			</div><!--/.col-->
		
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">项目</h1>
				
			</div>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">仓库</div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							 <div id="main" style="width:100%;height:650px;"></div>
    <script type="text/javascript">
		
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var xData = function() {
    var data = [];
    for (var i = 1; i < 13; i++) {
        data.push(i + "月份");
    }
    return data;
}();

option = {
    backgroundColor: "#344b58",
    "title": {
        "text": "仓库统计",
      
        x: "4%",

        textStyle: {
            color: '#fff',
            fontSize: '22'
        },
        subtextStyle: {
            color: '#90979c',
            fontSize: '16',

        },
    },
    "tooltip": {
        "trigger": "axis",
        "axisPointer": {
            "type": "shadow",
            textStyle: {
                color: "#fff"
            }

        },
    },
    "grid": {
        "borderWidth": 0,
        "top": 110,
        "bottom": 95,
        textStyle: {
            color: "#fff"
        }
    },
    "legend": {
        x: '4%',
        top: '11%',
        textStyle: {
            color: '#90979c',
        },
        "data": ['C++', 'Java', 'Python', '其他']
    },
     

    "calculable": true,
    "xAxis": [{
        "type": "category",
        "axisLine": {
            lineStyle: {
                color: '#90979c'
            }
        },
        "splitLine": {
            "show": false
        },
        "axisTick": {
            "show": false
        },
        "splitArea": {
            "show": false
        },
        "axisLabel": {
            "interval": 0,

        },
        "data": xData,
    }],
    "yAxis": [{
        "type": "value",
        "splitLine": {
            "show": false
        },
        "axisLine": {
            lineStyle: {
                color: '#90979c'
            }
        },
        "axisTick": {
            "show": false
        },
        "axisLabel": {
            "interval": 0,

        },
        "splitArea": {
            "show": false
        },

    }],
    "dataZoom": [{
        "show": true,
        "height": 30,
        "xAxisIndex": [
            0
        ],
        bottom: 30,
        "start": 10,
        "end": 80,
        handleIcon: 'path://M306.1,413c0,2.2-1.8,4-4,4h-59.8c-2.2,0-4-1.8-4-4V200.8c0-2.2,1.8-4,4-4h59.8c2.2,0,4,1.8,4,4V413z',
        handleSize: '110%',
        handleStyle:{
            color:"#d3dee5",
            
        },
           textStyle:{
            color:"#fff"},
           borderColor:"#90979c"
        
        
    }, {
        "type": "inside",
        "show": true,
        "height": 15,
        "start": 1,
        "end": 35
    }],
    "series": [{
            "name": "C++",
            "type": "bar",
            "stack": "总量",
            "barMaxWidth": 35,
            "barGap": "10%",
            "itemStyle": {
                "normal": {
                    "color": "rgba(255,144,128,1)",
                    "label": {
                        "show": true,
                        "textStyle": {
                            "color": "#fff"
                        },
                        "position": "insideTop",
                        formatter: function(p) {
                            return p.value > 0 ? (p.value) : '';
                        }
                    }
                }
            },
            "data": [
                1000,
                1000,
                1500,
                1500,
                2500,
                2000,
                2000,
                4000,
                3000,
                3000,
                4000,
                3000
            ],
        },

{
            "name": "Java",
            "type": "bar",
            "stack": "总量",
            "barMaxWidth": 35,
            "barGap": "10%",
            "itemStyle": {
                "normal": {
                    "color": "rgba(219,65,43,1)",
                    "label": {
                        "show": true,
                        "textStyle": {
                            "color": "#fff"
                        },
                        "position": "insideTop",
                        formatter: function(p) {
                            return p.value > 0 ? (p.value) : '';
                        }
                    }
                }
            },
            "data": [
                709,
                1917,
                2455,
                2610,
                1719,
                1433,
                1544,
                3285,
                5208,
                3372,
                2484,
                4078
            ],
        },
        {
            "name": "Python",
            "type": "bar",
            "stack": "总量",
            "barMaxWidth": 35,
            "barGap": "10%",
            "itemStyle": {
                "normal": {
                    "color": "rgba(199,61,182,1)",
                    "label": {
                        "show": true,
                        "textStyle": {
                            "color": "#fff"
                        },
                        "position": "insideTop",
                        formatter: function(p) {
                            return p.value > 0 ? (p.value) : '';
                        }
                    }
                }
            },
            "data": [
                1700,
                1000,
                1400,
                1200,
                1400,
                1000,
                1000,
                1300,
                1500,
                1300,
                1200,
                1400
            ],
        },
        {
            "name": "其他",
            "type": "bar",
            "stack": "总量",
            "itemStyle": {
                "normal": {
                    "color": "rgba(0,191,183,1)",
                    "barBorderRadius": 0,
                    "label": {
                        "show": true,
                        "position": "top",
                        formatter: function(p) {
                            return p.value > 0 ? (p.value) : '';
                        }
                    }
                }
            },
            "data": [
                327,
                1776,
                507,
                1200,
                800,
                482,
                204,
                1390,
                1001,
                951,
                381,
                220
            ]
        }, {
            "name": "总数",
            "type": "line",
            "stack": "总量",
            symbolSize:10,
            symbol:'circle',
            "itemStyle": {
                "normal": {
                    "color": "rgba(252,230,48,1)",
                    "barBorderRadius": 0,
                    "label": {
                        "show": true,
                        "position": "top",
                        formatter: function(p) {
                            return p.value > 0 ? (p.value) : '';
                        }
                    }
                }
            },
            "data": [
                3736,
                5693,
                5862,
                6510,
                6419,
                4915,
                4748,
                9975,
                10709,
                8623,
                8065,
                8698
            ]
        },
    ]
}
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
		
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
						<div id="main2" style="width: 100%;height:650px;"></div>
    <script type="text/javascript">
		
        // 基于准备好的dom，初始化echarts实例
        var myChart2 = echarts.init(document.getElementById('main2'));

        // 指定图表的配置项和数据
        var xData = function() {
    var data = [];
    for (var i = 1; i < 13; i++) {
        data.push(i + "月份");
    }
    return data;
}();
option2 = {
    title: {
        text: '仓库贡献排行'
    },
    tooltip: {
        trigger: 'axis',
        axisPointer: { // 坐标轴指示器，坐标轴触发有效
            type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
        }
    },
    legend: {
        data: ['C++', 'Java', 'Python', 'Others'],
        align: 'right',
        right: 10
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
    xAxis: [{
        type: 'category',
        data: ['No.1', 'No.2', 'No.3', 'No.4', 'No.5']
    }],
    yAxis: [{
        type: 'value',
        name: '项目(个)',
        axisLabel: {
            formatter: '{value}'
        }
    }],
    series: [{
        name: 'C++',
        type: 'bar',
		 itemStyle: {
                "normal": {
                    "color": "rgba(48,165,255,1)"}},
        data: [35, 30, 28, 19, 18]
    }, {
        name: 'Java',
        type: 'bar',
		 itemStyle: {
                "normal": {
                    "color": "rgba(255,181,62,1)"}},
        data: [30, 20, 19, 15, 13]
    }, {
        name: 'Python',
        type: 'bar',
		 itemStyle: {
                "normal": {
                    "color": "rgba(30,191,174,1)"}},
        data: [19, 16, 12, 9, 6]
    }, {
        name: 'Others',
        type: 'bar',
		 itemStyle: {
                "normal": {
                    "color": "rgba(249,36,63,1)"}},
        data: [16, 12, 9, 5, 4]
    }]
};
        myChart2.setOption(option2);
		setTimeout(function (){
    window.onresize = function () {
        myChart.resize();
        myChart2.resize();
    }
},200)
    </script>
					</div>
				</div>
			</div>
		</div><!--/.row-->		
		
		<div class="row">
		<div class="col-md-3">
			<div class="col-md-12">
				<div class="panel panel-blue">
					<div class="panel-heading">C++</div>
					<div class="panel-body">
						<ul class="todo-list">
						<li class="todo-list-item">
								<div class="checkbox">
									<label for="checkbox">1.Donne Lian</label>
								</div>
								
						  </li>
						  <li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">2.Mike abile</label>
								</div>
								
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">3.Wu Yifan</label>
								</div>
							
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">4.SuperMonkey</label>
								</div>
				
							</li>
							
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">5.Lover</label>
								</div>
							
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">6.Bear</label>
								</div>
						
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>占比:</h4>
						<div class="easypiechart" id="easypiechart-blue" data-percent="40"><span class="percent">40%</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		  <div class="col-md-3">
			<div class="col-md-12">
				<div class="panel panel-orange">
					<div class="panel-heading">Java</div>
					<div class="panel-body">
						<ul class="todo-list">
						<li class="todo-list-item">
								<div class="checkbox">
									<label for="checkbox">1.Line</label>
								</div>
								
						  </li>
						  <li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">2. Bowie</label>
								</div>
								
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">3.Smith  </label>
								</div>
							
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">4.Drink coffee</label>
								</div>
				
							</li>
							
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">5.Donne</label>
								</div>
							
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">6.Tidy</label>
								</div>
						
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class=" col-md-12">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>占比:</h4>
						<div class="easypiechart" id="easypiechart-orange" data-percent="30"><span class="percent">30%</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="col-md-12">
				<div class="panel panel-teal">
					<div class="panel-heading">Python</div>
					<div class="panel-body">
						<ul class="todo-list">
						<li class="todo-list-item">
								<div class="checkbox">
									<label for="checkbox">1.Mike</label>
								</div>
								
						  </li>
						  <li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">2.Wask</label>
								</div>
								
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">3.SendMeMail</label>
								</div>
							
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">4.Drinkcoffee</label>
								</div>
				
							</li>
							
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">5.Dosomework</label>
								</div>
							
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">6.Tidyupworkspace</label>
								</div>
						
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-body easypiechart-panel">
						<h4>占比:</h4>
						<div class="easypiechart" id="easypiechart-teal" data-percent="20"><span class="percent">20%</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-3">	
			<div class="col-md-12">
				<div class="panel panel-red">
					<div class="panel-heading">Others</div>
					<div class="panel-body">
						<ul class="todo-list">
						<li class="todo-list-item">
								<div class="checkbox">
									<label for="checkbox">1.Ma</label>
								</div>
								
						  </li>
						  <li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">2.Upmp</label>
								</div>
								
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">3.SenJane</label>
								</div>
							
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">4.Drinffee</label>
								</div>
				
							</li>
							
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">5.Dwork</label>
								</div>
							
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">6.Tidykspace</label>
								</div>
						
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-12">
				<div class="panel panel-default">
				  <div class="panel-body easypiechart-panel">
						<h4>占比:</h4>
						<div class="easypiechart" id="easypiechart-red" data-percent="17"><span class="percent">10%</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div><!--/.row-->
						
	</div>	<!--/.main-->
	  

	<script src="js/bootstrap.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
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
<script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script>
	$("#id1").css({"height":"340px"});
	</script>


</body></html>