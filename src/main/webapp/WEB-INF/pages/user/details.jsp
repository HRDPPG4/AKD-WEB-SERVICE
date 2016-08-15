
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
	
	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/bootstrap.min.css">	
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/index.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/categories.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/details.css">
	 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/responsive.css">
	<link href="${pageContext.request.contextPath}/resources/user/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/footer.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/header.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/search.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/font-server/font.css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/slide-detail.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/user_view.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/comment.css" />
	<!-- Register -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/register.css">
	<!-- style for file upload -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/jquery.filer.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/themes/jquery.filer-dragdropbox-theme.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/user/css/save-list.css">
	
	 <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> --> 
	<script src="${pageContext.request.contextPath}/resources/user/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/user/js/bootstrap.min.js"></script>
     <!--  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  -->
	
	
	
	
	<!-- Font -->
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
	 <link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
	

	
	<!--  Cannot use because Minea overwrite it-->
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> --> 
<script>
	PATH_UI = "http://192.168.178.202:2222";
</script>
</head>
<body ng-app="MainApp">
<jsp:include page="include/register.jsp"></jsp:include>
<jsp:include page="include/login.jsp"></jsp:include>
<jsp:include page="include/upload.jsp"></jsp:include>
<jsp:include page="include/save-list.jsp"></jsp:include>
<jsp:include page="include/update-slide.jsp"></jsp:include>
				  
<header id="header">
<jsp:include page="include/header.jsp"></jsp:include>
</header>

<jsp:include page="include/view-by-google-drive.jsp"></jsp:include>


<div>
	<content>
	<div id="page-content-wrapper">
		 <div class="container">
			<section id="slide-view" style="width:100%;" >
					<div class="row section nav-left topspace-right-slide">
						<div class="row">
						 <div class="show-slide-view">
							<div class="col-md-9 content-slide-view">
								<div class="row col-md-12">
															

									<div class="slide-container">	
									<%--  <iframe src="${url}" id="pptx"></iframe>  --%>
										<!-- <a href="" data-toggle="modal" data-target="#ViewByGoogleDrive">
											<img src="${pageContext.request.contextPath}/resources/user/img/Law/011.png" alt="">  
										</a>  -->	

											<!-- <iframe src="https://drive.google.com/file/d/0BwxmFmAg8DYKU2hHdzRkX2RFZEk/preview" width="640" height="480"></iframe> -->

										 <iframe src="${url}/embed?start=false&loop=false&delayms=3000"  allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe> 
										 
									
									</div>
									
									<div class="detail-slide">
									     <div class="Slide-Owner">											
											<div id="title"><p>វិធីដាំដំណាំស្រូវអោយទទួលបានផលច្រើន</p></div>
											<div id="owner">
											<span id="img-user">
												<img src="${pageContext.request.contextPath}/resources/user/img/login.png" alt="">
											</span>
												ហ៊ុំ ជីវ័ន
											</div>
											<div id="read"><span><i class="fa fa-eye" aria-hidden="true"></i>:  100</span></div>
											<div id="share"><span><i class="fa fa-share-alt" aria-hidden="true"></i>:  88</span></div>
											<div id="line">
												<hr>
											</div>
											<div id="btn">
												<button class="btn btn-primary" data-toggle="modal" data-target="#save-list"><span><i class="fa fa-plus" aria-hidden="true" id="savelist" ></i>Add To SaveList</span></button>
												
												<button class="btn btn-primary"><span><i class="fa fa-share-alt" aria-hidden="true"></i></span>Share</button>											
											</div>
											
										 </div>										
									</div>

									 <div class="slide-detail-more">
									 	<div id="publish">Publish on Aug 13 2016</div>
										<div id="category">Category: Technology</div>
										<hr>
										<div id="description">Description: 
											<div>
												ការពន្យាកំណើតជួយកាត់បន្ថយនូវបន្ទុកក្នុងគ្រួសារ។
											</div>
										</div>
									</div>
									

									<div class="commend-visitor">
											<jsp:include page="include/comment.jsp"></jsp:include>
									</div>
									
								</div>
							</div>
						</div> 

	
							 <div class="related-slide" ng-controller="relatedSlideCtrl">
								<div class="col-md-3">
									<div class="row col-sm-12" >
										<div class="related-container">
											<div class="row">												
												<h4>ឯកសារដែលមានទំនាក់ទំនងនឹងគ្នា</h4>
												<hr>
												 <div class="col-xs-6 col-sm-4 col-md-12" ng-repeat="slide in slides">  									 		 
												 		<div class="col-md-6">												 			
															<!-- <a href="/detail?url={{escapeUrl(slide.url)}}" >
													 		<img src="${pageContext.request.contextPath}/resources/user/img/Law/011.png" alt="">
													 		</a> -->




													 		<a href="/detail?url={{escapeUrl(slide.url)}}" >
													 		<img src="https://drive.google.com/thumbnail?authuser=0&sz=w320&id=1j3tJPgadg7nuS3XPHmrEiMdN3kXYSbG2a80r8Y7Rb-s" alt="">
													 		</a>




												 		</div>
												 		<div class="col-md-6">
												 			ដំណាំស្រូវជាដំណាំដ៏សំខាន់សម្រាប់ទ្រទ្រង់ជីវភាព...
												 		</div>	
												 		

												 </div> 												
											</div>	
										</div>
									</div>
								</div>
							</div> 

						</div>
						
					</div>
		</section>
	  </div> 
			<!-- end container -->
	</div>
		     <!-- end page-content-wrapper -->
	</content>
	</div> 	
   <script>
      $(document).ready(function(){
    	  $("button").click(function({
    		  alert("helo");
    	  });
    		 
    	  
    	  
      });
   </script>

   
<footer>
	<jsp:include page="include/footer.jsp"></jsp:include>
 </footer>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/allkhmerslide.js"></script>	                        
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/login.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/slide-detail.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/index.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/requestAPI/MainApp.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/save-list.js"></script>

	
	<!-- library jquery for file upload -->
	  <script src="${pageContext.request.contextPath}/resources/user/js/jquery-latest.min.js"></script>
	  <script src="${pageContext.request.contextPath}/resources/user/js/jquery.filer.min.js"></script>
	  <script src="${pageContext.request.contextPath}/resources/user/js/jquery-upload-file.js"></script>
	<!-- Online Link -->
	
	
</body>
