﻿<!DOCTYPE html>
<html>
    <meta charset="utf-8">
    <title>Github可视化系统</title>
    <!-- 引入 echarts.js -->
    <script src="static/js/echarts.min.js"></script>
    <script src="static/js/jquery.js"></script>
    <script src="static/js/chinaEng.js"></script>
<head>


<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Lumino - Dashboard</title>

<link href="static/css/bootstrap.css" rel="stylesheet">
<link href="static/css/datepicker3.css" rel="stylesheet">
<link href="static/css/styles.css" rel="stylesheet">


<script type="text/javascript">
	
$(function()
  {
	
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
             url: "static/tables/user_trending.json",
             //data: {username:$("#username").val(), content:$("#content").val()},
             dataType: "json ",
             success: function(data){
				 obj=data;
                       console.log(obj);
			//     img=document.createElement('img');
	      //       img.src=obj.items[0].avatars[1];
				 document.getElementById("p1").src=obj.items[0].avatar_url;	
				 document.getElementById("user_link1").href=obj.items[0].user_link;
				 document.getElementById("user_link12").href=obj.items[0].user_link;
				 document.getElementById("user1").innerHTML=obj.items[0].user;
			     document.getElementById("target1").innerHTML=obj.items[0].target;
				 document.getElementById("target_link1").href=obj.items[0].target_link;
				 document.getElementById("target_desc1").innerHTML=obj.items[0].target_desc;
				
				 
				  document.getElementById("p2").src=obj.items[1].avatar_url;	
				 document.getElementById("user_link2").href=obj.items[1].user_link;
				 document.getElementById("user_link22").href=obj.items[1].user_link;
				 document.getElementById("user2").innerHTML=obj.items[1].user;
			     document.getElementById("target2").innerHTML=obj.items[1].target;
				 document.getElementById("target_link2").href=obj.items[1].target_link;
				 document.getElementById("target_desc2").innerHTML=obj.items[1].target_desc;
				 
				   document.getElementById("p3").src=obj.items[2].avatar_url;	
				 document.getElementById("user_link3").href=obj.items[2].user_link;
				 document.getElementById("user_link32").href=obj.items[2].user_link;
				 document.getElementById("user3").innerHTML=obj.items[2].user;
			     document.getElementById("target3").innerHTML=obj.items[2].target;
				 document.getElementById("target_link3").href=obj.items[2].target_link;
				 document.getElementById("target_desc3").innerHTML=obj.items[2].target_desc;
				
				   document.getElementById("p4").src=obj.items[3].avatar_url;	
				 document.getElementById("user_link4").href=obj.items[3].user_link;
				 document.getElementById("user_link42").href=obj.items[3].user_link;
				 document.getElementById("user4").innerHTML=obj.items[3].user;
			     document.getElementById("target4").innerHTML=obj.items[3].target;
				 document.getElementById("target_link4").href=obj.items[3].target_link;
				 document.getElementById("target_desc4").innerHTML=obj.items[3].target_desc;
				
				  document.getElementById("p5").src=obj.items[4].avatar_url;	
				 document.getElementById("user_link5").href=obj.items[4].user_link;
				 document.getElementById("user_link52").href=obj.items[4].user_link;
				 document.getElementById("user5").innerHTML=obj.items[4].user;
			     document.getElementById("target5").innerHTML=obj.items[4].target;
				 document.getElementById("target_link5").href=obj.items[4].target_link;
				 document.getElementById("target_desc5").innerHTML=obj.items[4].target_desc;

	//document.querySelector('#pi').appendChild(img);
                      },
				 
			 error:function(){
		 }
         });
	
		 }
         });
	
});
</script>

<script type="text/javascript">
	
$(function()
  {
	
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
             url: "static/tables/data4.json",
             //data: {username:$("#username").val(), content:$("#content").val()},
             dataType: "json ",
             success: function(data){
				 obj=data;
                       console.log(obj);
			//     img=document.createElement('img');
	      //       img.src=obj.items[0].avatars[1];
				 document.getElementById("repo_link1").href=obj.items[0].repo_link;
				  document.getElementById("repo1").innerHTML=obj.items[0].repo;
				  document.getElementById("lang1").innerHTML=obj.items[0].lang;
				 document.getElementById("stars1").innerHTML=obj.items[0].stars;
				 
				  document.getElementById("desc1").innerHTML=obj.items[0].desc;
				  document.getElementById("add1").innerHTML=obj.items[0].added_stars;
				
			
				 
				  document.getElementById("repo_link2").href=obj.items[1].repo_link;
				  document.getElementById("repo2").innerHTML=obj.items[1].repo;
				  document.getElementById("lang2").innerHTML=obj.items[1].lang;
				 document.getElementById("stars2").innerHTML=obj.items[1].stars;
				 
				  document.getElementById("desc2").innerHTML=obj.items[1].desc;
				  document.getElementById("add2").innerHTML=obj.items[1].added_stars;
				
				 
				 	 
				  document.getElementById("repo_link3").href=obj.items[2].repo_link;
				  document.getElementById("repo3").innerHTML=obj.items[2].repo;
				  document.getElementById("lang3").innerHTML=obj.items[2].lang;
				 document.getElementById("stars3").innerHTML=obj.items[2].stars;
				 
				  document.getElementById("desc3").innerHTML=obj.items[2].desc;
				  document.getElementById("add3").innerHTML=obj.items[2].added_stars;
				 
				 
				  	 
				  document.getElementById("repo_link4").href=obj.items[3].repo_link;
				  document.getElementById("repo4").innerHTML=obj.items[3].repo;
				  document.getElementById("lang4").innerHTML=obj.items[3].lang;
				 document.getElementById("stars4").innerHTML=obj.items[3].stars;
				 
				  document.getElementById("desc4").innerHTML=obj.items[3].desc;
				  document.getElementById("add4").innerHTML=obj.items[3].added_stars;
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
<script src="static/js/html5shiv.js"></script>
<script src="static/js/respond.min.js"></script>
<![endif]-->



</head>
<body>
<div class="adcenter"><script src="Lumino%20-%20Dashboard_files/ca-pub-1542822386688301.js"></script><script src="Lumino%20-%20Dashboard_files/ggad2_728x90.js"></script><link type="text/css" rel="stylesheet" href="Lumino%20-%20Dashboard_files/astyle.css">
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
				<a class="navbar-brand" href="#"><span>Github</span>可视化</a>
				<ul class="user-menu">
					<li class="dropdown pull-right">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> 用户 <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
                            <li><a href="signup"><span class="glyphicon glyphicon-pencil"></span> 注册</a></li>
                            <li><a href="login"><span class="glyphicon glyphicon-user"></span> 登陆</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div><!-- /.container-fluid -->
	</nav>
		
	<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
		
		<ul class="nav menu">
			<li class="active"><a href="index"><span class="glyphicon glyphicon-dashboard"></span> 首页</a></li>
			<li class="parent ">
				<a href="#">
					<span class="glyphicon glyphicon-list"></span> 语言 <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
				</a>
				<ul class="children collapse" id="sub-item-1">
					
							<li><a href="/language/china"><span class="glyphicon glyphicon-stats"></span> 中国</a></li>
						
					
							<li><a href="/language/world"><span class="glyphicon glyphicon-stats"></span> 全世界</a></li>
					
				</ul>
			</li>
			<li><a href="user"><span class="glyphicon glyphicon-stats"></span> 用户</a></li>
			<li><a href="repos"><span class="glyphicon glyphicon-list-alt"></span> 项目（仓库）</a></li>
			<li><a href="area"><span class="glyphicon glyphicon-pencil"></span> 地域</a></li>
			
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
				<li class="active">首页</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">首页</h1>
			</div>
		</div><!--/.row-->


        <div class="row">

            <div class="col-md-6">

                <div class="panel panel-default chat">
                    <div class="panel-heading dark-overlay"><span class="glyphicon glyphicon-check"></span>热门仓库   </div>
                    <div class="panel-body">
                        <ul class="todo-list">


                            <li class="collection-item">

                                <a id="repo_link1" target="_top" class="v-align-middle"><span id="repo1"></span></a>

                                <div class="col-2 text-right pt-1 pr-3 pt-2">
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="123 forks this week" id="lang1"></span>
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="2,829 stars this week"><svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"></path></svg><span id="stars1"></span></span>
                                </div>
                                <p class="col-6 d-inline-block mb-2 pr-4" style="color: #bbbbbb" id="desc1">
                                </p>
                                <p class="f6 mb-0 mt-2" style="color: #bbbbbb" id="add1">
                                   <relative-time datetime="2017-03-16T23:31:03Z" title="2017 M03 17 07:31 GMT+8"></relative-time>
                                </p>
                            </li>

                            <li class="collection-item">

                                <a id="repo_link2" target="_top" class="v-align-middle"><span id="repo2"></span></a>

                                <div class="col-2 text-right pt-1 pr-3 pt-2">
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="123 forks this week" id="lang2"> </span>
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="2,829 stars this week"><svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"></path></svg><span id="stars2"></span></span>
                                </div>
                                <p class="col-6 d-inline-block mb-2 pr-4" style="color: #bbbbbb" id="desc2">
                                </p>
                                <p class="f6 mb-0 mt-2" style="color: #bbbbbb" id="add2">
                                   <relative-time datetime="2017-03-16T23:31:03Z" title="2017 M03 17 07:31 GMT+8"></relative-time>
                                </p>
                            </li>

                            <li class="collection-item">

                                <a id="repo_link3" target="_top" class="v-align-middle"><span id="repo3"></span></a>

                                <div class="col-2 text-right pt-1 pr-3 pt-2">
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="123 forks this week" id="lang3"></span>
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="2,829 stars this week"><svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"></path></svg><span id="stars3"></span></span>
                                </div>
                                <p class="col-6 d-inline-block mb-2 pr-4" style="color: #bbbbbb" id="desc3">
                                </p>
                                <p class="f6 mb-0 mt-2" style="color: #bbbbbb" id="add3">
                                   <relative-time datetime="2017-03-16T23:31:03Z" title="2017 M03 17 07:31 GMT+8"></relative-time>
                                </p>
                            </li>

                            <li class="collection-item">

                                <a id="repo_link4" target="_top" class="v-align-middle"><span id="repo4"></span></a>

                                <div class="col-2 text-right pt-1 pr-3 pt-2">
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="123 forks this week" id="lang4"></span>
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="2,829 stars this week"><svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"></path></svg><span id="stars4"></span></span>
                                </div>
                                 <p class="col-6 d-inline-block mb-2 pr-4" style="color: #bbbbbb" id="desc4">
                                </p>
                                <p class="f6 mb-0 mt-2" style="color: #bbbbbb" id="add4">
                                   <relative-time datetime="2017-03-16T23:31:03Z" title="2017 M03 17 07:31 GMT+8"></relative-time>
                                </p>
                            </li>
                        </ul>
                    </div>

                </div>

            </div><!--/.col-->

            <div class="col-md-6">

                <div class="panel panel-default chat">
                    <div class="panel-heading dark-overlay"><span class="glyphicon glyphicon-check"></span>热门用户   </div>
                    <div class="panel-body">
                        <ul class="todo-list">
                            <li class="collection-item">
                                <div class=" text-left pt-1 pr-3 pt-2">
                                    <a id="user_link12" target="_top"><img alt="@ory" class="author-gravatar" height="40" id="p1" width="40"></a>
                                    
                                    <a class="repo-name css-truncate css-truncate-target" target="_top" id="user_link1"><span id="user1"></span></a>
                                </div>
                                <div class=" text-right pt-1 pr-3 pt-2">
                                    <span class="collection-stat text-right tooltipped tooltipped-n" aria-label="68 forks this week"><svg aria-hidden="true" class="octicon octicon-git-branch" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path fill-rule="evenodd" d="M10 5c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v.3c-.02.52-.23.98-.63 1.38-.4.4-.86.61-1.38.63-.83.02-1.48.16-2 .45V4.72a1.993 1.993 0 0 0-1-3.72C.88 1 0 1.89 0 3a2 2 0 0 0 1 1.72v6.56c-.59.35-1 .99-1 1.72 0 1.11.89 2 2 2 1.11 0 2-.89 2-2 0-.53-.2-1-.53-1.36.09-.06.48-.41.59-.47.25-.11.56-.17.94-.17 1.05-.05 1.95-.45 2.75-1.25S8.95 7.77 9 6.73h-.02C9.59 6.37 10 5.73 10 5zM2 1.8c.66 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2C1.35 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2zm0 12.41c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm6-8c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"></path></svg>68</span>
                                    <span class="collection-stat text-right tooltipped tooltipped-n" aria-label="2,915 stars this week"><svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"></path></svg>2,915</span>
                                </div>
                                <span id="target1"></span>
                               <a id="target_link1" target="_top"> <p style="color: #bbbbbb" id="target_desc1"></p></a>
                            </li>
                            <li class="collection-item">
                                <a id="user_link22" target="_top"><img alt="@tonybeltramelli" class="author-gravatar" height="40" id="p2" width="40"></a>
                                <a id="user_link2" target="_top" class="repo-name css-truncate css-truncate-target"><span id="user2"></span></a>
                                <div class="col-2 text-right pt-1 pr-3 pt-2">
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="123 forks this week"><svg aria-hidden="true" class="octicon octicon-git-branch" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path fill-rule="evenodd" d="M10 5c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v.3c-.02.52-.23.98-.63 1.38-.4.4-.86.61-1.38.63-.83.02-1.48.16-2 .45V4.72a1.993 1.993 0 0 0-1-3.72C.88 1 0 1.89 0 3a2 2 0 0 0 1 1.72v6.56c-.59.35-1 .99-1 1.72 0 1.11.89 2 2 2 1.11 0 2-.89 2-2 0-.53-.2-1-.53-1.36.09-.06.48-.41.59-.47.25-.11.56-.17.94-.17 1.05-.05 1.95-.45 2.75-1.25S8.95 7.77 9 6.73h-.02C9.59 6.37 10 5.73 10 5zM2 1.8c.66 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2C1.35 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2zm0 12.41c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm6-8c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"></path></svg>123</span>
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="2,829 stars this week"><svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"></path></svg>2,829</span>
                                </div>
                                <span id="target2"></span>
                                <a id="target_link2" target="_top"><p style="color: #bbbbbb" id="target_desc2"></p>
                            </li>
                            <li class="collection-item">
                                <a id="user_link32" target="_top"><img alt="@chaosbot" class="author-gravatar" height="40" id="p3" width="40"></a>
                                <a id="user_link3" target="_top" class="repo-name css-truncate css-truncate-target" ><span id="user3" ></span></a>
                                <div class="col-2 text-right pt-1 pr-3 pt-2">
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="242 forks this week"><svg aria-hidden="true" class="octicon octicon-git-branch" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path fill-rule="evenodd" d="M10 5c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v.3c-.02.52-.23.98-.63 1.38-.4.4-.86.61-1.38.63-.83.02-1.48.16-2 .45V4.72a1.993 1.993 0 0 0-1-3.72C.88 1 0 1.89 0 3a2 2 0 0 0 1 1.72v6.56c-.59.35-1 .99-1 1.72 0 1.11.89 2 2 2 1.11 0 2-.89 2-2 0-.53-.2-1-.53-1.36.09-.06.48-.41.59-.47.25-.11.56-.17.94-.17 1.05-.05 1.95-.45 2.75-1.25S8.95 7.77 9 6.73h-.02C9.59 6.37 10 5.73 10 5zM2 1.8c.66 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2C1.35 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2zm0 12.41c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm6-8c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"></path></svg>242</span>
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="2,114 stars this week"><svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"></path></svg>2,114</span>
                                </div>
                                <span id="target3"></span>
                                <a id="target_link3" target="_top"><p style="color: #bbbbbb" id="target_desc3"></p></a>
                            </li>
                            <li class="collection-item">
                                <a id="user_link42" target="_top"><img alt="@JetBrains" class="author-gravatar" height="40" id="p4" width="40"></a>
                                <a id="user_link4" target="_top" class="repo-name css-truncate css-truncate-target"><span id="user4"></span></a>
                                <div class="col-2 text-right pt-1 pr-3 pt-2">
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="152 forks this week"><svg aria-hidden="true" class="octicon octicon-git-branch" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path fill-rule="evenodd" d="M10 5c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v.3c-.02.52-.23.98-.63 1.38-.4.4-.86.61-1.38.63-.83.02-1.48.16-2 .45V4.72a1.993 1.993 0 0 0-1-3.72C.88 1 0 1.89 0 3a2 2 0 0 0 1 1.72v6.56c-.59.35-1 .99-1 1.72 0 1.11.89 2 2 2 1.11 0 2-.89 2-2 0-.53-.2-1-.53-1.36.09-.06.48-.41.59-.47.25-.11.56-.17.94-.17 1.05-.05 1.95-.45 2.75-1.25S8.95 7.77 9 6.73h-.02C9.59 6.37 10 5.73 10 5zM2 1.8c.66 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2C1.35 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2zm0 12.41c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm6-8c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"></path></svg>152</span>
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="2,124 stars this week"><svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"></path></svg>2,124</span>
                                </div>
                                <span id="target4"></span>
                              <a id="target_link4" target="_top">  <p style="color: #bbbbbb" id="target_desc4"></p></a>
                            </li>
                            <li class="collection-item">
                                <a id="user_link52" target="_top"><img alt="@taviso" class="author-gravatar" height="40" id="p5" width="40"></a>
                                <a id="user_link5" target="_top"class="repo-name css-truncate css-truncate-target"><span id="user5"></span></a>
                                <div class="col-2 text-right pt-1 pr-3 pt-2">
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="97 forks this week"><svg aria-hidden="true" class="octicon octicon-git-branch" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path fill-rule="evenodd" d="M10 5c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v.3c-.02.52-.23.98-.63 1.38-.4.4-.86.61-1.38.63-.83.02-1.48.16-2 .45V4.72a1.993 1.993 0 0 0-1-3.72C.88 1 0 1.89 0 3a2 2 0 0 0 1 1.72v6.56c-.59.35-1 .99-1 1.72 0 1.11.89 2 2 2 1.11 0 2-.89 2-2 0-.53-.2-1-.53-1.36.09-.06.48-.41.59-.47.25-.11.56-.17.94-.17 1.05-.05 1.95-.45 2.75-1.25S8.95 7.77 9 6.73h-.02C9.59 6.37 10 5.73 10 5zM2 1.8c.66 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2C1.35 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2zm0 12.41c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm6-8c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"></path></svg>97</span>
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="1,759 stars this week"><svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"></path></svg>1,759</span>
                                </div>
                                <span id="target5"></span>
                                <a id="target_link5" target="_top"><p style="color: #bbbbbb" id="target_desc5"></p></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
<div class="row">
    <div class="col-lg-12">
		  
		    <div class="panel panel-default"> </div>
			<!--/.col-->			

    </div><!--/.col-->
        </div>

        <div class="row">
	    <div class="col-xs-12 col-md-12 col-lg-12 col-lg-offset-0"> 
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
       
		 setTimeout(function (){
     window.onresize = function () {
  
	   myChart3.resize();
	 

		   
    }
},400)
    </script>
						</div>
					</div>
				</div>
			</div>
			
			
        </div>
        </div>


	</div>	<!--/.main-->




	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
	<script src="static/js/chart.min.js"></script>
	<script src="static/js/chart-data.js"></script>
	<script src="static/js/easypiechart.js"></script>
	<script src="static/js/easypiechart-data.js"></script>
	<script src="static/js/bootstrap-datepicker.js"></script>
	<script>
		$('#calendar').datepicker({
		});

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