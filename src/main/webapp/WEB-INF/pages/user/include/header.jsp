<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!--  FOOTER HEADER -->
	
	<!-- link -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/bootstrap.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/index.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/categories.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/details.css">
	 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/responsive.css">
	<link href="${pageContext.request.contextPath}/resources/user/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/right-nav.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/path/to/font-awesome/css/font-awesome.min.css">

	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/login.css">
    <!-- script -->
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->
	<script src="${pageContext.request.contextPath}/resources/user/js/jquery.min.js"></script>
	<title>AllKhmerDocs</title>
	
	
	<!--  FOOTER RESOURCE -->
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/footer.css">

</head>
<body>
	<header id="header">
<!-- top menu -->
	<div class="top-menu">
		<nav class="navbar navbar-inverse navbar-fixed-top navbar-bg">
			<span  class="navbar-logo">
					<a href="#" class="navbar-brand brand-logo">AllKhmerDocs</a>
			</span>
			
			<br>

<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>

<div id="id01" class="modal">
  
  <form class="modal-content animate" action="action_page.php">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="img_avatar2.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
        
      <button type="submit">Login</button>
      <input type="checkbox" checked="checked"> Remember me
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>
			
			
		</nav>
	</div>
<!-- main menu -->
<div class="main-menu-contain">
<nav class="navbar navbar-default navbar-sticky navbar-main-menu">
	<div class="container">
		<div class="main-menu">
			<ul class="menu-basic" id="myTopnav">

			  <li class="active"><a href="/">
				   <span><i class="fa fa-home" aria-hidden="true"></i>
				   </span>ទំព័រដើម</a>
			  </li>
			  <li><a href="/technology">
			  		<span><i class="fa fa-flask"></i></span>បច្ចេកវិទ្យា</a>
			  </li>
			  <li><a href="/general-knowledge">
				   <span><i class="fa fa-graduation-cap" aria-hidden="true"></i>
				   </span>ចំណេះដឹងទូទៅ</a>
			  </li>
			  <li><a href="/literal">
				   <span><i class="fa fa-book" aria-hidden="true">
				   </i>
				   </span>អក្សរសាស្រ្ត</a>
			  </li>
			  
			  <li><a href="/business">
				   <span><i class="fa fa-cubes" aria-hidden="true"></i>
				   </span>មុខជំនួញ</a>
			  </li>
			  <li><a href="/other">
			  	   <span><i class="fa fa-tags" aria-hidden="true"></i>
			  	   </span>ផ្សេងៗ</a>
			  </li>
			  <li class="icon">
			   <span><i class="fa fa-bars" aria-hidden="true"></i></span>
			  </li>
			</ul>
		</div>
	</div>
</nav>
</div>
</header>