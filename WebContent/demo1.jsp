<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<!-- 
<link href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
 -->
<link rel="stylesheet" href="cache/font-awesome.min.css">
<link rel="stylesheet" href="css/buttons.css">


<script src="http://code.jquery.com/jquery.js"></script>


<link href="css/introdemo.css" rel="stylesheet">

<!-- Add IntroJs styles -->
<link href="css/introjs.css" rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">

<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/bootstrap-paginator.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	id="bootstrap-css">
<!-- <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet"> -->

<link rel="stylesheet" href="bootstrap/css/bootstrap-combined.min.css">
 
<style>

p.title1 {
	position: relative;
	font: 700 40px "Microsoft Yahei";

	text-align: center;
}
a:hover{
text-decoration:none;
color:#000000
}
a{
	color:#000000
}

</style>
<!-- 
	<script src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
 -->
 <script src="cache/jquery.min.js"></script>



</head>

<body>
	<div class="main">
		
		
		<div class="container">
		<div class="row">
			<div class="progress"   data-step="1" data-intro="这是进度条，已经完成了20%" data-position="down">
	  			<div class="progress-bar progress-bar-success" style="width: 20%">
	    			<span class="sr-only">20% Complete (success)</span>
	  			</div>
	  			
	 			<div class="progress-bar progress-bar-warning progress-bar-striped" style="width:80%">
	    			<span class="sr-only">80% Complete (warning)</span>
	  			</div>
	  			<!--
	  			<div class="progress-bar progress-bar-danger" style="width: 10%">
	    			<span class="sr-only">10% Complete (danger)</span>
	  			</div>
	  			-->
			</div>
			
				<div id="custom-search-input " style="margin-top: 10px;">
						
					<div class="input-group col-md-7 col-md-offset-3 "  >
					<div >
						<div class="col-md-2" >
							<h4>查询词</h4>
						</div>
						<div class="input-group col-md-6 " style="margin-bottom:10%" data-step="2" data-intro="这是查询词" data-position='right' >
					               <input type="text" value="china" style="height:30px" class="form-control" readonly="true">
					               <span class="input-group-btn"  >
					                 <!--  <button class="btn btn-default " type="button" disabled="disabled"> -->
					                 <button class="btn btn-default " type="button" onclick="window.location.href='viewDocument?which=-1'" data-step="5" data-intro="点击查询按钮，会跳到查询结果页面" data-position='left'>
					                     		查询
					                  </button>
					               </span>
					    </div><!-- /input-group -->   <!-- <strong>${docs.get(step).query}</strong> -->  
					</div>	
								<h4 data-step="3" data-intro="本次查询对应的文档个数，有时候是一个，有时候是两个" data-position='left'>这次查询对应1个文档</h4>
						
							
							<div class="tt" data-step="4" data-intro="这是查询的一些描述" data-position='right'>
							<a  > China, officially the People's Republic of China (PRC), is a sovereign state in East Asia. It is the world's most populous country, with a population of over 1.35 billion. The PRC is a single-party state governed by the Communist Party, with its seat of government in the capital city of Beijing.[15] It exercises jurisdiction over 22 provinces, five autonomous regions, four direct-controlled municipalities (Beijing, Tianjin, Shanghai and Chongqing), and two mostly self-governing special administrative regions (Hong Kong and Macau); while claiming sovereignty over Taiwan.

Covering approximately 9.6 million square kilometers, China is the world's second-largest country by land area,[16] and either the third or fourth-largest by total area, depending on the method of measurement.[i] China's landscape is vast and diverse, ranging from forest steppes and the Gobi and Taklamakan deserts in the arid north to subtropical forests in the wetter south. The Himalaya, Karakoram, Pamir and Tian Shan mountain ranges separate China from South and Central Asia. The Yangtze and Yellow Rivers, the third- and sixth-longest in the world, run from the Tibetan Plateau to the densely populated eastern seaboard. China's coastline along the Pacific Ocean is 14,500 kilometres (9,000 mi) long, and is bounded by the Bohai, Yellow, East and South China Seas.</a>
							
							</div>
					</div>
			
		</div>


		
	</div>

		</div>
		
		
	
 <script type="text/javascript" src="js/intro.js"></script>
    <script type="text/javascript">
    
    introJs().setOption('doneLabel', '查询').start().oncomplete(function() {
        window.location.href = 'demo2.jsp?multipage=true';
      });
      
    </script>

</body>
</html>