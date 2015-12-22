<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

<meta chaset="utf-8">

<title>Baigle Search</title>
<script src="cache/jquery.min.js"></script>
<link rel="stylesheet" href="cache/font-awesome.min.css">
<link rel="stylesheet" href="css/buttons.css">

<link href="css/introjs.css" rel="stylesheet">
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/bootstrap-paginator.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	id="bootstrap-css">
<!-- <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet"> -->

<link rel="stylesheet" href="bootstrap/css/bootstrap-combined.min.css">

<link href="css/index.css" type="text/css">
<style type="text/css">
a {
	font-size: 18px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	font-size: 18px;
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

}
</style>



</head>
<body>
	<div class="container">
		<div class="row">
			<div class="progress"  >
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
			
			<div class="col-md-6 col-md-offset-4 text-left">
				<h1>caffe break-${step}</h1>
				
			
					
					<div class=" col-md-offset-2" style="margin-top:10%" step="1" data-intro="点击此按钮开启下一个查询" data-position="right">
				 		<span class="button-wrap">
	   				 		<a href="" class="button button-pill button-raised button-caution">下一查询</a>
	  					</span>
  					</div>
				
				
  			</div>

		
	</div>
	 <script type="text/javascript" src="js/intro.js"></script>
    <script type="text/javascript">
    
    	introJs().setOption('doneLabel', '开启取词').start().oncomplete(function() {
        	window.location.href = 'firstDocument';
      });
      
    </script>
</body>
</html>