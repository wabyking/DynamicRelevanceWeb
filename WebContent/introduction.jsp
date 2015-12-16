<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
<head>
<!-- 
<link href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
 -->
<link rel="stylesheet" href="cache/font-awesome.min.css">
<link rel="stylesheet" href="css/buttons.css">


<script src="http://code.jquery.com/jquery.js"></script>


<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/bootstrap-paginator.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	id="bootstrap-css">
<!-- <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet"> -->

<link rel="stylesheet" href="bootstrap/css/bootstrap-combined.min.css">
 


<link rel="stylesheet" href="css/onepage-scroll.css" />
<style>
.content {
	padding-top: 10%;
	padding-left: 25%;
}
.button-circle.button-jumbo, .button-box.button-jumbo, .button-square.button-jumbo {
    width: 200px;
}
.footer {
	padding-top: 5%;
	padding-left: 0%;
}
#up{
	background-color: #ff0000;
    border-color: #ff0000;
    color: #FFF;
}
#down{
	background-color: #808080;
    border-color: #808080;
    color: #FFF;
}
.button-jumbo {
    font-size: 24px;
    height: 40px;
    line-height: 40px;
    padding: 0 40px;
    width:200px

   
}
/*\*/ 
.page1 {
	/*background-color: #1bbc9b;*/
}

.page2 {
	/*background-color: #ffffff;*/
}

.page3 {
	/*background-color: #4BBFC3;*/
}

.page4 {
	/*background-color: #f90;*/
}


p.title {
	position: relative;
	font: 700 40px "Microsoft Yahei";
	/*color: #fff;*/
	text-align: center;
}
p.title1 {
	position: relative;
	font: 700 40px "Microsoft Yahei";

	text-align: center;
}
p.content
{
	position: relative;
	font: 700 20px "Microsoft Yahei";

	text-align: center;
}
p.discription
{
	
	font: 700 18px "Times";

}
</style>
<!-- 
	<script src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
 -->
 <script src="cache/jquery.min.js"></script>
<script src="js/jquery.onepage-scroll.min.js"></script>

<script>
	$(function() {
		$('.main').onepage_scroll({
			sectionContainer : '.page',
			direction : 'horizontal'

		});

	});
</script>
</head>

<body>
	<div class="main">
		<div class="page page1">
			
			<div class="content col-md-9 ">
				<div class="col-md-3 col-md-offset">
					<img src="images/logo.jpg">
				</div>
				<div class="col-md-9 ">
					<p class="title">基于眼动仪的动态相关性用户实验</p>
				</div>
				<br/><br/>
				<p class="content"><a href="startExperiment"><img src="images/start.png">跳过介绍直接实验</a></p>
				
				<br/><br/>
				<!--  
				<address>
					  <strong>TJUIRLIB, Inc.</strong><br>
					  津南区海河教育园雅观路135号<br>
					  中国, 天津  300350<br>
					  <abbr title="Phone">P:</abbr> (123) 456-7890
					</address>
					
					<address>
					  <strong>waby</strong><br>
					  <a href="mailto:#">wabyking@163.com</a>
					</address>
				-->
				<!-- 
				<div class="footer  col-md-5 col-md-offset-4">
					
					<div class="jiathis_style_32x32">
						<a class="jiathis_button_qzone"></a> <a
							class="jiathis_button_tsina"></a> <a class="jiathis_button_tqq"></a>
						<a class="jiathis_button_weixin"></a> <a
							class="jiathis_button_renren"></a> <a
							href="http://www.jiathis.com/share"
							class="jiathis jiathis_txt jtico jtico_jiathis" target="_blank"></a>
						<a class="jiathis_counter_style"></a>
					</div>
					<script type="text/javascript"
						src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script>
				</div>
				 -->
			</div>
			
			
			
		</div>
		<div class="page page2">
			<p class="title1">实验步骤</p>
			
			
			<div class="list-group col-md-7 col-md-offset-3" style="margin-top:30px">
			
			  <a href="#" class="list-group-item ">
			  	<span class="badge">3 minutes</span>
			    <h4 class="list-group-item-heading">规则介绍</h4>
			    <p class="list-group-item-text">介绍大体的实验流程</p>
			    
			  </a>
			  <a href="#" class="list-group-item ">
			  	<span class="badge">3 minutes</span>
			    <h4 class="list-group-item-heading">调查问卷</h4>
			    <p class="list-group-item-text">按照页面提示完成<strong>调查问卷</strong></p>
			  </a>
			  <a href="#" class="list-group-item ">
			  	<span class="badge">3 minutes</span>
			    <h4 class="list-group-item-heading">眼动仪校准</h4>
			    <p class="list-group-item-text">根据要求进行眼动仪的<strong>校准</strong></p>
			  </a>
			  <a href="#" class="list-group-item ">
			  	<span class="badge">3 minutes</span>
			    <h4 class="list-group-item-heading">测试小例子</h4>
			    <p class="list-group-item-text">根据例子，熟悉实验的步骤和方法</p>
			  </a>
			  <a href="#" class="list-group-item ">
			  	<span class="badge">30 minutes</span>
			    <h4 class="list-group-item-heading">正式实验</h4>
			    <p class="list-group-item-text">随机顺序开始<strong>20组中英文</strong>查询</p>
			  </a>
			  
			</div>
		</div>
		<div class="page page3">
			
			<div class="jumbotron col-md-6 col-md-offset-3 " style="padding-left:30px">
				
  				 	<h2>实验介绍</h2>
 				 	<p class="discription">您将会完成由系统随机出20组查询，每组查询将会有一下两种形式</p>
	 				
	 				 <div class=" col-md-6 col-md-offset-1" >
	 				 	<button type="button" class="btn btn-primary btn-lg btn-block">一个查询对应单文档</button>
					 	<button type="button" class="btn btn-default btn-lg btn-block">一个查询对应两个文档</button>
	  				</div>
	  				<br/><br/><br/><br/><br/>
	  				<div class=" col-md-12" style="padding-left:0px">
	  				 	<p class="discription">看完每一个文档，判断文档是否相关</p>
	 					<blockquote>
  							<p><em>文档相关意味着，文档的内容跟相应查询信息需求是一致的，能够满足你的查询需要（定义虚斟酌）</em></p>
						</blockquote>
						
						
		  				<p class="discription">根据自己的判断点击相关按钮，将会自动进入下一个查询会话</p>
						<div class="col-md-6  " >
						 	<button id="up" class="button button-3d button-box button-jumbo" onclick="alert('up')"><i class="fa fa-thumbs-up">&nbsp;relevance</i></button>
						</div>
						<div class="col-md-6" >
						 	<button id="down" class="button button-3d button-box button-jumbo" onclick="alert('down')"><i class="fa fa-thumbs-down">&nbsp;irrelevance</i></button>
						 </div>
		  				
		  				<!-- 
		  					<p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
		  				</div>
		  				 -->
  					</div>
				
			</div>
		</div>
		<div class="page page4">
			
			<p class="title">开始实验</p>
			<div class="col-md-2 col-md-offset-5" style="margin-top:10%">
				 <span class="button-wrap">
	   				 <a href="question.jsp" class="button button-pill button-raised button-caution">调查问卷 Go</a>
	  			</span>
  			</div>

		</div>
	</div>


</body>
</html>