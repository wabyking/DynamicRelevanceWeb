<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>

<meta chaset="utf-8">

<title>Baigle Search</title>
<script src="http://code.jquery.com/jquery.js"></script>
<link href="css/introjs.css" rel="stylesheet">

<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="bootstrap/js/bootstrap-paginator.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	id="bootstrap-css">
<!-- <link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet"> -->

<link rel="stylesheet" href="bootstrap/css/bootstrap-combined.min.css">
 <link href="http://cdn.bootcss.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

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

					<div class="input-group col-md-8 col-md-offset-2 ">
							
							 <div class="input-group" data-step="1" data-intro="继续显示查询词" data-position="left">
					               <input type="text" value="china" style="height:30px" class="form-control" readonly="true">
					               <span class="input-group-btn">
					                  <button class="btn btn-default " type="button" disabled="disabled">
					                     		查询
					                  </button>
					               </span>
					            </div><!-- /input-group -->
					            <br/><br/>
					            <p  data-step="2" data-intro="除了本篇文档还剩一篇文档" data-position="right">本次查询还需要看<strong>0</strong>篇文档</p>
								<a data-step="3" data-intro="这是文档正文，你需要评价文档和对应的查询词是否相关" data-position="left"> 中国位于东亚，最早是指以洛阳盆地为中心的中原地区[1]，现今指以中华民族为主、中华文化为基础之国家。距今约4千多年前，中国以中原地区为中心开始出现聚落组织进而形成国家。1911年辛亥革命后，中国废除君主制，实行共和制，建立民国。然而“资本主义”与“共产主义”思想路线的冲突导致了1945至1949年的中国内战，并形成了中华民国和中华人民共和国两个政府两岸分治的局面。现今“中国”多指中华人民共和国，因其领土位于中国传统领域，并在联合国中代表“中国”。
中国的传统艺术形式有国乐、相声、戏曲、书法、国画、文学、陶瓷艺术、雕刻等，传统娱乐活动有象棋、围棋和麻将等。中国的武术举世闻名。茶、酒、菜和筷子等为中国的特色饮食文化，春节（旧历新年）、元宵、清明、端午、七夕、中秋、重阳、冬至等为传统节日。中国传统上是一个儒学国家，以夏历为历法，以五伦为道德准则。传统中国人有强烈的父系宗族观念和祖先崇拜，因此将代表家庭的姓氏置于人名之前。中国还重视教育及对人才的选拔，春秋时期孔子“有教无类，因材施教”开始办私塾培养人才，汉朝时采用察举推选政府官员，隋朝起实行科举在平民中选拔人才。此外，中国历朝历代都设有史官，因此保存有十分详尽的历史资料，如《二十四史》、《资治通鉴》等。中国古代在文化、科技等方面有所成就，明清以来，西方近代思想传入中国，使得西方“科学”、“民主”、“共产主义”等思想在今日中国占有重要地位</a>
							
					</div>
					<div class="col-md-7 col-md-offset-3 " style="margin-top: 30px;" data-step="4" data-intro="根据判断点击一个按钮" data-position="right">
						
						
						<div class="col-md-3  " >
						 <button id="up" class="button button-3d button-box button-jumbo" ><i class="fa fa-thumbs-up">&nbsp;relevance</i></button>
						</div>
						<div class="col-md-3 col-md-offset-1" >
						 <button id="down" class="button button-3d button-box button-jumbo" ><i class="fa fa-thumbs-down">&nbsp;irrelevance</i></button>
						 </div>
  
  
					</div>
		</div>


		
	</div>
	 <script type="text/javascript" src="js/intro.js"></script>
    <script type="text/javascript">
    
    	introJs().setOption('doneLabel', 'relevance').start().oncomplete(function() {
        	window.location.href = 'demo3.jsp?multipage=true';
      });
      
    </script>

</body>
</html>