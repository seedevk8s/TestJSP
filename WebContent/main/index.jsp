<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    

<%
	

%>
    
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->    
    
    
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>TestJSP</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Realist Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Samsung, LG, Motorola web design" />	
	
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="<%=request.getContextPath()%>/js/jquery-1.11.1.min.js"></script>	
	
	<!-- Custom Theme files -->
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="css/weather.css">
	<link href="css/board.css" rel='stylesheet' type='text/css' />
	<link href="css/reserve.css" rel='stylesheet' type='text/css' />
	<link href="css/nezip.css" rel='stylesheet' type='text/css' />
	<link href="css/login.css" rel='stylesheet' type='text/css' />
	<link href="css/idSearch.css" rel='stylesheet' type='text/css' />
	<link href="css/idCheck.css" rel='stylesheet' type='text/css' />
	<link href="css/pwdCheck.css" rel='stylesheet' type='text/css' />
	<link href="css/jimList.css" rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Grand+Hotel:400' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet:100,300,400,500,600,700,800,900' type='text/css'>	
	
	<!-- 회원가입 -->
	<link rel="stylesheet" type="text/css" href="join/shadow/css/shadowbox.css"/>
	<script type="text/javascript" src="join/shadow/js/shadowbox.js"></script>	
	
	<!-- Menu -->
	<script src="js/responsiveslides.min.js"></script>
	<script src="dist/summernote.min.js"></script>
	<link href="dist/summernote.css" rel="stylesheet">
	<script src="dist/summernote-ko-KR.js"></script>	
	<script type="text/javascript">
	    $(function () {
	        $("#slider").responsiveSlides({
	        	auto: true,
	        	nav: true,
	        	speed: 500,
	          namespace: "callbacks",
	          pager: true,
	        });
	      });	
	    
	    
	    $(document).ready(function(){
	    	var t = new Date();
	    	var yy = t.getFullYear();
	    	var mm = t.getMonth()+1;
	    	var dd = t.getDate();
	    	$('.datepicker').each(function(){
	    		$(this).datepicker({
	    			//startDate: "10/16/2015"
	    			format: 'yyyy/mm/dd',
	    			startDate: yy + "/" + mm + "/" + dd,
	    			language: 'kr'
	    		})
	    	});
	    });	    
	
	</script>
	
	<!----font-Awesome----->
	<link rel="stylesheet" href="fonts/css/font-awesome.min.css">
	<!----font-Awesome----->	
	
	<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>	

    <script type="text/javascript">
	    $(document).ready(function () {
	        $('#horizontalTab').easyResponsiveTabs({
	            type: 'default', //Types: default, vertical, accordion           
	            width: 'auto', //auto or any width like 600px
	            fit: true   // 100% fit in a container
	        });
	    });
	</script>	
	
	<link rel="stylesheet" href="css/bootstrap-datepicker.css">
	
	<script src="js/bootstrap-datepicker.min.js"></script>
	<script src="js/bootstrap-datepicker.kr.min.js"></script>	
	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	<style>
		@media screen and (min-width: 800px) {
			li.dropdown:hover > ul.dropdown-menu{     
				display: block;     
				margin: 0;  
			}
		}
	</style> 	

</head>
<body>

	<div class="header">
	  <div class="logo">
		<a href="index.jsp"><img src="images/logo.jpg" alt=""/></a>
	  </div>
	  
	  
	</div>		
	
	
	</div>
</body>
</html>































































