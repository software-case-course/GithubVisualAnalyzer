﻿﻿<!DOCTYPE html>
<html>
    <meta charset="utf-8">
    <title>Github可视化系统</title>
    <!-- 引入 echarts.js -->
    <script src="../static/js/echarts.min.js"></script>
    <script src="../static/js/china.js"></script>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Lumino - Charts</title>

<link href="../static/css/bootstrap.css" rel="stylesheet">
<link href="../static/css/datepicker3.css" rel="stylesheet">
<link href="../static/css/styles.css" rel="stylesheet">

<!--[if lt IE 9]>
<script src="../static/js/html5shiv.js"></script>
<script src="../static/js/respond.min.js"></script>
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
			<li ><a href="../index"><span class="glyphicon glyphicon-dashboard"></span> 首页</a></li>
			<li class="parent ">
				<a href="#">
					<span class="glyphicon glyphicon-list"></span> 语言 <span data-toggle="collapse" href="#sub-item-1" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
				</a>
				<ul class="children collapse" id="sub-item-1">
					
							<li class="active"><a href="/china"><span class="glyphicon glyphicon-stats"></span> 中国</a></li>
				
							<li><a href="/world"><span class="glyphicon glyphicon-stats"></span> 全世界</a></li>
					
				</ul>
			</li>
			<li><a href="../user"><span class="glyphicon glyphicon-stats"></span> 用户</a></li>
			<li><a href="../repos"><span class="glyphicon glyphicon-list-alt"></span> 项目（仓库）</a></li>
			<li><a href="../area"><span class="glyphicon glyphicon-pencil"></span> 地域</a></li>
			
			<li class="parent ">
				<a href="#">
					<span class="glyphicon glyphicon-list"></span> 技术分类 <span data-toggle="collapse" href="#sub-item-2" class="icon pull-right"><em class="glyphicon glyphicon-s glyphicon-plus"></em></span> 
				</a>
				<ul class="children collapse" id="sub-item-2">
					
							<li><a href="../technology_1"><span class="glyphicon glyphicon-share-alt"></span> 移动技术</a></li>
					
							<li><a href="../technology_2"><span class="glyphicon glyphicon-share-alt"></span> 数据库</a></li>
						
							<li><a href="../technology_3"><span class="glyphicon glyphicon-share-alt"></span> 可视化工具</a></li>
						
							<li><a href="../technology_4"><span class="glyphicon glyphicon-share-alt"></span> 游戏引擎</a></li>
					
							<li><a href="../technology_5"><span class="glyphicon glyphicon-share-alt"></span> web应用</a></li>
					
				</ul>
			</li>
			<li role="presentation" class="divider"></li>
			<li><a href="../mine"><span class="glyphicon glyphicon-user"></span> 我的</a></li>
                        <li><a href="../search"><span class="glyphicon glyphicon-info-sign"></span> 搜索</a></li>
		</ul>
	</div><!--/.sidebar-->
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">语言</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">语言</h1>
			</div>
		</div><!--/.row-->
		
		<div class="row">

			<div class="col-lg-12">

				<h2>中国</h2>

			</div>

			
			<div class="col-lg-12">

				<div class="panel panel-default">
					<div class="panel-heading">热衷语言</div>
					<div class="panel-body">

                                              <div class="canvas-wrapper">
						<div id="main" style="width:100%;height:600px;"></div>
    <script type="text/javascript">
		
        // 基于准备好的dom，初始化echarts实例
          var myChart = echarts.init(document.getElementById('main'));
option = {
    title: {
        text: '热衷语言'
    },
    tooltip : {
        trigger: 'axis'
    },
    legend: {
        data:['Python','PHP','C','C++','Java']
    },
    toolbox: {
        feature: {
            saveAsImage: {}
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
            boundaryGap : false,
            data : ['周一','周二','周三','周四','周五','周六','周日']
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'Python',
            type:'line',
            stack: '总量',
            areaStyle: {normal: {}},
            data:[120, 132, 101, 134, 90, 230, 210]
        },
        {
            name:'PHP',
            type:'line',
            stack: '总量',
            areaStyle: {normal: {}},
            data:[220, 182, 191, 234, 290, 330, 310]
        },
        {
            name:'C',
            type:'line',
            stack: '总量',
            areaStyle: {normal: {}},
            data:[150, 232, 201, 154, 190, 330, 410]
        },
        {
            name:'C++',
            type:'line',
            stack: '总量',
            areaStyle: {normal: {}},
            data:[320, 332, 301, 334, 390, 330, 320]
        },
        {
            name:'Java',
            type:'line',
            stack: '总量',
            label: {
                normal: {
                    show: true,
                    position: 'top'
                }
            },
            areaStyle: {normal: {}},
            data:[820, 932, 901, 934, 1290, 1330, 1320]
        }
    ]
};

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
</div>
</div>

				</div>

			</div><!--/.col-->

			
			<div class="col-lg-12">

				<div class="panel panel-default">
					<div class="panel-heading">关注语言</div>
					<div class="panel-body">                                          <div id="main1" style="width:100%;height:600px;"></div>
    <script type="text/javascript">
		
        // 基于准备好的dom，初始化echarts实例
          var myChart = echarts.init(document.getElementById('main1'));
option = {
    title: {
        text: '关注语言'
    },
    tooltip : {
        trigger: 'axis'
    },
    legend: {
        data:['Python','PHP','C','C++','Java']
    },
    toolbox: {
        feature: {
            saveAsImage: {}
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
            boundaryGap : false,
            data : ['周一','周二','周三','周四','周五','周六','周日']
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'Python',
            type:'line',
            stack: '总量',
            areaStyle: {normal: {}},
            data:[120, 132, 101, 134, 90, 230, 210]
        },
        {
            name:'PHP',
            type:'line',
            stack: '总量',
            areaStyle: {normal: {}},
            data:[220, 182, 191, 234, 290, 330, 310]
        },
        {
            name:'C',
            type:'line',
            stack: '总量',
            areaStyle: {normal: {}},
            data:[150, 232, 201, 154, 190, 330, 410]
        },
        {
            name:'C++',
            type:'line',
            stack: '总量',
            areaStyle: {normal: {}},
            data:[320, 332, 301, 334, 390, 330, 320]
        },
        {
            name:'Java',
            type:'line',
            stack: '总量',
            label: {
                normal: {
                    show: true,
                    position: 'top'
                }
            },
            areaStyle: {normal: {}},
            data:[820, 932, 901, 934, 1290, 1330, 1320]
        }
    ]
};

        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
						</div>

				</div>

			</div>
<!--/.col-->

			
			<div class="col-lg-12">

				<div class="panel panel-default">
					<div class="panel-heading">热衷语言</div>
					<div class="panel-body">                                          <div id="main2" style="width:100%;height:600px;"></div>
    <script type="text/javascript">
		
        // 基于准备好的dom，初始化echarts实例
          var myChart = echarts.init(document.getElementById('main2'));
option = {
    title : {
        text: '用户热衷语言',

        x:'center'
    },
    tooltip : {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },
    legend: {
        orient: 'vertical',
        left: 'left',
        data: ['C','C++','PHP','Pyhon','Java']
    },
    series : [
        {
            name: '访问来源',
            type: 'pie',
            radius : '55%',
            center: ['50%', '60%'],
            data:[
                {value:335, name:'C'},
                {value:310, name:'C++'},
                {value:234, name:'PHP'},
                {value:135, name:'Python'},
                {value:1548, name:'Java'}
            ],
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }
    ]
};
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
    </script>
						</div>

				</div>

			</div>
<div class="col-lg-12">

				<div class="panel panel-default">
					<div class="panel-heading">关注语言</div>
					<div class="panel-body">                                          <div id="main3" style="width:100%;height:600px;"></div>
    <script type="text/javascript">
		
        // 基于准备好的dom，初始化echarts实例
          var myChart = echarts.init(document.getElementById('main3'));
option = {
    backgroundColor: '#2c343c',

    title: {
        text: '用户关注语言',
        left: 'center',
        top: 20,
        textStyle: {
            color: '#ccc'
        }
    },

    tooltip : {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },

    visualMap: {
        show: false,
        min: 80,
        max: 600,
        inRange: {
            colorLightness: [0, 1]
        }
    },
    series : [
        {
            name:'访问来源',
            type:'pie',
            radius : '55%',
            center: ['50%', '50%'],
            data:[
                {value:335, name:'C'},
                {value:310, name:'C++'},
                {value:274, name:'PHP'},
                {value:235, name:'Python'},
                {value:400, name:'Java'}
            ].sort(function (a, b) { return a.value - b.value}),
            roseType: 'angle',
            label: {
                normal: {
                    textStyle: {
                        color: 'rgba(255, 255, 255, 0.3)'
                    }
                }
            },
            labelLine: {
                normal: {
                    lineStyle: {
                        color: 'rgba(255, 255, 255, 0.3)'
                    },
                    smooth: 0.2,
                    length: 10,
                    length2: 20
                }
            },
            itemStyle: {
                normal: {
                    color: '#c23531',
                    shadowBlur: 200,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            },

            animationType: 'scale',
            animationEasing: 'elasticOut',
            animationDelay: function (idx) {
                return Math.random() * 200;
            }
        }
    ]
};
  myChart.setOption(option);
    </script>
						</div>

				</div>

			</div>
<div class="row">
			<div class="col-md-3">
				<div class="panel panel-orange">
					<div class="panel-heading">排行第一热衷语言Ruby</div>
					<div class="panel-body">
						<ul class="todo-list">
						<li class="todo-list-item">
								<div class="checkbox">
									<label for="checkbox">1.github/choosealicense.com</label>
								</div>
								
						  </li>
						  <li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">2.github/graphql-client</label>
								</div>
								
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">3.github/elastomer-client</label>
								</div>
							
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">4.github/pages-health-check</label>
								</div>
				
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">5.github/pages-health-check</label>
								</div>
				
							</li>
                                                        <li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">6.github/pages-health-check</label>
								</div>
				
							</li>
							
						</ul>
					</div>
				</div>
			</div>
                    <div class="col-md-3">
				<div class="panel panel-orange">
					<div class="panel-heading">排行第一关注语言Ruby</div>
					<div class="panel-body">
						<ul class="todo-list">
						<li class="todo-list-item">
								<div class="checkbox">
									<label for="checkbox">1.github/VisualStudio</label>
								</div>
								
						  </li>
						  <li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">2.github/objective-c-style-guide</label>
								</div>
								
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">3.github/ccql</label>
								</div>
							
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">4.github/government.github.com</label>
								</div>
				
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">5.github/pages-health-check</label>
								</div>
				
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">6.github/pages-health-check</label>
								</div>
				
							</li>
						</ul>
					</div>
				</div>
			</div>
                     <div class="col-md-3">
				<div class="panel panel-blue">
					<div class="panel-heading">排行第二热衷语言C++</div>
					<div class="panel-body">
						<ul class="todo-list">
						<li class="todo-list-item">
								<div class="checkbox">
									<label for="checkbox">1.opencv/opencv</label>
								</div>
								
						  </li>
						  <li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">2.Mooophy/Cpp-Primer</label>
								</div>
								
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">3.bitcoin/bitcoin</label>
								</div>
							
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">4.mapnik/mapnik</label>
								</div>
				
							</li>
							
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">5.nghttp2/nghttp2</label>
								</div>
							
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">6.llvm-mirror/clang</label>
								</div>
						
							</li>
						</ul>
					</div>
				</div>
			</div>
                     <div class="col-md-3">
				<div class="panel panel-blue">
					<div class="panel-heading">排行第二关注语言C++</div>
					<div class="panel-body">
						<ul class="todo-list">
						<li class="todo-list-item">
								<div class="checkbox">
									<label for="checkbox">1.flutter/engine</label>
								</div>
								
						  </li>
						  <li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">2.danmar/cppcheck</label>
								</div>
								
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">3.electron/electron</label>
								</div>
							
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">4.danmar/cppcheck</label>
								</div>
				
							</li>
							
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">5.electronicarts/EASTL</label>
								</div>
							
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">6.USCiLab/cereal</label>
								</div>
						
							</li>
						</ul>
					</div>
				</div>
			</div>
                     <div class="col-md-3">
				<div class="panel panel-red">
					<div class="panel-heading">排行第三热衷语言Java</div>
					<div class="panel-body">
						<ul class="todo-list">
						<li class="todo-list-item">
								<div class="checkbox">
									<label for="checkbox">1.google/j2objc</label>
								</div>
								
						  </li>
						  <li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">2.yusugomori/DeepLearning</label>
								</div>
								
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">3.bytedeco/javacpp</label>
								</div>
							
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">4.xamarin/XobotOS</label>
								</div>
				
							</li>
							
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">5.cgeo/cgeo</label>
								</div>
							
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">6.bytedeco/javacpp-presets</label>
								</div>
						
							</li>
						</ul>
					</div>
				</div>
			</div>
                     <div class="col-md-3">
				<div class="panel panel-red">
					<div class="panel-heading">排行第三关注语言Java</div>
					<div class="panel-body">
						<ul class="todo-list">
						<li class="todo-list-item">
								<div class="checkbox">
									<label for="checkbox">1.jbox2d/jbox2d</label>
								</div>
								
						  </li>
						  <li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">2.kwhat/jnativehook</label>
								</div>
								
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">3.octo-technology/sonar-objective-c</label>
								</div>
							
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">4.scottyab/AESCrypt-Android</label>
								</div>
				
							</li>
							
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">5.octopus-platform/joern</label>
								</div>
							
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">6.cowtowncoder/java-uuid-generator</label>
								</div>
						
							</li>
						</ul>
					</div>
				</div>
                     
                </div>
		                    <div class="col-md-3">
				<div class="panel panel-teal">
					<div class="panel-heading">排行第四关注语言Ruby</div>
					<div class="panel-body">
						<ul class="todo-list">
						<li class="todo-list-item">
								<div class="checkbox">
									<label for="checkbox">1.github/VisualStudio</label>
								</div>
								
						  </li>
						  <li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">2.github/objective-c-style-guide</label>
								</div>
								
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">3.github/ccql</label>
								</div>
							
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">4.github/government.github.com</label>
								</div>
				
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">5.github/pages-health-check</label>
								</div>
				
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">6.github/pages-health-check</label>
								</div>
				
							</li>
						</ul>
					</div>
				</div>
			</div>
                     <div class="col-md-3">
				<div class="panel panel-teal">
					<div class="panel-heading">排行第四热衷语言C++</div>
					<div class="panel-body">
						<ul class="todo-list">
						<li class="todo-list-item">
								<div class="checkbox">
									<label for="checkbox">1.opencv/opencv</label>
								</div>
								
						  </li>
						  <li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">2.Mooophy/Cpp-Primer</label>
								</div>
								
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">3.bitcoin/bitcoin</label>
								</div>
							
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">4.mapnik/mapnik</label>
								</div>
				
							</li>
							
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">5.nghttp2/nghttp2</label>
								</div>
							
							</li>
							<li class="todo-list-item">
								<div class="checkbox">
									
									<label for="checkbox">6.llvm-mirror/clang</label>
								</div>
						
							</li>
						</ul>
					</div>
				</div>
			</div>									

	  

	<script src="../static/js/jquery-1.11.1.min.js"></script>
	<script src="../static/js/bootstrap.min.js"></script>
	<script src="../static/js/chart.min.js"></script>
	<script src="../static/js/chart-data.js"></script>
	<script src="../static/js/easypiechart.js"></script>
	<script src="../static/js/easypiechart-data.js"></script>
	<script src="../static/js/bootstrap-datepicker.js"></script>
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