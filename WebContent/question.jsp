<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>基本信息</title>
		<meta name="description" content="Minimal Form Interface: Simplistic, single input view form" />
		<meta name="keywords" content="form, minimal, interface, single input, big form, responsive form, transition" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<script src="js/modernizr.custom.js"></script>
		
		<script src="bootstrap/js/bootstrap.min.js"></script>
		<script src="bootstrap/js/bootstrap-paginator.js"></script>
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
			id="bootstrap-css">
	</head>
	<body>
		<div class="container">
			<!-- Top Navigation -->
			<header class="codrops-header">
			  <h1>眼动实验系统调查问卷</h1> 
			  <p>
            	<br/>
              	<span class="label label-primary">信息检索</span>
              	<span class="label label-warning">自然语言处理</span>
              	<span class="label label-success">计算智能</span>
            </p>
			</header>
			
			<div class="col-md-4 col-md-offset-4">
				<form role="form" action="questionOption.jsp">
				   <div class="form-group">
				      	<label for="name" class="col-sm-2 control-label">名字</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" id="name" 
					         placeholder="请输入您的昵称">
					    </div>
					    <br/><br/>
				      
				      <label for="xueli" class=" control-label">请选择学历</label>
				      <select class="form-control" id="xueli">
				         <option>高中生</option>
				         <option>本科生</option>
				         <option selected >硕士研究生</option>
				         <option>博士研究生</option>
				         <option>博士研究生以及以上学历</option>
				      </select>
				      <label for="eng" class=" control-label">您的英语水平是</label>
				      <select class="form-control" id="eng">
				         <option>四级以下</option>
				         <option>英语四级</option>
				         <option selected >英语六级</option>
				         <option>专业四级</option>
				         <option>专业八级</option>
				         <option>更高水平</option>
				      </select>
				      <label for="eng" class=" control-label">您的所学习的专业是？</label>
				      <select class="form-control " id="eng">
				         <option selected>计算机科学与技术、模式识别、自动化等相关专业</option>
				         <option>除计算机以外的工科专业</option>
				         <option>文法学科</option>
				         <option>理科</option>
				         <option>其他专业</option>
				         
				      </select>
				      
				      <select name="websites3" id="websites3" style="width: 198px; position: absolute; left: -5000px; top: -5000px;" onchange="showValue($('#websites3 option:selected').text(), this.value);output('onchange', this);">
			              <option value="faq" selected="selected" icon="icons/icon_calendar.gif">FAQ</option>
			              <option value="shopping_cart" icon="icons/icon_cart.gif">Shopping Cart</option>
			              <option value="cd" icon="icons/icon_cd.gif">CD</option>
			              <option value="email" icon="icons/icon_email.gif">Email</option>
			              <option value="faq" icon="icons/icon_faq.gif">FAQ</option>
			              <option value="games" icon="icons/icon_games.gif">Games</option>
			              <option value="music" icon="icons/icon_music.gif">Music</option>
			              <option value="phone" icon="icons/icon_phone.gif">Phone</option>
			              <option value="graph" icon="icons/icon_sales.gif">Graph</option>
			              <option value="secured" icon="icons/icon_secure.gif">Secured</option>
			              <option value="video" icon="icons/icon_video.gif">Video</option>
                        </select>
                        <div class="col-md-offset-4" style="margin-top:30px">
                       <button type="submit" onClick="location.href='quesionOption.jsp'"   class="btn btn-default">继续填写</button>
                       <button type="button" onClick="location.href='startExperiment'"   class="btn btn-success">直接开始</button>
                       </div>
         
					
				     
				   </div>
				</form>
			</div>
			
			
		</div><!-- /container -->
		
        
  

	</body>
</html>