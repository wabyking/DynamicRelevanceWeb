<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>调查问卷</title>
		<meta name="description" content="Minimal Form Interface: Simplistic, single input view form" />
		<meta name="keywords" content="form, minimal, interface, single input, big form, responsive form, transition" />
		<meta name="author" content="Codrops" />
		
		
		<script src="cache/jquery.min.js"></script>
		<link rel="stylesheet" href="cache/font-awesome.min.css">
		<link rel="stylesheet" href="css/buttons.css">
			
			
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
			
			<section style="padding-top:0px">
				<form id="theForm" class="simform" autocomplete="off">
					<div class="simform-inner">
						<ol class="questions">
							<li>
								<span><label for="q1">您一般使用搜索引擎干什么任务?</label></span>
								<input id="q1" name="q1" type="text"/>
							</li>
							<li>
								<span><label for="q2">一般使用什么检索系统?</label></span>
								<input id="q2" name="q2" type="text"/>
							</li>
							<li>
								<span><label for="q3">您认为看过的文档会影响您对当前文档相关性的评判吗?</label></span>
								<input id="q3" name="q3" type="text"/>
							</li>
							<li>
								<span><label for="q4">您觉得文档和响应查询的相关度随着各种交互动作进行是一个动态评判的过程吗?</label></span>
								<input id="q4" name="q4" type="text"/>
							</li>
							<li>
								<span><label for="q5">新一代检索系统有什么特点?</label></span>
								<input id="q5" name="q5" type="text"/>
							</li>
							

						</ol><!-- /questions -->
						<button class="submit" type="submit">Send answers</button>
						<div class="controls">
							<button class="next"></button>
							<div class="progress"></div>
							<span class="number">
								<span class="number-current"></span>
								<span class="number-total"></span>
							</span>
							<span class="error-message"></span>
						</div><!-- / controls -->
					</div><!-- /simform-inner -->
					<span class="final-message"></span>
				</form><!-- /simform -->			
			</section>
			
		</div><!-- /container -->
		<script src="js/classie.js"></script>
		<script src="js/stepsForm.js"></script>
		<script>
			var theForm = document.getElementById( 'theForm' );
			function redirect(){
				window.location.href='startExperiment';
			}
			new stepsForm( theForm, {
				onSubmit : function( form ) {
					// hide form
					classie.addClass( theForm.querySelector( '.simform-inner' ), 'hide' );

					/*
					form.submit()
					or
					AJAX request (maybe show loading indicator while we don't have an answer..)
					*/

					// let's just simulate something...
					var messageEl = theForm.querySelector( '.final-message' );
					messageEl.innerHTML = 'Thank you! We\'ll be in touch.';
					
					classie.addClass( messageEl, 'show' );
					alert("over");
					//settimeout("wait 3 S",3000);
					setTimeout(redirect,3000)
					;
					
				}
			} );
		</script>
        
    <!--可删除-->
	<script src="http://www.jq22.com/js/jq.js"></script>
	<!--ecd 可删除-->

	</body>
</html>