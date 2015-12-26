<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

<meta chaset="utf-8">

<title>${which==1?docs.get(step).title2:docs.get(step).title1}</title>
<script src="http://code.jquery.com/jquery.js"></script>


<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/bootstrap-paginator.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	id="bootstrap-css">
<!-- <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet"> -->

<link rel="stylesheet" href="bootstrap/css/bootstrap-combined.min.css">
<link href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link href="css/star-rating.css" media="all" rel="stylesheet" type="text/css"/>
<script src="js/star-rating.js" type="text/javascript"></script>
<link href="css/index.css" type="text/css">

<style type="text/css">
a {
	font-size: 20px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;

	line-height: 1.42857143;
	color: #333;
}
.button-jumbo {
    font-size: 24px;
    height: 40px;
    line-height: 40px;
    padding: 0 40px;

   
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
			
				<div id="custom-search-input " style="margin-top: 30px;">

					<div class="input-group col-md-8 col-md-offset-2 ">
							
							 <div class="input-group">
					               <input type="text" value="${docs.get(step).query}" style="height:30px" class="form-control" readonly="true">
					               <span class="input-group-btn">
					                  <button class="btn btn-default " type="button" disabled="disabled">
					                     		查询
					                  </button>
					               </span>
					            </div><!-- /input-group -->
					            <br/><br/>
					            <p>本次查询还需要看<strong>${next}</strong>篇文档</p>
								<a> ${which==1?docs.get(step).document:docs.get(step).interferedDocument}</a>
							
					</div>
					<!----<div class="col-md-7 col-md-offset-3 " style="margin-top: 30px;">
						
						
						<div class="col-md-3  " >
						 <button id="up" class="button button-3d button-box button-jumbo" onclick="window.location.href='label?value=1&id=${docs.get(step).id}&which=${which}&next=${next}'"><i class="fa fa-thumbs-up">&nbsp;relevance</i></button>
						</div>
						<div class="col-md-3 col-md-offset-1" >
						 <button id="down" class="button button-3d button-box button-jumbo" onclick="window.location.href='label?value=0&id=${docs.get(step).id}&which=${which}&next=${next}'"><i class="fa fa-thumbs-down">&nbsp;irrelevance</i></button>
						 </div>
  						
  
					</div>
					-->
					<div class="col-md-9 col-md-offset-3 " style="margin-top: 10px;">
						<form id="labelForm" action="label"  methon="post">
						
							<input type="hidden"  value="${docs.get(step).id}" name="id">
							<input type="hidden"  value="${which}" name="which">
							<input type="hidden"  value="${next}" name="next">
							<div class="col-md-5" >
    			
    							<input id="value" name="value" value="2" type="number" class="rating" min=0 max=4 step=1 data-size="md">
    						</div>	
							<div class="col-md-2" style="margin-top: 20px;" >
    							<button id="labelButton" class="btn btn-primary">提交</button>
    						</div>
    					
						</form>
					</div>
		</div>


		
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
		
	  		$("#labelButton").click(function(){
	  			if($("#value").val()!=0)
	  				$("#labelForm").submit();
	  			else
	  			{
	  				alert("请选择相关性判定的等级，只能是1~4星");
	  				return false;
	  			}
	  		
	  		});
		});
	</script>
</body>
</html>