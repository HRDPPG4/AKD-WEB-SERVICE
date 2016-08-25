

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	
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

<!-- START SEARCH BLOCK-->
	 <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular-animate.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular-sanitize.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/2.1.2/ui-bootstrap-tpls.js"></script>
   <!--   <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  	 <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>   -->
	
	<!-- END SEARCH BLOCK -->

<style>
	
#SlideBox
{
	position: relative;
}
#btn-fullscreen
{
	position: absolute;
	right: 0px;
	bottom: 0px;
	background-color: #003666;
}
#btn-hide
{
	position: absolute;
	right: 15px;
	top: 13px;
	background-color: white;
	height:10%;
	width:10%;
	opacity:0;
}
div.drive-viewer-popout-button drive-viewer-dark-button goog-inline-block drive-viewer-button
{
	background-color: #003666 !importants;
	display:none !important;
	opacity:0;
}
.related-slide .related-container #User,.related-slide .related-container #Des,.related-slide .related-container #Title
{
  padding: 3px;
}
.footer{
	background-color: #374458;
	width: 100% !important;
	height:50% !important;
	color:  white;
	margin-top: 30px;
	text-align:left;
	word-wrap:break-word !important;
}
body
{	
	word-wrap:break-word !important;
}



</style>
</head>
<body ng-app="UserApp"  ng-controller="UserCtrl" data-ng-init="getDocumentAndCategoryAndUserAndCommentByDocID('${id}')">
 <jsp:include page="include/register.jsp"></jsp:include>
<jsp:include page="include/login.jsp"></jsp:include>
<jsp:include page="include/upload.jsp"></jsp:include>
<jsp:include page="include/save-list.jsp"></jsp:include>
<jsp:include page="include/update-slide.jsp"></jsp:include> 
				  
<header id="header">
 <jsp:include page="include/header.jsp"></jsp:include> 
</header>
 <jsp:include page="include/view-by-google-drive.jsp"></jsp:include> 
 <jsp:include page="include/toolbar-right.jsp"></jsp:include>
<div>
	<content>
	<div id="page-content-wrapper">
		 <div class="container-fluid">
			<section id="slide-view">
					<div class="row section nav-left topspace-right-slide">
						<div class="row">
						 <div class="show-slide-view">
							<div class="col-md-8 content-slide-view">
								<div class="row col-md-11 col-md-offset-1">
									<div class="slide-container" id="SlideBox">	
									
									<!--  IFRAME BLOCK TO DISPLAY SLIDE AND PDF -->	
									<button id="btn-hide" class="btn btn-primary">Hide</button>
									 <iframe ng-src='{{trustSrc(docDetail[0].EMBEDED_LINK)}}' allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe> 
									 <div ng-show="docDetail[0].DOC_TYPE_NUM == 2 || docDetail[0].DOC_TYPE_NUM == 3">
									 <button id="btn-fullscreen" class="btn btn-primary" data-toggle="modal" data-target="#ViewByGoogleDrive" ><span> <i class="fa fa-arrows-alt" aria-hidden="true"></i></span></button>
									</div>
									</div>
									
									<div class="detail-slide">
									     <div class="Slide-Owner">											
											<div id="title"><p>{{docDetail[0].TITLE | strLimit: 60}}</p></div>
											<div id="owner">
											<span id="img-user">
												<img src="${pageContext.request.contextPath}/resources/user/img/login.png" alt="">
											</span>
											<!-- {{UserID}}  -->
											{{docDetail[0].USERS[0].USER_NAME}}
											</div>
											<div id="read"><span><i class="fa fa-eye" aria-hidden="true"></i>:  <span ng-bind="docDetail[0].VIEW"></span></span></div>
											<div id="share"><span><i class="fa fa-share-alt" aria-hidden="true"></i>:  <span ng-bind="docDetail[0].SHARE"></span></span></div>
											<div id="line">
												<hr>
											</div>
											<div id="btn" >

												<button class="btn-savelist-detail" data-toggle="modal" data-target="#save-list" id="savelist"  ng-click="getSavelistUser(docDetail[0].USER_ID)"><span><i class="fa fa-plus" aria-hidden="true"  ></i>បន្ថែមទៅ</span></button>

												<button class="btn-share-detail"><span><i class="fa fa-share-alt" aria-hidden="true"></i></span>ចែករំលែក</button>
												<button class="btn-report-detail"><span><i class="fa fa-flag" aria-hidden="true"></i></span>ការវាយតម្លៃ</button>											

																						



											</div>
											
										 </div>										
									</div>
									
									<div class="content-report">
										<div class="header-report">ការវាយតម្លៃស្លាយនេះ
										<span><i class="fa fa-times " style="font-size:10px;float:right;" aria-hidden="true"></i></span>
										</div>
										
										<form action="" class=" form-report">
										<textarea class=" form-control" rows="2" id="comment"></textarea>
											<input type="button" value="បញ្ជូន"/>
										</form>	
										<script>
											$(document).ready(function(){
												$('.btn-report-detail').click(function(){
													$('.content-report').toggle();
												});
											});
										</script>				
									</div>
									
									 <div class="slide-detail-more">
									 	<div id="publish">Publish on: {{docDetail[0].CREATED_DATE}}</div>
										<div id="category">Category: {{docDetail[0].CATEGORY[0].CAT_NAME}}</div>
										<hr>
										<div id="description">Description: 
											<div>
												{{docDetail[0].DES}}
											</div>
										</div>
									</div>
									

									<div class="commend-visitor">
											<jsp:include page="include/comment.jsp"></jsp:include>
									</div>
									
								</div>
							</div>
						</div> 

	
							 <div class="related-slide">
								<div class="col-md-4">
									<div class="row col-sm-12" >
										<div class="related-container">
											<div class="row">												
												<h4>ឯកសារដែលមានទំនាក់ទំនងនឹងគ្នា</h4>
												<hr>
												  <div class="col-xs-6 col-sm-4 col-md-12" ng-repeat="related in documentByCatID | limitTo : 10">  
												       									 		 
												 		<div class="col-md-6">	
							 								<input   type="hidden" class="form-control" value="{{related.DOC_ID}}" id="slide_id">
							 								<input   type="hidden" class="form-control" value="{{related.USER_ID}}" id="slide_user_id">												 																		
													 		<a href="/detail/{{related.DOC_ID}}" ng-click="getDocumentById(related.DOC_ID)" ng-click="trackLog()">
													 		<img src="{{related.THUMBNAIL_URL}}" alt="Image"> 
													 		</a>
												 		</div>
												 		<div class="col-md-6">
												 			<div id="Title">
												 			{{related.TITLE | strLimit: 23}}
												 			</div>
												 			<div id="User">
												 			{{related.USERS[0].USER_NAME | strLimit: 10}}
												 			</div>
												 			<div id="Des">
												 			{{related.DES | strLimit: 23}}
												 			</div>
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

<footer>
	<jsp:include page="include/footer.jsp"></jsp:include>
 </footer>
  <a href="#0" class="cd-top">Top</a>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/back-to-top.js"></script>
     <script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/allkhmerslide.js"></script>	                        
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/login.js"></script> 
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/angular/UserApp.js"></script>
		
		
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/user/js/save-list.js"></script> 
	
	<!-- library jquery for file upload -->
	   <script src="${pageContext.request.contextPath}/resources/user/js/jquery-latest.min.js"></script>
	  <script src="${pageContext.request.contextPath}/resources/user/js/jquery.filer.min.js"></script>
	  <script src="${pageContext.request.contextPath}/resources/user/js/jquery-upload-file.js"></script> 
	<!-- Online Link -->
	<script>
	// $(document).ready(function() {				
		  function setHeight() {
		    windowHeight = $(window).innerHeight();
		    $('#SlideBox iframe').css('min-height', windowHeight-180);
		    $('#Slide-Detail iframe').css('min-height', windowHeight-30);
		    $('#ViewByGoogleDrive').css('min-height', windowHeight);
		    
		  };
		  setHeight();
		  
		  $(window).resize(function() {
		    setHeight();
		  }); 
	//	}); 
	</script>	
</body>