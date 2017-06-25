﻿<!DOCTYPE html>
<html>
    <meta charset="utf-8">
    <title>Github可视化系统</title>
    <!-- 引入 echarts.js -->
    <script src="static/js/echarts.min.js"></script>
    <script src="static/js/china.js"></script>
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
<div class="adcenter"><script src="../新建文件夹 (2)/Lumino - Charts3_files/ca-pub-1542822386688301.js"></script><script src="../新建文件夹 (2)/Lumino - Charts3_files/ggad2_728x90.js"></script><link type="text/css" rel="stylesheet" href="../新建文件夹 (2)/Lumino - Charts3_files/astyle.css">

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
			<li><a href="user"><span class="glyphicon glyphicon-stats"></span> 用户</a></li>
			<li class="active"><a href="repos"><span class="glyphicon glyphicon-list-alt"></span> 项目（仓库）</a></li>
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
				<li class="active">项目</li>
			</ol>
		</div><!--/.row-->

		
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

        myChart.setOption({
    series: [{
        type: 'map',
        map: 'china'
    }]
});
		   
option = {
    title: [{
        text: '各地github用户',
        subtext: '用户数量',
        left: 'center'
    },{
        text: '全部: ' +18,
        right: 120,
        top: 40,
        width: 100,
        textStyle: {
            color: '#fff',
            fontSize: 16
        }
    }],
    tooltip: {
        trigger: 'item'
    },
    legend: {
        orient: 'vertical',
        left: 'left',
        data: ['全部'],
        selectedMode: 'single',
    },
    visualMap: {
        min: 0,
        max: 6000,
        left: 'left',
        top: 'bottom',
        text: ['高', '低'],
        calculable: true,
        colorLightness: [0.2, 100],
        color: ['#c05050','#e5cf0d','#5ab1ef'],
        dimension: 0
    },
    toolbox: {
        show: true,
        orient: 'vertical',
        left: 'right',
        top: 'center',
        feature: {
            dataView: {
                readOnly: false
            },
            restore: {},
            saveAsImage: {}
        }
    },
    grid: {
        right: 40,
        top: 100,
        bottom: 40,
        width: '30%'
    },
    xAxis: [{
        position: 'top',
        type: 'value',
        boundaryGap: false,
        splitLine: {
            show: false
        },
        axisLine: {
            show: false
        },
        axisTick: {
            show: false
        },
    }],
    yAxis: [{
        type: 'category',
        data: res10,
        axisTick: {
            alignWithLabel: true
        }
    }], geo: {
        map: 'china',
        roam: true,
		 left: '10',
        right: '35%',
        top: -55,

        zoom: 0.55,
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
	
    series: [{
        z: 1,
        name: '全部',
        
            type: 'map',
            mapType: 'china',
			 geoIndex: 0,
            roam: true,
		
		
		
        //roam: true,
        data: res0
    },  {
        name: '全部',
        z: 1,
        type: 'bar',
        label: {
            normal: {
                show: true,
				position: 'right'
            },
            emphasis: {
                show: true,
            }
        },
		
        itemStyle: {
            emphasis: {
                color: "rgb(254,153,78)"
            }
        },
        data: res0
    },  {
        name: '全部',
        z: 1,
        type: 'pie',
        radius: ['17%', '25%'],
        center: ['30%', '82.5%'],
       avoidLabelOverlap: false,
            label: {
                normal: {
                    show: false,
                    position: 'center'
                },
                emphasis: {
                    show: true,
                    textStyle: {
                        fontSize: '30',
                        fontWeight: 'bold'
                    }
                }
            },
            labelLine: {
                normal: {
                    show: false
                }
            },
        itemStyle: {
            emphasis: {
                color: "rgb(254,153,78)"
            }
        },
        data: res0
    }]
};  

myChart.showLoading();    
         myChart.setOption(option);
	     var data10=[];
         var names0=[]; 
		 var name0;
		 var num0;
         var nums0=[]; 
		 var res0=[];
		 var res10=[];
		 var res20=[];
         $.ajax({
         type : "get",
         async : true,            
         url : "static/tables/locationCHN.json",    
         dataType : "json",        
         success : function(result){
           
                    for(var i=0;i<result.length;i++){  
                       nums0.push(result[i].value);   
                     }
                    for(var i=0;i<result.length;i++){       
                        names0.push(result[i].name);   	
                      }
					  
			           for(var i=0;i<result.length;i++)
						   {
							   for(var j=0;j<result.length;j++)
								   {
									if (nums0[i]<nums0[j])
										{
											num0=nums0[j];
											nums0[j]=nums0[i];
											nums0[i]=num0;
											
											name0=names0[j];
											names0[j]=names0[i];
											names0[i]=name0;
										}
								   }
						   }
			 
		for(var i=0;i<result.length;i++) {  
                                res10.push(names0[i]); 
						        res0.push({   
								name:names0[i],
                                value:nums0[i],
                               
                                });
						       
								
					   }
			        //南沙群岛名字问题  res.push({name: '南海诸岛',value: 0, itemStyle:{ normal:{opacity:0,label:{show:false}}} })
		/* for(var i=0;i<1;i++){

			 data1.push({
data:{ name: 'HAINAN',value: [18]} 
});                
}*/
		 
                    myChart.hideLoading();  
					 
                    myChart.setOption({        
                        yAxis: [{
                        
                        data: res10,
                         }],
                        series: [
						{
							data:res0
							
						},
							{
							data:res0
							
						},
						{
							data:res0
						}]
                    });
                    

         
        },
		
         error : function(errorMsg) {
        
         alert("数据无法加载");
         mychart_second.hideLoading();
		 }
    });		   
		   
		   
if (option && typeof option === "object") {
    myChart.setOption(option, true);
}
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

		
   option = {
        baseOption: {
              timeline: {
                axisType: 'category',  //控制时间轴为离散数字
                autoPlay: true,
                playInterval: 3000,
				data: [
                    '1年', '2年', '3年',
                    '4年', '5年', 
                ],
             
            },
            title: {
                subtext: 'Media Query 示例'
            },
            tooltip: {
                trigger:'axis',
                axisPointer: {
                    type: 'shadow'
                }
            },
            xAxis: {
                type: 'value',
                name: '用户数量（人）',
                max: 380000,
                data: null
            },
            yAxis: {
                type: 'category',
                data: res10,
                axisLabel: {interval: 0},
                splitLine: {show: false}
            },
            legend: {
                data: ['第一产业'],
            },
            calculable : true,
            series: [
                {name: 'GDP', type: 'bar'},
             
                {name: '用户占比', type: 'pie'}
            ]
        },
        media: [
            {
                option: {
                    legend: {
                        orient: 'horizontal',
                        left: 'right',
                        itemGap: 10
                    },
                    grid: {
                        left: '10%',
                        top: 80,
                        right: 90,
                        bottom: 100
                    },
                    xAxis: {
                        nameLocation: 'end',
                        nameGap: 10,
                        splitNumber: 5,
                        splitLine: {
                            show: true
                        }
                    },
                    timeline: {
                        orient: 'horizontal',
                        inverse: false,
                        left: '20%',
                        right: '20%',
                        bottom: 10,
                        height: 40
                    },
                    series: [
                        {name: '用户占比', center: ['75%', '30%'], radius: '38%'}
                    ]
                }
            },
           
        ],
        options: [
            {
              
            },
            
        ]
    };

   
		
		myChart2.showLoading();    
         myChart2.setOption(option);
		 var options=[];
	     var series1=[];
		 var series2=[];
		 var series3=[];
		 var series4=[];
		 var series5=[];
			
         var names=[];    
         var nums=[]; 
		 var res=[];
		 var res1=[];
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
			  for(var i=0;i<8;i++) {
						        res1.push(names[i]); 	
					   }
			  for(var i=0;i<1;i++){
series1.push({
type:'bar',
data:[nums[i],nums[i+1],nums[i+2],nums[i+3],nums[i+4],nums[i+5],nums[i+6],nums[i+7]],
	itemStyle: {
                    normal: {
　　　　　　　　　　　　　　//好，这里就是重头戏了，定义一个list，然后根据所以取得不同的值，这样就实现了，
                        color: function(params) {
                            // build a color map as your need.
                            var colorList = [
                             '#c8efff',
			 '#a7e7ff',
			 '#79d9f1',
			 '#87e7ed',  
			 '#52cdd5',
			 '#5cbce0',	
			 '#1dc0ff', 
			 '#00acee',
                            ];
                            return colorList[params.dataIndex]
                        },
　　　　　　　　　　　　　　//以下为是否显示，显示位置和显示格式的设置了
                        label: {
                            show: true,
                            position: 'right',
//                             formatter: '{c}'
                            formatter: '{c}'
                        }
                    }
                },

},
	
			 {type:'pie',
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
type:'bar',
data:[nums[i],nums[i+1],nums[i+2],nums[i+3],nums[i+4],nums[i+5],nums[i+6],nums[i+7]],
	itemStyle: {
                    normal: {
　　　　　　　　　　　　　　//好，这里就是重头戏了，定义一个list，然后根据所以取得不同的值，这样就实现了，
                        color: function(params) {
                            // build a color map as your need.
                            var colorList = [
                             '#c8efff',
			 '#a7e7ff',
			 '#79d9f1',
			 '#87e7ed',  
			 '#52cdd5',
			 '#5cbce0',	
			 '#1dc0ff', 
			 '#00acee',
                            ];
                            return colorList[params.dataIndex]
                        },
　　　　　　　　　　　　　　//以下为是否显示，显示位置和显示格式的设置了
                        label: {
                            show: true,
                            position: 'right',
//                             formatter: '{c}'
                            formatter: '{c}'
                        }
                    }
                },

},
	
			 {type:'pie',
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
 for(var i=20;i<21;i++){
series3.push({
type:'bar',
data:[nums[i],nums[i+1],nums[i+2],nums[i+3],nums[i+4],nums[i+5],nums[i+6],nums[i+7]],
	itemStyle: {
                    normal: {
　　　　　　　　　　　　　　//好，这里就是重头戏了，定义一个list，然后根据所以取得不同的值，这样就实现了，
                        color: function(params) {
                            // build a color map as your need.
                            var colorList = [
                             '#c8efff',
			 '#a7e7ff',
			 '#79d9f1',
			 '#87e7ed',  
			 '#52cdd5',
			 '#5cbce0',	
			 '#1dc0ff', 
			 '#00acee',
                            ];
                            return colorList[params.dataIndex]
                        },
　　　　　　　　　　　　　　//以下为是否显示，显示位置和显示格式的设置了
                        label: {
                            show: true,
                            position: 'right',
//                             formatter: '{c}'
                            formatter: '{c}'
                        }
                    }
                },

},
	
			 {type:'pie',
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
			  for(var i=30;i<31;i++){
series4.push({
type:'bar',
data:[nums[i],nums[i+1],nums[i+2],nums[i+3],nums[i+4],nums[i+5],nums[i+6],nums[i+7]],
	itemStyle: {
                    normal: {
　　　　　　　　　　　　　　//好，这里就是重头戏了，定义一个list，然后根据所以取得不同的值，这样就实现了，
                        color: function(params) {
                            // build a color map as your need.
                            var colorList = [
                             '#c8efff',
			 '#a7e7ff',
			 '#79d9f1',
			 '#87e7ed',  
			 '#52cdd5',
			 '#5cbce0',	
			 '#1dc0ff', 
			 '#00acee',
                            ];
                            return colorList[params.dataIndex]
                        },
　　　　　　　　　　　　　　//以下为是否显示，显示位置和显示格式的设置了
                        label: {
                            show: true,
                            position: 'right',
//                             formatter: '{c}'
                            formatter: '{c}'
                        }
                    }
                },

},
	
			 {type:'pie',
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
			  for(var i=40;i<41;i++){
series5.push({
type:'bar',
data:[nums[i],nums[i+1],nums[i+2],nums[i+3],nums[i+4],nums[i+5],nums[i+6],nums[i+7]],
	itemStyle: {
                    normal: {
　　　　　　　　　　　　　　//好，这里就是重头戏了，定义一个list，然后根据所以取得不同的值，这样就实现了，
                        color: function(params) {
                            // build a color map as your need.
                            var colorList = [
                             '#c8efff',
			 '#a7e7ff',
			 '#79d9f1',
			 '#87e7ed',  
			 '#52cdd5',
			 '#5cbce0',	
			 '#1dc0ff', 
			 '#00acee',
                            ];
                            return colorList[params.dataIndex]
                        },
　　　　　　　　　　　　　　//以下为是否显示，显示位置和显示格式的设置了
                        label: {
                            show: true,
                            position: 'right',
//                             formatter: '{c}'
                            formatter: '{c}'
                        }
                    }
                },

},
	
			 {type:'pie',
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
			 
                    myChart2.hideLoading();  
					 
                    myChart2.setOption({  
						baseOption:{
						yAxis: [{
                        
                        data: res1,
                         }]
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
            },
	   ]
                    });
                    

         
        },
		
         error : function(errorMsg) {
        
         alert("数据无法加载");
         myChart2.hideLoading();
		 }
    });
		
		setTimeout(function (){
    window.onresize = function () {
      myChart.resize();
       myChart2.resize();
	
    }
},400)
	
    </script>
					</div>
				</div>
			</div>
		</div><!--/.row-->		
		


			<div class="row">


				<div class="col-xs-6 col-md-5 col-lg-6 col-lg-offset-0">

				<div class="panel panel-default">
					<div class="panel-heading">C++ (forks 排名)</div>
					<div class="panel-body">
						<div class="canvas-wrapper">


							<table  class="table table-striped"  >

								<tr>
									<th >排行</th>
									<th >仓库</th>
									<th >负责人</th>
									<th >forks</th>
									<th >stars</th>
								</tr>
								<tr>
									<td>1</td>
									<td >Mike</td>
									<td >100</td>
									<td >200</td>
									<td >12</td>
								</tr>
								<tr>
									<td>1</td>
									<td >Mike</td>
									<td >100</td>
									<td >200</td>
									<td >12</td>
								</tr>
								<tr>
									<td>1</td>
									<td >Mike</td>
									<td >100</td>
									<td >200</td>
									<td >12</td>
								</tr>
								<tr>
									<td>1</td>
									<td >Mike</td>
									<td >100</td>
									<td >200</td>
									<td >12</td>
								</tr>
								<tr>
									<td>1</td>
									<td >Mike</td>
									<td >100</td>
									<td >200</td>
									<td >12</td>
								</tr>
								<tr>
									<td>1</td>
									<td >Mike</td>
									<td >100</td>
									<td >200</td>
									<td >12</td>
								</tr>
								<tr>
									<td>1</td>
									<td >Mike</td>
									<td >100</td>
									<td >200</td>
									<td >12</td>
								</tr>
								<tr>
									<td>1</td>
									<td >Mike</td>
									<td >100</td>
									<td >200</td>
									<td >12</td>
								</tr>

							</table>
						</div>
					</div>
				</div>
			</div>

				<div class="col-xs-6 col-md-5 col-lg-6 col-lg-offset-0">

					<div class="panel panel-default">
						<div class="panel-heading">C++ (stars 排名)</div>
						<div class="panel-body">
							<div class="canvas-wrapper">


								<table  class="table table-striped"  >

									<tr>
										<th >排行</th>
										<th >仓库</th>
										<th >负责人</th>
										<th >forks</th>
										<th >stars</th>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>

								</table>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xs-6 col-md-5 col-lg-6 col-lg-offset-0">

					<div class="panel panel-default">
						<div class="panel-heading">Java (forks 排名)</div>
						<div class="panel-body">
							<div class="canvas-wrapper">


								<table  class="table table-striped"  >

									<tr>
										<th >排行</th>
										<th >仓库</th>
										<th >负责人</th>
										<th >forks</th>
										<th >stars</th>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>

								</table>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xs-6 col-md-5 col-lg-6 col-lg-offset-0">

					<div class="panel panel-default">
						<div class="panel-heading">Java (stars 排名)</div>
						<div class="panel-body">
							<div class="canvas-wrapper">


								<table  class="table table-striped"  >

									<tr>
										<th >排行</th>
										<th >仓库</th>
										<th >负责人</th>
										<th >forks</th>
										<th >stars</th>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>

								</table>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xs-6 col-md-5 col-lg-6 col-lg-offset-0">

					<div class="panel panel-default">
						<div class="panel-heading">Python (forks 排名)</div>
						<div class="panel-body">
							<div class="canvas-wrapper">


								<table  class="table table-striped"  >

									<tr>
										<th >排行</th>
										<th >仓库</th>
										<th >负责人</th>
										<th >forks</th>
										<th >stars</th>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>

								</table>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xs-6 col-md-5 col-lg-6 col-lg-offset-0">

					<div class="panel panel-default">
						<div class="panel-heading">Python (stars 排名)</div>
						<div class="panel-body">
							<div class="canvas-wrapper">


								<table  class="table table-striped"  >

									<tr>
										<th >排行</th>
										<th >仓库</th>
										<th >负责人</th>
										<th >forks</th>
										<th >stars</th>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>

								</table>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xs-6 col-md-5 col-lg-6 col-lg-offset-0">

					<div class="panel panel-default">
						<div class="panel-heading">Others (forks 排名)</div>
						<div class="panel-body">
							<div class="canvas-wrapper">


								<table  class="table table-striped"  >

									<tr>
										<th >排行</th>
										<th >仓库</th>
										<th >负责人</th>
										<th >forks</th>
										<th >stars</th>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>

								</table>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xs-6 col-md-5 col-lg-6 col-lg-offset-0">

					<div class="panel panel-default">
						<div class="panel-heading">Others (stars 排名)</div>
						<div class="panel-body">
							<div class="canvas-wrapper">


								<table  class="table table-striped"  >

									<tr>
										<th >排行</th>
										<th >仓库</th>
										<th >负责人</th>
										<th >forks</th>
										<th >stars</th>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>
									<tr>
										<td>1</td>
										<td >Mike</td>
										<td >100</td>
										<td >200</td>
										<td >12</td>
									</tr>

								</table>
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