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
			<jsp:include page="progress.jsp" flush="false" />
			
			<div class="col-md-6 col-md-offset-4 text-left">
				<h1>caffe break-${step}</h1>
				
				<c:if test="${step==len-1}">
					<p class="title">恭喜你完成了所有实验</p>
					<div class="col-md-4 col-md-offset-2" style="margin-top:10%">
				 	<span class="button-wrap">
	   				 	<a href="clear" class="button button-pill button-raised button-caution">结束</a>
	  				</span>
  				</div>
				</c:if>
				<c:if test="${step!=len-1}">
					<p class="title">您完成了一次查询，休息一下开始下一个查询</p>
					<div class="col-md-4 col-md-offset-2" style="margin-top:10%">
				 	<span class="button-wrap">
	   				 	<a href="nextExperiment" class="button button-pill button-raised button-caution">下一个</a>
	  				</span>
  				</div>
				</c:if>
				
  			</div>

		
	</div>

</body>
</html>