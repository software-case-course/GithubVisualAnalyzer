<!DOCTYPE html>
<html>
    <meta charset="utf-8">
    <title>Github可视化系统</title>
    <!-- 引入 echarts.js -->
    <script src="static/js/echarts.min.js"></script>
<head>


<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Lumino - Dashboard</title>

<link href="static/css/bootstrap.css" rel="stylesheet">
<link href="static/css/datepicker3.css" rel="stylesheet">
<link href="static/css/styles.css" rel="stylesheet">

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

                                <a href="/Jonovono/c" class="v-align-middle">Jonovono/<em>c</em></a>

                                <div class="col-2 text-right pt-1 pr-3 pt-2">
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="123 forks this week">Shell</span>
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="2,829 stars this week"><svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"></path></svg>2,829</span>
                                </div>
                                <p class="col-6 d-inline-block mb-2 pr-4" style="color: #bbbbbb">
                                    Give folders or directories comments and view them easy.
                                </p>
                                <p class="f6 mb-0 mt-2" style="color: #bbbbbb">
                                    Updated <relative-time datetime="2017-03-16T23:31:03Z" title="2017 M03 17 07:31 GMT+8">on Mar 17</relative-time>
                                </p>
                            </li>

                            <li class="collection-item">

                                <a href="/NetEase/c" class="v-align-middle">NetEase/<em>c</em></a>

                                <div class="col-2 text-right pt-1 pr-3 pt-2">
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="123 forks this week"> Python</span>
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="2,829 stars this week"><svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"></path></svg>9</span>
                                </div>

                                <p class="f6 mb-0 mt-2" style="color: #bbbbbb">
                                    Updated <relative-time datetime="2017-03-16T23:31:03Z" title="2017 M03 17 07:31 GMT+8">on Mar 25, 2017</relative-time>
                                </p>
                            </li>

                            <li class="collection-item">

                                <a href="/seiyria/c" class="v-align-middle">seiyria/<em>c</em></a>

                                <div class="col-2 text-right pt-1 pr-3 pt-2">
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="123 forks this week">Shell</span>
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="2,829 stars this week"><svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"></path></svg>2,829</span>
                                </div>
                                <p class="col-6 d-inline-block mb-2 pr-4" style="color: #bbbbbb">
                                    Give folders or directories comments and view them easy.
                                </p>
                                <p class="f6 mb-0 mt-2" style="color: #bbbbbb">
                                    Updated <relative-time datetime="2017-03-16T23:31:03Z" title="2017 M03 17 07:31 GMT+8">on Mar 17</relative-time>
                                </p>
                            </li>

                            <li class="collection-item">

                                <a href="/airspy/airspyone_firmware" class="v-align-middle">airspy/airspyone_firmware</a>

                                <div class="col-2 text-right pt-1 pr-3 pt-2">
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="123 forks this week">Shell</span>
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="2,829 stars this week"><svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"></path></svg>2,829</span>
                                </div>
                                <p class="col-6 d-inline-block mb-2 pr-4" style="color: #bbbbbb">
                                    Give folders or directories comments and view them easy.
                                </p>
                                <p class="f6 mb-0 mt-2" style="color: #bbbbbb">
                                    Updated <relative-time datetime="2017-03-16T23:31:03Z" title="2017 M03 17 07:31 GMT+8">on Mar 17</relative-time>
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
                                    <a href="/ory"><img alt="@ory" class="author-gravatar" height="40" src="https://avatars2.githubusercontent.com/u/25334553?v=3&amp;s=80" width="40"></a>
                                    <a href="/ory/editor" class="repo-name css-truncate css-truncate-target">ory/editor</a>
                                </div>
                                <div class=" text-right pt-1 pr-3 pt-2">
                                    <span class="collection-stat text-right tooltipped tooltipped-n" aria-label="68 forks this week"><svg aria-hidden="true" class="octicon octicon-git-branch" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path fill-rule="evenodd" d="M10 5c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v.3c-.02.52-.23.98-.63 1.38-.4.4-.86.61-1.38.63-.83.02-1.48.16-2 .45V4.72a1.993 1.993 0 0 0-1-3.72C.88 1 0 1.89 0 3a2 2 0 0 0 1 1.72v6.56c-.59.35-1 .99-1 1.72 0 1.11.89 2 2 2 1.11 0 2-.89 2-2 0-.53-.2-1-.53-1.36.09-.06.48-.41.59-.47.25-.11.56-.17.94-.17 1.05-.05 1.95-.45 2.75-1.25S8.95 7.77 9 6.73h-.02C9.59 6.37 10 5.73 10 5zM2 1.8c.66 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2C1.35 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2zm0 12.41c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm6-8c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"></path></svg>68</span>
                                    <span class="collection-stat text-right tooltipped tooltipped-n" aria-label="2,915 stars this week"><svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"></path></svg>2,915</span>
                                </div>
                                <p style="color: #bbbbbb">Next-gen, highly customizable content editor for the browser - based on React and Redux. WYSIWYG on steroids.</p>
                            </li>
                            <li class="collection-item">
                                <a href="/tonybeltramelli"><img alt="@tonybeltramelli" class="author-gravatar" height="40" src="https://avatars3.githubusercontent.com/u/1783594?v=3&amp;s=80" width="40"></a>
                                <a href="/tonybeltramelli/pix2code" class="repo-name css-truncate css-truncate-target">tonybeltramelli/pix2code</a>
                                <div class="col-2 text-right pt-1 pr-3 pt-2">
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="123 forks this week"><svg aria-hidden="true" class="octicon octicon-git-branch" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path fill-rule="evenodd" d="M10 5c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v.3c-.02.52-.23.98-.63 1.38-.4.4-.86.61-1.38.63-.83.02-1.48.16-2 .45V4.72a1.993 1.993 0 0 0-1-3.72C.88 1 0 1.89 0 3a2 2 0 0 0 1 1.72v6.56c-.59.35-1 .99-1 1.72 0 1.11.89 2 2 2 1.11 0 2-.89 2-2 0-.53-.2-1-.53-1.36.09-.06.48-.41.59-.47.25-.11.56-.17.94-.17 1.05-.05 1.95-.45 2.75-1.25S8.95 7.77 9 6.73h-.02C9.59 6.37 10 5.73 10 5zM2 1.8c.66 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2C1.35 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2zm0 12.41c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm6-8c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"></path></svg>123</span>
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="2,829 stars this week"><svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"></path></svg>2,829</span>
                                </div>
                                <p style="color: #bbbbbb">pix2code: Generating Code from a Graphical User Interface Screenshot</p>
                            </li>
                            <li class="collection-item">
                                <a href="/chaosbot"><img alt="@chaosbot" class="author-gravatar" height="40" src="https://avatars2.githubusercontent.com/u/28798182?v=3&amp;s=80" width="40"></a>
                                <a href="/chaosbot/Chaos" class="repo-name css-truncate css-truncate-target">chaosbot/Chaos</a>
                                <div class="col-2 text-right pt-1 pr-3 pt-2">
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="242 forks this week"><svg aria-hidden="true" class="octicon octicon-git-branch" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path fill-rule="evenodd" d="M10 5c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v.3c-.02.52-.23.98-.63 1.38-.4.4-.86.61-1.38.63-.83.02-1.48.16-2 .45V4.72a1.993 1.993 0 0 0-1-3.72C.88 1 0 1.89 0 3a2 2 0 0 0 1 1.72v6.56c-.59.35-1 .99-1 1.72 0 1.11.89 2 2 2 1.11 0 2-.89 2-2 0-.53-.2-1-.53-1.36.09-.06.48-.41.59-.47.25-.11.56-.17.94-.17 1.05-.05 1.95-.45 2.75-1.25S8.95 7.77 9 6.73h-.02C9.59 6.37 10 5.73 10 5zM2 1.8c.66 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2C1.35 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2zm0 12.41c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm6-8c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"></path></svg>242</span>
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="2,114 stars this week"><svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"></path></svg>2,114</span>
                                </div>
                                <p style="color: #bbbbbb">A social coding experiment that updates its own code democratically.</p>
                            </li>
                            <li class="collection-item">
                                <a href="/JetBrains"><img alt="@JetBrains" class="author-gravatar" height="40" src="https://avatars1.githubusercontent.com/u/878437?v=3&amp;s=80" width="40"></a>
                                <a href="/JetBrains/kotlin" class="repo-name css-truncate css-truncate-target">JetBrains/kotlin</a>
                                <div class="col-2 text-right pt-1 pr-3 pt-2">
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="152 forks this week"><svg aria-hidden="true" class="octicon octicon-git-branch" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path fill-rule="evenodd" d="M10 5c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v.3c-.02.52-.23.98-.63 1.38-.4.4-.86.61-1.38.63-.83.02-1.48.16-2 .45V4.72a1.993 1.993 0 0 0-1-3.72C.88 1 0 1.89 0 3a2 2 0 0 0 1 1.72v6.56c-.59.35-1 .99-1 1.72 0 1.11.89 2 2 2 1.11 0 2-.89 2-2 0-.53-.2-1-.53-1.36.09-.06.48-.41.59-.47.25-.11.56-.17.94-.17 1.05-.05 1.95-.45 2.75-1.25S8.95 7.77 9 6.73h-.02C9.59 6.37 10 5.73 10 5zM2 1.8c.66 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2C1.35 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2zm0 12.41c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm6-8c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"></path></svg>152</span>
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="2,124 stars this week"><svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"></path></svg>2,124</span>
                                </div>
                                <p style="color: #bbbbbb">The Kotlin Programming Language</p>
                            </li>
                            <li class="collection-item">
                                <a href="/taviso"><img alt="@taviso" class="author-gravatar" height="40" src="https://avatars3.githubusercontent.com/u/123814?v=3&amp;s=80" width="40"></a>
                                <a href="/taviso/loadlibrary" class="repo-name css-truncate css-truncate-target">taviso/loadlibrary</a>
                                <div class="col-2 text-right pt-1 pr-3 pt-2">
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="97 forks this week"><svg aria-hidden="true" class="octicon octicon-git-branch" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path fill-rule="evenodd" d="M10 5c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v.3c-.02.52-.23.98-.63 1.38-.4.4-.86.61-1.38.63-.83.02-1.48.16-2 .45V4.72a1.993 1.993 0 0 0-1-3.72C.88 1 0 1.89 0 3a2 2 0 0 0 1 1.72v6.56c-.59.35-1 .99-1 1.72 0 1.11.89 2 2 2 1.11 0 2-.89 2-2 0-.53-.2-1-.53-1.36.09-.06.48-.41.59-.47.25-.11.56-.17.94-.17 1.05-.05 1.95-.45 2.75-1.25S8.95 7.77 9 6.73h-.02C9.59 6.37 10 5.73 10 5zM2 1.8c.66 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2C1.35 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2zm0 12.41c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm6-8c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"></path></svg>97</span>
                                    <span class="collection-stat tooltipped tooltipped-n" aria-label="1,759 stars this week"><svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"></path></svg>1,759</span>
                                </div>
                                <p style="color: #bbbbbb">Porting Windows Dynamic Link Libraries to Linux</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>




                    <div class="row">
                   <div class="col-lg-12">
                     <div class="panel-body">
    <a class="btn btn-primary" href="index" role="button">
      今日
    </a>
    <a class="btn btn-primary" href="weekly" role="button" >
      今周
    </a>
    <a class="btn btn-success " href="monthly" role="button">
      今月
    </a>
</div>
</div>
</div>



		<div class="row">
		  <div class="col-lg-12">
		  
		    <div class="panel panel-default">
					<div class="panel-heading"> 今月热门仓库排行</div>
					<div class="panel-body">
		               <div id="main" style="width:100%;height:600px;"></div>
                        <script type="text/javascript">
		
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var 
option = {
    title: {
                text: '今月热门仓库排行'
				
            },
    color: ['#3398DB'],
    tooltip : {
        trigger: 'axis',
        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
        }
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
            data : ['Abu', 'Blue', 'Cali', 'Dary', 'XX', 'Fly', 'XW','document','XXSS','WAY','Pass','007'],
            axisTick: {
                alignWithLabel: true
            }
        }
    ],
    yAxis : [
        {
            // type : 'category',
            // data : ['10','20','30','40'],
            axisTick: {
                alignWithLabel: true
            }
        }
    ],
    series : [
        {
            name:'今月收藏人数',
            type:'bar',
            barWidth: '40%',
            data:[197, 96, 55, 40, 30, 20, 19,18,17,10,9,2]
        },
        
    ],
    label: {
            normal: {
                show: true,
                position: 'top',
                formatter: '{c}'
            }
        },
    itemStyle: {
                normal: {
                 
                    color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: 'rgba(17, 168,171, 1)'
                    }, {
                        offset: 1,
                        color: 'rgba(17, 168,171, 0.1)'
                    }]),
                    shadowColor: 'rgba(0, 0, 0, 0.1)',
                    shadowBlur: 10
                }
            }
};

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
		
    </script>
				    </div>
            </div>
			<!--/.col-->			

		  </div><!--/.col-->
        </div>

        <div class="row">
		  <div class="col-xs-6 col-md-5 col-lg-12 col-lg-offset-0">
		  
		    <div class="panel panel-default">
                <div class="panel-heading"> 今月热门用户排行</div>
                <div class="panel-body">
		            <div id="main1" style="width:100%;height:600px;"></div>
    <script type="text/javascript">
		
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main1'));

        // 指定图表的配置项和数据
        var 
option = {
    title: {
                text: '今月用户仓库排行'
				
            },
    color: ['#3398DB'],
    tooltip : {
        trigger: 'axis',
        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
        }
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
            data : ['Abu', 'Blue', 'Cali', 'Dary', 'XX', 'Fly', 'XW','document','XXSS','WAY','Pass','007'],
            axisTick: {
                alignWithLabel: true
            }
        }
    ],
    yAxis : [
        {
            // type : 'category',
            // data : ['10','20','30','40'],
            axisTick: {
                alignWithLabel: true
            }
        }
    ],
    series : [
        {
            name:'今月收藏人数',
            type:'bar',
            barWidth: '40%',
            data:[197, 96, 55, 40, 30, 20, 19,18,17,10,9,2]
        },
        
    ],
    label: {
            normal: {
                show: true,
                position: 'top',
                formatter: '{c}'
            }
        },
    itemStyle: {
                normal: {
                 
                    color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                        offset: 0,
                        color: 'rgba(17, 168,171, 1)'
                    }, {
                        offset: 1,
                        color: 'rgba(17, 168,171, 0.1)'
                    }]),
                    shadowColor: 'rgba(0, 0, 0, 0.1)',
                    shadowBlur: 10
                }
            }
};

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
		
    </script>
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