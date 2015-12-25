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

<link href="css/introjs.css" type="text/css">
 <!--   <link href="css/demo.css" rel="stylesheet"> -->
  

    <link href="css/bootstrap-responsive.min.css" rel="stylesheet">
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
div {
    text-align: justify;
    text-justify: inter-word;
}

}
</style>




</head>
<body>
	<div class="container">
		<div class="row">
			<jsp:include page="progress.jsp" flush="false" />
			
				<div id="custom-search-input " style="margin-top: 10px;">
						
					<div class="input-group col-md-7 col-md-offset-3 " >
						<div class="col-md-2" >
							<h4>查询词</h4>
						</div>
							<div class="input-group col-md-6 " style="margin-bottom:10%" data-step="1" data-intro="Get it, use it.">
					               <input type="text" value="${docs.get(step).query}" style="height:30px" class="form-control" readonly="true">
					               <span class="input-group-btn"  >
					                 <!--  <button class="btn btn-default " type="button" disabled="disabled"> -->
					                 <button class="btn btn-default " id="query_button" type="button" onclick_backup="window.location.href='viewDocument?which=-1'">
					                     		查询
					                  </button>
					               </span>
					            </div><!-- /input-group -->   <!-- <strong>${docs.get(step).query}</strong> -->  
							
							
							
							<div id="discription">
								<a  > ${docs.get(step).discription}</a>
							</div>
							<div id="serps">
								<c:if test="${doubleFlag!=null}">
									<h4>这次查询对应两个文档</h4>
									<p style="font-size: 16px;">
										<h4>
											<a style="color: blue; font-size: 17px" href="viewDocument?which=-1">title:<strong>${ docs.get(step).title1}</strong></a>
										</h4>
               							{ docs.get(step).interferedDocument}
                						<h5 style="color: #008000">
                							<small>时间  链接</small>得分
										</h5>
									</p>
								</c:if>	
								<c:if test="${doubleFlag==null}">
									<h4>这次查询对应1个文档</h4>
								</c:if>
									<p style="font-size: 16px;">
										<h4>
											<a style="color: blue; font-size: 17px" href="viewDocument?which=1">title:<strong>${ docs.get(step).title2}</strong></a>
										</h4>
               							{ docs.get(step).document}
                						<h5 style="color: #008000">
                							<small>时间  链接</small>得分
										</h5>
									</p>
							</div>
					</div>
			
		</div>


		
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#serps").hide();
		  	$("#query_button").click(function(){
		  		if($("#serps").is(":hidden")){
		  			$("#discription").hide();
			  		$("#serps").show();
			  		this.attr("text","显示");
		  		}
		  		else{
		  			$("#discription").show();
			  		$("#serps").hide();
			  		this.attr("text","查询");
		  		}
		  		
		  	});
		});
	</script>
</body>
</html>