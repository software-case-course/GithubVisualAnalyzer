﻿<!DOCTYPE html>
<html>
 <meta charset="utf-8">
    <title>Github可视化系统</title>
    <!-- 引入 echarts.js -->
    <script src="static/js/echarts.min.js"></script>
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
			<li ><a href="user"><span class="glyphicon glyphicon-stats"></span> 用户</a></li>
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
			<li ><a href="mine"><span class="glyphicon glyphicon-user"></span> 我的</a></li>
                        <li class="active"><a href="search"><span class="glyphicon glyphicon-info-sign"></span> 搜索</a></li>
		</ul>
	</div><!--/.sidebar-->
		

	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">搜索</li>
			</ol>
		</div><!--/.row-->

		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">搜索</h1>
			</div>
                      <div class="form-group">
 
           <input type="text" class="form-control" placeholder="请输入你想要查找的内容">

        </div>

		</div><!--/.row-->




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

        // 指定图表的配置项和数据
        var option = {
    title: {
        text: '用户X的贡献'
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



		  <div class="col-xs-6 col-md-5 col-lg-12 col-lg-offset-0">
			
				<div class="panel panel-default">
					<div class="panel-heading">用户X仓库排行</div>
					<div class="panel-body">
						<div class="canvas-wrapper">

                
		<table  class="table table-striped"  >
 
  <tr>
     <th >排名</th>
    <th >仓库名</th>
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
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">用户X的贡献图</div>
					<div class="panel-body">
						<div class="canvas-wrapper">
							 <div id="main4" style="width: 100%;height:600px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart4 = echarts.init(document.getElementById('main4'));

var hours = ['Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sept',
        'Oct', 'Nov', 'Dec','Jun','Feb',
        'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug',
        'Sept', 'Oct', 'Nov', 'Dec', 'Jan', 'Feb'];
var days = ['Saturday', 'Friday', 'Thursday',
        'Wednesday', 'Tuesday', 'Monday', 'Sunday'];

var data = [[0,0,5],[0,1,1],[0,2,0],[0,3,0],[0,4,0],[0,5,0],[0,6,0],[0,7,0],[0,8,0],[0,9,0],[0,10,0],[0,11,2],[0,12,4],[0,13,1],[0,14,1],[0,15,3],[0,16,4],[0,17,6],[0,18,4],[0,19,4],[0,20,3],[0,21,3],[0,22,2],[0,23,5],[1,0,7],[1,1,0],[1,2,0],[1,3,0],[1,4,0],[1,5,0],[1,6,0],[1,7,0],[1,8,0],[1,9,0],[1,10,5],[1,11,2],[1,12,2],[1,13,6],[1,14,9],[1,15,11],[1,16,6],[1,17,7],[1,18,8],[1,19,12],[1,20,5],[1,21,5],[1,22,7],[1,23,2],[2,0,1],[2,1,1],[2,2,0],[2,3,0],[2,4,0],[2,5,0],[2,6,0],[2,7,0],[2,8,0],[2,9,0],[2,10,3],[2,11,2],[2,12,1],[2,13,9],[2,14,8],[2,15,10],[2,16,6],[2,17,5],[2,18,5],[2,19,5],[2,20,7],[2,21,4],[2,22,2],[2,23,4],[3,0,7],[3,1,3],[3,2,0],[3,3,0],[3,4,0],[3,5,0],[3,6,0],[3,7,0],[3,8,1],[3,9,0],[3,10,5],[3,11,4],[3,12,7],[3,13,14],[3,14,13],[3,15,12],[3,16,9],[3,17,5],[3,18,5],[3,19,10],[3,20,6],[3,21,4],[3,22,4],[3,23,1],[4,0,1],[4,1,3],[4,2,0],[4,3,0],[4,4,0],[4,5,1],[4,6,0],[4,7,0],[4,8,0],[4,9,2],[4,10,4],[4,11,4],[4,12,2],[4,13,4],[4,14,4],[4,15,14],[4,16,12],[4,17,1],[4,18,8],[4,19,5],[4,20,3],[4,21,7],[4,22,3],[4,23,0],[5,0,2],[5,1,1],[5,2,0],[5,3,3],[5,4,0],[5,5,0],[5,6,0],[5,7,0],[5,8,2],[5,9,0],[5,10,4],[5,11,1],[5,12,5],[5,13,10],[5,14,5],[5,15,7],[5,16,11],[5,17,6],[5,18,0],[5,19,5],[5,20,3],[5,21,4],[5,22,2],[5,23,0],[6,0,1],[6,1,0],[6,2,0],[6,3,0],[6,4,0],[6,5,0],[6,6,0],[6,7,0],[6,8,0],[6,9,0],[6,10,1],[6,11,0],[6,12,2],[6,13,1],[6,14,3],[6,15,4],[6,16,0],[6,17,0],[6,18,0],[6,19,0],[6,20,1],[6,21,2],[6,22,2],[6,23,6]];

data = data.map(function (item) {
    return [item[1], item[0], item[2] || '-'];
});

option4 = {
    tooltip: {
        position: 'top'
    },
    animation: false,
    grid: {
        height: '50%',
        y: '10%'
    },
    xAxis: {
        type: 'category',
        data: hours,
        splitArea: {
            show: true
        }
    },
    yAxis: {
        type: 'category',
        data: days,
        splitArea: {
            show: true
        }
    },
    visualMap: {
        min: 0,
        max: 10,
        calculable: true,
        orient: 'horizontal',
        left: 'right',
        bottom: '20%'
    },
    series: [{
        name: 'Contribution:',
        type: 'heatmap',
        data: data,
        label: {
            normal: {
                show: true
            }
        },
        itemStyle: {
            emphasis: {
                shadowBlur: 10,
                shadowColor: 'rgba(0, 0, 0, 0.5)'
            }
        }
    }]
};




        // 使用刚指定的配置项和数据显示图表。
        myChart4.setOption(option4);
		setTimeout(function (){
    window.onresize = function () {
       myChart.resize();
       myChart2.resize();
	   myChart3.resize();
	   myChaer4.resize();
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
	<script src="static/js/chart-data.js"></script>
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