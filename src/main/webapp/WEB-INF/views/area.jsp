﻿<!DOCTYPE html>
<html>
    <meta charset="utf-8">
    <title>Github可视化分析系统</title>
    <!-- 引入 echarts.js -->
    <script src="static/js/echarts.min.js"></script>
    <script src="static/js/china.js"></script>
    <script src="static/js/chinaEng.js"></script>
    <script src="static/js/world.js"></script>
    <script src="static/js/jquery.js"></script>
    
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
		<form role="search">
			<div class="form-group">
				<input type="text" class="form-control" placeholder="搜索">
			</div>
		</form>
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
			<li class="active"><a href="area"><span class="glyphicon glyphicon-pencil"></span> 地域</a></li>
			
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
				<li class="active">地域</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">地域</h1>
			</div>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
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
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12"> 
			
			</div>
		</div>
	  

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