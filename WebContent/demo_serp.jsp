<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

<meta chaset="utf-8">

<title>china</title>
<script src="http://code.jquery.com/jquery.js"></script>


<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/bootstrap-paginator.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	id="bootstrap-css">
<!-- <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet"> -->

<link rel="stylesheet" href="bootstrap/css/bootstrap-combined.min.css">

<link href="css/index.css" type="text/css">


 <!--   <link href="css/demo.css" rel="stylesheet"> -->
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
							<div class="input-group col-md-7 " style="margin-bottom:5%" data-step="1" data-intro="查询词依然挂在这里，当时按钮不让点击" data-position='right' >
					               <input type="text" value="China" style="height:30px" class="form-control" readonly="true">
					               <span class="input-group-btn"  >
					                 <!--  <button class="btn btn-default " type="button" disabled="disabled"> -->
					                 <button class="btn btn-default " id="query_button" type="button" onclick_backup="window.location.href='viewDocument?which=-1'">
					                     		查询
					                  </button>
					               </span>
					            </div><!-- /input-group -->   <!-- <strong>${docs.get(step).query}</strong> -->  
							
							
							
							<div id="serps">
								<div class="nums" data-step="2" data-intro="此次查询得到了两个结果" data-position='right'>
									<h6>在0.001s内查出了   <strong>2 </strong>条结果</h6>
								</div>
								
								
									
									<div style="font-size: 16px; margin-top:10%" data-step="3" data-intro="请先点击第一文档，打分完成后可可以看到第二个文档" data-position='right' >
										<h4>
											<img src="images/1.png"  style="width:20px;height:20px;">
											<a style=" font-size: 24px " href="#" data-step="5" data-intro="查看文档" data-position='right'><strong>中国的传统艺术形式</strong></a>
										</h4>
										<!-- 
               							{ docs.get(step).interferedDocument}
                						<h5 style="color: #008000">
                							<small>时间  链接</small>得分
										</h5>
										 -->
									</div>
								
								
									<div style="font-size: 16px;margin-top:10%" data-step="4" data-intro="此时不允许点击第二个文档" data-position='right'>
										<h4>
										
										
											<img src="images/2.png" style="width:20px;height:20px;">
											<a id="secondDoc" style=" font-size: 24px" href="#"><strong>大陆与台湾血浓于水</strong></a>
										
											
											 
										</h4>
										<!-- 
               							{ docs.get(step).document}
                						<h5 style="color: #008000">
                							<small>时间  链接</small>得分
										</h5>
										 -->
									</div>
							</div>
					</div>
			
		</div>


		
	</div>
	<script type="text/javascript" src="js/intro.js"></script>
	<script type="text/javascript">
	 introJs().setOption('doneLabel', '查询').start().oncomplete(function() {
	        window.location.href = 'demo_document.jsp?multipage=true';
	      });
	</script>
</body>
</html>