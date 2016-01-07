<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>




<div class="progress">
	  			<div class="progress-bar progress-bar-success " style="width: ${step*100.0/len}%">
	    			<span class="sr-only">${step*100.0/len}% Complete (success)</span>
	  			</div>
	  			
	 			<div class="progress-bar progress-bar-warning progress-bar-striped" style="width: ${100-step*100.0/len}%">
	    			<span class="sr-only">${100-step*100.0/len} Complete (warning)</span>
	  			</div>
	  			<!--
	  			<div class="progress-bar progress-bar-danger" style="width: 10%">
	    			<span class="sr-only">10% Complete (danger)</span>
	  			</div>
	  			-->
</div>