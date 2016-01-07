<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

<meta chaset="utf-8">

<title>${docs.get(step).query}</title>
<script src="http://code.jquery.com/jquery.js"></script>


<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/bootstrap-paginator.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	id="bootstrap-css">
<!-- <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet"> -->

<link rel="stylesheet" href="bootstrap/css/bootstrap-combined.min.css">

<link href="css/index.css" type="text/css">

  <link href="css/introdemo.css" rel="stylesheet">

<!-- Add IntroJs styles -->
<link href="css/introjs.css" rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">

    <link href="css/bootstrap-responsive.min.css" rel="stylesheet">
<style type="text/css">
a {
	font-size: 20px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;

	line-height: 1.42857143;
	color: #333;
}

h3 {
	color: black;
}

a:hover {
	color: black;
	text-decoration: none;
}
div {
    text-align: justify;
    text-justify: inter-word;
}
.nums
{
	color:#999;
}

}
</style>




</head>
<body>
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
			
				<div id="custom-search-input " >
						
					<div class="input-group col-md-8 col-md-offset-2 " >
						<div class="col-md-2" >
							<h4>查询词</h4>
						</div>
							<div class="input-group col-md-7 " style="margin-bottom:5%" data-step="1" data-intro="Get it, use it.">
					               <input type="text" value="China" style="height:30px" class="form-control" readonly="true" data-step="1" data-intro="查询词出现在这里" data-position='right'>
					               <span class="input-group-btn"  >
					                 <!--  <button class="btn btn-default " type="button" disabled="disabled"> -->
					                 <button class="btn btn-default " id="query_button" type="button" onclick_backup="window.location.href='viewDocument?which=-1'" data-step="3" data-intro="点击查选，得到文档" data-position='right'>
					                     		查询
					                  </button>
					               </span>
					            </div><!-- /input-group -->   <!-- <strong>${docs.get(step).query}</strong> -->  
							
							
							
							<div id="discription" style="margin-top:5%">
								<h2>&nbsp;<kbd>description</kbd></h2>
								<blockquote data-step="2" data-intro="这是查询词的一些补充描述" data-position='right'>
									<p  > China, officially the People's Republic of China (PRC), is a sovereign state in East Asia. It is the world's most populous country, with a population of over 1.35 billion. The PRC is a single-party state governed by the Communist Party, with its seat of government in the capital city of Beijing.[15] It exercises jurisdiction over 22 provinces, five autonomous regions, four direct-controlled municipalities (Beijing, Tianjin, Shanghai and Chongqing), and two mostly self-governing special administrative regions (Hong Kong and Macau); while claiming sovereignty over Taiwan.

Covering approximately 9.6 million square kilometers, China is the world's second-largest country by land area,[16] and either the third or fourth-largest by total area, depending on the method of measurement.[i] China's landscape is vast and diverse, ranging from forest steppes and the Gobi and Taklamakan deserts in the arid north to subtropical forests in the wetter south. The Himalaya, Karakoram, Pamir and Tian Shan mountain ranges separate China from South and Central Asia. The Yangtze and Yellow Rivers, the third- and sixth-longest in the world, run from the Tibetan Plateau to the densely populated eastern seaboard. China's coastline along the Pacific Ocean is 14,500 kilometres (9,000 mi) long, and is bounded by the Bohai, Yellow, East and South China Seas.</a>
							
							</p>
           						 </blockquote>
								
							</div>
						
					</div>
			
		</div>


		
	</div>
	<script type="text/javascript" src="js/intro.js"></script>
	<script type="text/javascript">
	 introJs().setOption('doneLabel', '查询').start().oncomplete(function() {
	        window.location.href = 'demo_serp.jsp?multipage=true';
	      });
	</script>
</body>
</html>