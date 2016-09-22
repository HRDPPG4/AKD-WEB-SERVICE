 <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    
    <c:set var="ContextPath" value="http://localhost:2222" />
	
    
<!DOCTYPE html>
<html>
<head>
<title>Home</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="shortcut icon" href="${ContextPath}/resources/user/img/AKD.png">
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script> -->
	
	
	<link rel="stylesheet" href="${ContextPath}/resources/user/css/bootstrap.min.css">	
	<link rel="stylesheet" href="${ContextPath}/resources/user/css/index.css">
	<link rel="stylesheet" href="${ContextPath}/resources/user/css/categories.css">
	<link rel="stylesheet" href="${ContextPath}/resources/user/css/details.css">
	 <link rel="stylesheet" href="${ContextPath}/resources/user/css/responsive.css">
	<link href="${ContextPath}/resources/user/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link rel="stylesheet" href="${ContextPath}/resources/user/css/footer.css">
	<link rel="stylesheet" href="${ContextPath}/resources/user/css/header.css">
	<link rel="stylesheet" type="text/css" href="${ContextPath}/resources/user/css/search.css" />
	<link rel="stylesheet" type="text/css" href="${ContextPath}/resources/font-server/font.css" />
	<link rel="stylesheet" type="text/css" href="${ContextPath}/resources/user/css/slide-detail.css" />
	<link rel="stylesheet" href="${ContextPath}/resources/user/css/user_view.css">
	<link rel="stylesheet" type="text/css" href="${ContextPath}/resources/user/css/comment.css" />
	<!-- Register -->
	<link rel="stylesheet" type="text/css" href="${ContextPath}/resources/user/css/register.css">
	<!-- style for file upload -->
	<link rel="stylesheet" type="text/css" href="${ContextPath}/resources/user/css/jquery.filer.css">
	<link rel="stylesheet" type="text/css" href="${ContextPath}/resources/user/css/themes/jquery.filer-dragdropbox-theme.css">
	<link rel="stylesheet" type="text/css" href="${ContextPath}/resources/user/css/save-list.css">
	<%-- <link rel="stylesheet" type="text/css" href="${ContextPath}/resources/user/css/Main_Style_For_All_Page.css" /> --%>
	
	 <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> --> 
	<script src="${ContextPath}/resources/user/js/jquery.min.js"></script>
	<script src="${ContextPath}/resources/user/js/bootstrap.min.js"></script>
     <!--  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  -->
	
	
	
	
	<!-- Font -->
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
	 <link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>
	

	
	<!--  Cannot use because Minea overwrite it-->
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> --> 
	
	
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
	.dropdown-menu {
    position: absolute;
    top: 100%;
    left: 0;
    z-index: 1000;
    display: none;
    float: left;
    min-width: 160px;
    padding: 5px 0;
    margin: 2px 0 0;
    font-size: 14px;
    text-align: left;
    list-style: none;
    background-color: #fff;
    -webkit-background-clip: padding-box;
    background-clip: padding-box;
    border: 1px solid #ccc;
    border: 1px solid rgba(0,0,0,.15);
    border-radius: 4px;
    -webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);
    box-shadow: 0 6px 12px rgba(0,0,0,.175);
}

</style>

</head>
<body ng-app="UserApp" ng-controller="UserCtrl" data-ng-init="getDocumentByPopular()">

<%-- <jsp:include page="user/include/loading.jsp"></jsp:include> --%>
<jsp:include page="user/include/register.jsp"></jsp:include>
<jsp:include page="user/include/login.jsp"></jsp:include>
<jsp:include page="user/include/upload.jsp"></jsp:include>
<jsp:include page="user/include/save-list.jsp"></jsp:include>
				  
<header id="header">
<jsp:include page="user/include/header.jsp"></jsp:include>
</header>

<content>
<div class="container">
	<section id="recommend" ng-if="UserID!='' ||UserID!=0">
		<!-- section-title -->
		<div class="row section recommend topspace-second" data-ng-init="getDocumentByRecommended()" ng-cloak >
			<div class="popular-title">
				<h2 class="section-title"><span id="left">ឯកសារណែនាំ</span>
				<span id="right"><a href="/feature/recommend">បង្ហាញទាំងអស់</a></span></h2>
			 </div>
			 <jsp:include page="user/include/toolbar-right.jsp"></jsp:include>
			 
					
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3" ng-repeat="slide in recommend | limitTo : 8">
					      <!-- for Track user log -->
						  
					     
						  <a href="/detail/{{slide.DOC_ID}}" class="thumbnail"  ng-click="countView(slide.DOC_ID)">
						 	
							<span class="img">
							
							<img src="{{slide.THUMBNAIL_URL}}" alt="Thumbnail"> 
				

							<!-- <span class="cover"><span class="title-cover">គណិតវិទ្យា</span></span> -->
							</span>
							<span class="title">{{slide.TITLE | strLimit: 22}}</span>
							<span class="user-name">{{slide.USERS[0].USER_NAME | strLimit: 22}}</span>
							<span class="descript">{{slide.DES | strLimit: 22}}</span>
							<span class="view-count"><span>{{slide.VIEW}}</span> បានមើល</span>
							<span class="socials">
								<a href="#" alt="like" class="like">
									<span><i class="fa fa-thumbs-up" aria-hidden="true"></i></span>
								</a>
								<a href="" alt="download" class="download">
									<span><i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></span>
									</a>
									
								<a href="http://localhost:2222/detail/0B6u494K0lyadVzVXSkZjUVVWSVE" alt="share" class="share">
									<span><i class="fa fa-share-alt" aria-hidden="true"></i></span>
								</a>
								</span>
						</a>  
					</div>

					
				</div>
			
			</div> 

		</div>
	</section>
	<div class="container">
	<section id="popular">
		<!-- section-title -->
		<div class="row section popular topspace-second" data-ng-init="getDocumentByRecommended()" ng-cloak> 
			<div class="popular-title">
				<h2 class="section-title"><span id="left">ឯកសារពេញនិយម</span>
				<span id="right" ><a href="/feature/popular" >បង្ហាញទាំងអស់</a></span></h2>
			 </div>

			
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3"  ng-repeat="slide in popular | limitTo : 8">

						 <a href="/detail/{{slide.DOC_ID}}" class="thumbnail" ng-click="countView(slide.DOC_ID)">
						

							<span class="img">
							<img src="{{slide.THUMBNAIL_URL}}" alt="Thumbnail">  
							<!-- <span class="cover"><span class="title-cover">គណិតវិទ្យា</span></span> -->
							</span>
							<span class="title">{{slide.TITLE | strLimit: 22}}</span>
							<span class="user-name">{{slide.USERS[0].USER_NAME | strLimit: 22}}</span>
							<span class="descript">{{slide.DES | strLimit: 22}}</span>
							<span class="view-count"><span>{{slide.VIEW}}</span> បានមើល</span>
							<span class="socials">
								<a href="#" alt="like" class="like">
									<span><i class="fa fa-thumbs-up" aria-hidden="true"></i></span>
								</a>
								<a href="#" alt="download" class="download">
									<span><i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></span>
									</a>
								<a href="#" alt="share" class="share">
									<span><i class="fa fa-share-alt" aria-hidden="true"></i></span>
								</a>
							</span>
						</a>  
				
			 </div>
	

	</div>
	</section>
	</div>

	<div class="container">
	<section id="ឯកសារថ្មីៗ">
		<!-- section-title -->
		<div class="row section popular topspace-second" data-ng-init="getDocumentByNewPost()" ng-cloak>
				<div class="popular-title">
					<h2 class="section-title"><span id="left">ឯកសារថ្មីៗ</span>
					<span id="right"><a href="/feature/new">បង្ហាញទាំងអស់</a></span></h2>
				 </div>

				
						<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3" ng-repeat="slide in newDocument | limitTo :8">
						<a href="/detail/{{slide.DOC_ID}}" class="thumbnail" ng-click="countView(slide.DOC_ID)">
							 
							<span class="img">
							<img src="{{slide.THUMBNAIL_URL}}" alt="Thumbnail">  
						<!-- 	<span class="cover"><span class="title-cover">គណិតវិទ្យា</span></span> -->
							</span>
							<span class="title">{{slide.TITLE | strLimit: 22}}</span>
							<span class="user-name">{{slide.USERS[0].USER_NAME | strLimit: 22}}</span>
							<span class="descript">{{slide.DES | strLimit: 22}}</span>
							<span class="view-count"><span>{{slide.VIEW}}</span> បានមើល</span>
							<span class="socials">
								<a href="#" alt="like" class="like">
									<span><i class="fa fa-thumbs-up" aria-hidden="true"></i></span>
								</a>
								<a href="#" alt="download" class="download">
									<span><i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i></span>
									</a>
								<a href="#" alt="share" class="share">
									<span><i class="fa fa-share-alt" aria-hidden="true"></i></span>
								</a>
							</span>
						</a>
						</div>
		</div>
	</section>
</div>
</content>

<footer>
<jsp:include page="user/include/footer.jsp"></jsp:include>
</footer>
 <a href="#0" class="cd-top">Top</a>
<script type="text/javascript" src="${ContextPath}/resources/user/js/back-to-top.js"></script>
 <script type="text/javascript" src="${ContextPath}/resources/user/js/allkhmerslide.js"></script>	                        
<script type="text/javascript" src="${ContextPath}/resources/user/js/login.js"></script>
<script type="text/javascript" src="${ContextPath}/resources/user/angular/UserApp.js"></script>
<script type="text/javascript" src="${ContextPath}/resources/user/js/save-list.js"></script>


<!-- library jquery for file upload -->
<script src="${ContextPath}/resources/user/js/jquery-latest.min.js"></script>
<script src="${ContextPath}/resources/user/js/jquery.filer.min.js"></script>
<script src="${ContextPath}/resources/user/js/jquery-upload-file.js"></script>
<!-- Online Link -->

<!-- $(window).bind("load", function(){
	 var preloader = document.querySelector(".preloader");
	  preloader.style.opacity = 0;
	 preloader.style.display ="none";
 
}) ; -->


</body>
</html>