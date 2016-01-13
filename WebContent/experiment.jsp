<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<!-- 
<link href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
 -->
<link rel="stylesheet" href="cache/font-awesome.min.css">
<link rel="stylesheet" href="css/buttons.css">
<title>实验首页</title>

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
p{
	text-align: justify;
    text-justify: inter-word;
}
</style>
<!-- 
	<script src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
 -->
 <script src="cache/jquery.min.js"></script>



</head>

<body>
	<div class="main">
		
		
			<p class="title1 ">查询词一览${user}-${group} </p>
			<div class="col-md-offset-7">
			
				<span class="button-wrap">
		   				 <a  id="startButton" class="button button-pill button-raised button-action button-rounded">演示</a>
		   				  
		  		</span>
		  		
				
		  		<span class="button-wrap">
		   				 <a href="firstDocument" class="button button-pill button-raised button-royal">开始实验</a>
		   				  
		  		</span>
			</div>
			
			<div class="list-group col-md-7 col-md-offset-3" style="margin-top:30px">
				<h4>您获得的随机的查询的顺序如下：请先<strong>启动眼动仪</strong>然后再<strong>开始实验</strong></h4>	
				
				<c:forEach var="doc" items="${docs}" varStatus="status">
									
					<div href="#" class="list-group-item "
					<c:if test="${status.count<3}">
					 	 data-step="${status.count}" data-intro="关于 ${doc.query} 的查询，本次查询需要判断<strong>${doc.option+1}</strong>篇文档" data-position='right'
					 </c:if>
					 >
					  	<span class="badge ${doc.option==1?"badge-success":""}">${doc.option==1?"3":"2"} minutes</span>
					    <h4 class="list-group-item-heading">${doc.query}&nbsp;&nbsp;&nbsp;&nbsp;${doc.option==1?"":""}</h4>
					    <p class="list-group-item-text">${doc.discription}</p>
			    
			  		</div>
				</c:forEach>
			  
			</div>
		</div>
		
		
	
 <script type="text/javascript" src="js/intro.js"></script>
    <script type="text/javascript">
      document.getElementById('startButton').onclick = function() {
        introJs().setOption('doneLabel', 'Next page').start().oncomplete(function() {
          window.location.href = 'demo_query.jsp?multipage=true';
        });
      };
    </script>

</body>
</html>