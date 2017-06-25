﻿<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Github可视化分析系统</title>

    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/datepicker3.css" rel="stylesheet">
    <link href="static/css/bootstrap-table.css" rel="stylesheet">
    <link href="static/css/styles.css" rel="stylesheet">

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
							<li><a href="#"><span class="glyphicon glyphicon-user"></span> 简介</a></li>
							<li><a href="#"><span class="glyphicon glyphicon-cog"></span> 设置</a></li>
							<li><a href="#"><span class="glyphicon glyphicon-log-out"></span> 注销</a></li>
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
		</ul></div><!--/.sidebar-->

<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">
   
 <div class="row">
 
       <ol class="breadcrumb">
     
       <li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
  
          <li class="active">技术分类</li>
        </ol>
    </div><!--/.row-->

    <div class="row">
   
     <div class="col-lg-12">
            <h1 class="page-header">移动技术</h1>

 
       </div>
    </div><!--/.row-->

		  <div class="col-xs-6 col-md-5 col-lg-12 col-lg-offset-0">
			
				<div class="panel panel-default">
					<div class="panel-heading">用户排行</div>
					<div class="panel-body">
						<div class="canvas-wrapper">

                
		<table  class="table table-striped"  >
 
  <tr>
     <th >排名</th>
    <th >用户名</th>
    <th >仓库数量</th>
    <th >commits次数</th>
    <th >被收藏量</th>
    <th >follwers数量</th>
    <th >following</th>
    <th >天数</th>

  </tr>
  <tr>
    <td>1</td>
    <td >Mike</td>
    <td >100</td>
    <td >200</td>
    <td >12</td>
    <td >45</td>
    <td >67</td>
    <td>62</td>
  </tr>
  <tr>
    <td>1</td>
    <td >Mike</td>
    <td >100</td>
    <td >200</td>
    <td >12</td>
    <td >45</td>
    <td >67</td>
    <td>62</td>
  </tr>
  <tr>
    <td>1</td>
    <td >Mike</td>
    <td >100</td>
    <td >200</td>
    <td >12</td>
    <td >45</td>
    <td >67</td>
    <td>62</td>
  </tr>
  <tr>
    <td>1</td>
    <td >Mike</td>
    <td >100</td>
    <td >200</td>
    <td >12</td>
    <td >45</td>
    <td >67</td>
    <td>62</td>
  </tr>
  <tr>
    <td>1</td>
    <td >Mike</td>
    <td >100</td>
    <td >200</td>
    <td >12</td>
    <td >45</td>
    <td >67</td>
    <td>62</td>
  </tr>
  <tr>
    <td>1</td>
    <td >Mike</td>
    <td >100</td>
    <td >200</td>
    <td >12</td>
    <td >45</td>
    <td >67</td>
    <td>62</td>
  </tr>
    <tr>
    <td>1</td>
    <td >Mike</td>
    <td >100</td>
    <td >200</td>
    <td >12</td>
    <td >45</td>
    <td >67</td>
    <td>62</td>
  </tr>
<tr>
    <td>1</td>
    <td >Mike</td>
    <td >100</td>
    <td >200</td>
    <td >12</td>
    <td >45</td>
    <td >67</td>
    <td>62</td>
  </tr>
<tr>
    <td>1</td>
    <td >Mike</td>
    <td >100</td>
    <td >200</td>
    <td >12</td>
    <td >45</td>
    <td >67</td>
    <td>62</td>
  </tr>
</table>
</div>
</div>
</div>
</div>



		  <div class="col-xs-6 col-md-5 col-lg-12 col-lg-offset-0">
			
				<div class="panel panel-default">
					<div class="panel-heading">仓库排行</div>
					<div class="panel-body">
						<div class="canvas-wrapper">

                
		<table  class="table table-striped"  >
 
  <tr>
     <th >排名</th>
    <th >用户名</th>
    <th>位置</th>
    <th >仓库数量</th>
    <th >commits次数</th>
    <th >被收藏量</th>
    <th >follwers数量</th>
    <th >following</th>
    <th >天数</th>

  </tr>
  <tr>
    <td>1</td>
    <td >Mike</td>
    <td>USA</td>
    <td >100</td>
    <td >200</td>
    <td >12</td>
    <td >45</td>
    <td >67</td>
    <td>62</td>
  </tr>
  <tr>
    <td>1</td>
    <td >Mike</td>
    <td>USA</td>
    <td >100</td>
    <td >200</td>
    <td >12</td>
    <td >45</td>
    <td >67</td>
    <td>62</td>
  </tr>
  <tr>
    <td>1</td>
    <td >Mike</td>
    <td>USA</td>
    <td >100</td>
    <td >200</td>
    <td >12</td>
    <td >45</td>
    <td >67</td>
    <td>62</td>
  </tr>
  <tr>
    <td>1</td>
    <td >Mike</td>
    <td>USA</td>
    <td >100</td>
    <td >200</td>
    <td >12</td>
    <td >45</td>
    <td >67</td>
    <td>62</td>
  </tr>
  <tr>
    <td>1</td>
    <td >Mike</td>
    <td>USA</td>
    <td >100</td>
    <td >200</td>
    <td >12</td>
    <td >45</td>
    <td >67</td>
    <td>62</td>
  </tr>
  <tr>
    <td>1</td>
    <td >Mike</td>
    <td>USA</td>
    <td >100</td>
    <td >200</td>
    <td >12</td>
    <td >45</td>
    <td >67</td>
    <td>62</td>
  </tr>
    <tr>
    <td>1</td>
    <td >Mike</td>
    <td>USA</td>
    <td >100</td>
    <td >200</td>
    <td >12</td>
    <td >45</td>
    <td >67</td>
    <td>62</td>
  </tr>
<tr>
    <td>1</td>
    <td >Mike</td>
    <td>USA</td>
    <td >100</td>
    <td >200</td>
    <td >12</td>
    <td >45</td>
    <td >67</td>
    <td>62</td>
  </tr>
<tr>
    <td>1</td>
    <td >Mike</td>
    <td>USA</td>
    <td >100</td>
    <td >200</td>
    <td >12</td>
    <td >45</td>
    <td >67</td>
    <td>62</td>
  </tr>
</table>
</div>
</div>
</div>
</div>
		
		

				


		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">用户排行</div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							
							 <div id="main" style="width: 100%;height:600px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var option = {
    title: {
        text: '用户排名'
    },
    tooltip: {
        trigger: 'axis',
        axisPointer: { // 坐标轴指示器，坐标轴触发有效
            type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
        }

    },
    legend: {
        data: ['仓库数量', 'commits次数', '被收藏量', 'follwers数量','following'],
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
        data: ['Mike', 'Nikke', 'Jane', 'Lily', 'Donne']
    }],
    yAxis: [{
        type: 'value',
       
        axisLabel: {
            formatter: '{value}'
        }
    }],
    series: [{
        name: '仓库数量',
        type: 'bar',
        data: [2000, 1800, 1500, 1400, 1300]
    }, {
        name: 'commits次数',
        type: 'bar',
        data: [3000, 3800, 3500, 3900, 3030]
    }, {
        name: '被收藏量',
        type: 'bar',
        data: [3100, 3310, 2230, 4300, 4100]
    }, {
        name: 'follwers数量',
        type: 'bar',
        data: [3100, 3200, 3300, 3100, 3500]
    }
    , {
        name: 'following',
        type: 'bar',
        data: [100, 200, 300, 100, 500]
    }]
};
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
					<div class="panel-heading">仓库排行</div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							 <div id="main2" style="width: 100%;height:600px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart2 = echarts.init(document.getElementById('main2'));

        // 指定图表的配置项和数据
        var option2 = {
    title: {
        text: '仓库排名'
    },
    tooltip: {
        trigger: 'axis',
        axisPointer: { // 坐标轴指示器，坐标轴触发有效
            type: 'shadow' // 默认为直线，可选为：'line' | 'shadow'
        }

    },
    legend: {
        data: ['仓库数量', 'commits次数', '被收藏量', 'follwers数量','following'],
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
        data: ['Donne', 'John', 'Edward', 'Sarah', 'Wu Yifan']
    }],
    yAxis: [{
        type: 'value',
       
        axisLabel: {
            formatter: '{value}'
        }
    }],
    series: [{
        name: '仓库数量',
        type: 'bar',
        data: [2000, 1800, 1500, 1400, 1300]
    }, {
        name: 'commits次数',
        type: 'bar',
        data: [3000, 3800, 3500, 3900, 3030]
    }, {
        name: '被收藏量',
        type: 'bar',
        data: [3100, 3310, 2230, 4300, 4100]
    }, {
        name: 'follwers数量',
        type: 'bar',
        data: [3100, 3200, 3300, 3100, 3500]
    }
    , {
        name: 'following',
        type: 'bar',
        data: [100, 200, 300, 100, 500]
    }]
};
        // 使用刚指定的配置项和数据显示图表。
        myChart2.setOption(option2);
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
<script src="static/js/chart-data.js"></script>
<script src="static/js/easypiechart.js"></script>
<script src="static/js/easypiechart-data.js"></script>
<script src="static/js/bootstrap-datepicker.js"></script>
<script src="static/js/bootstrap-table.js"></script>
<script src="static/js/echart-3.0.js"></script>
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
</body>

</html>
