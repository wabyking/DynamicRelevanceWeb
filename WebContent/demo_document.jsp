<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

<meta chaset="utf-8">

<title>中国的传统艺术形式</title>
<script src="http://code.jquery.com/jquery.js"></script>


<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/bootstrap-paginator.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	id="bootstrap-css">
<!-- <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet"> -->
  <link href="css/introjs.css" rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet">
<link rel="stylesheet" href="bootstrap/css/bootstrap-combined.min.css">
<link href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<link href="css/star-rating.css" media="all" rel="stylesheet" type="text/css"/>
<script src="js/star-rating.js" type="text/javascript"></script>
<link href="css/index.css" type="text/css">

<style type="text/css">
a {
	font-size: 23px;
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
#right{
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
p
{
	
	
}
.path
{
	font-size:15px;
}
.badge
{
	font-size:30px;border-radius: 30px;min-width: 30px;padding: 10px 20px;color: #fff;
}
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="progress"   >
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
			
				<div id="custom-search-input " style="margin-top: 30px;">

					<div class="input-group col-md-10 col-md-offset-1 ">
							
							 <div class="input-group  col-md-10">
					               <input type="text" value="China" style="height:35px" class="form-control" readonly="true">
					               <span class="input-group-btn">
					                  <button class="btn btn-default " type="button" disabled="disabled">
					                     		查询
					                  </button>
					               </span>
					               <span class="badge badge-success pull-right " data-step="1" data-intro="一共有两篇文档，这是第一篇" data-position="right"style="">1-2</span>
					            </div><!-- /input-group -->
					            
					            <br/>
					            <!-- 
					            <div >
					            <ol class="breadcrumb">
  									<li><a class="path" href="#">${docs.get(step).query}</a></li>
  									<li><a "active" class="path" href="#">${which==1?docs.get(step).title2:docs.get(step).title1}</a></li>
 									<span class="badge ${doc.option==1?"badge-success":""}">${next==1?"3":"2"} minutes</span>
								</ol>
					           </div>
					            -->
					            <div style="text-align:center" data-step="2" data-intro="标题出现在这里" data-position="right">
					            	<h2>中国的传统艺术形式</h2>
					            </div>
								<p data-step="3" data-intro="文档正文" data-position="right"> <a>中国的传统艺术形式有国乐、相声、戏曲、书法、国画、文学、陶瓷艺术、雕刻等，传统娱乐活动有象棋、围棋和麻将等。中国的武术举世闻名。茶、酒、菜和筷子等为中国的特色饮食文化，春节（旧历新年）、元宵、清明、端午、七夕、中秋、重阳、冬至等为传统节日。中国传统上是一个儒学国家，以夏历为历法，以五伦为道德准则。传统中国人有强烈的父系宗族观念和祖先崇拜，因此将代表家庭的姓氏置于人名之前。中国还重视教育及对人才的选拔，春秋时期孔子“有教无类，因材施教”开始办私塾培养人才，汉朝时采用察举推选政府官员，隋朝起实行科举在平民中选拔人才。此外，中国历朝历代都设有史官，因此保存有十分详尽的历史资料，如《二十四史》、《资治通鉴》等。中国古代在文化、科技等方面有所成就，明清以来，西方近代思想传入中国，使得西方“科学”、“民主”、“共产主义”等思想在今日中国占有重要地位</a>
</p>
							
					</div>
					<!----<div class="col-md-7 col-md-offset-3 " style="margin-top: 30px;">
						
						
						<div class="col-md-3  " >
						 <button id="up" class="button button-3d button-box button-jumbo" onclick="window.location.href='label?value=1&id=${docs.get(step).id}&which=${which}&next=${next}'"><i class="fa fa-thumbs-up">&nbsp;relevance</i></button>
						</div>
						<div class="col-md-3 col-md-offset-1" >
						 <button id="right" class="button button-3d button-box button-jumbo" onclick="window.location.href='label?value=0&id=${docs.get(step).id}&which=${which}&next=${next}'"><i class="fa fa-thumbs-right">&nbsp;irrelevance</i></button>
						 </div>
  						
  
					</div>
					-->
					<div class="col-md-6 col-md-offset-3 " style="margin-top: 10px;" data-step="4" data-intro="打分组件" data-position="right">
						<form id="labelForm" action="demo_finish.jsp?multipage=true"  methon="post">
						
							<input type="hidden"  value="${docs.get(step).id}" name="id">
							<input type="hidden"  value="${which}" name="which">
							<input type="hidden"  value="${next}" name="next">
							<div class="col-md-6" data-step="5" data-intro="先给出您对文档与查询之间的相关性评分，1-4分别代表不同的相关性等级，依次递增" data-position="right">
    			
    							<input id="value" name="value" value="2" type="number" class="rating" min=0 max=4 step=1 data-size="md">
    						</div>	
							<div class="col-md-2" style="margin-top: 20px;" data-step="6" data-intro="提交您的打分，进入下一步，如果是最后一篇文档，则结束本次查询" data-position="right">
    							<button id="labelButton" class="btn btn-primary">提交</button>
    						</div>
    					
						</form>
					</div>
		</div>


		
	</div>
	 <script type="text/javascript" src="js/intro.js"></script>
    <script type="text/javascript">
    
    	introJs().setOption('doneLabel', '提交').start().oncomplete(function() {
        	window.location.href = 'demo_finish.jsp?multipage=true';
      });
      
    </script>
</body>
</html>