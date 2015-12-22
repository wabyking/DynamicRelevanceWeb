<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title>启动眼动设备</title>

    <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />

</head>

<body>

  <canvas id="text" width="500" height="100"></canvas>
<canvas id="stage" width="500" height="100"></canvas>
<form id="form" action="test.jsp?step=0">
    
    <input type="submit" value="start" />
</form>
<div style="text-align:center;clear:both;margin-top:50px">

</div>
  <script src='js/EasePack.min.js'></script>
  <script src='js/TweenLite.min.js'></script>
  <script src='js/easeljs-0.7.1.min.js'></script>
  <script src='js/requestAnimationFrame.js'></script>

  <script src="js/index.js"></script>

</body>

</html>