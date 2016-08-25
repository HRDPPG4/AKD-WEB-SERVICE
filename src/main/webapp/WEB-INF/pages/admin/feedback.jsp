<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="MainApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin | Feedback</title>
<%@include file="include/admin-link.jsp"%>

<script	src="${pageContext.request.contextPath}/resources/admin/angular/angular.min.js"></script>
<script	src="${pageContext.request.contextPath}/resources/admin/angular/AdminApp.js"></script>
<style>
#PAGINATION{
	text-align:center;
}
</style>
</head>
<body class="skin-blue sidebar-mini">
	<div class="wrapper">
		<%@include file="include/admin-header.jsp"%>
		<%-- <%@include file="../include/navigation.jsp" %> --%>
		<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar"> <!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img
					src="${pageContext.request.contextPath}/resources/admin/img/avatar.png"
					class="img-circle" alt="User Image">
			</div>
			<div class="pull-left info">
				<p>ADMIN</p>
				<p>BUNHONG KIM</p>

			</div>
		</div>
		<!-- search form -->
		<form action="#" method="get" class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control"
					placeholder="Search..."> <span class="input-group-btn">
					<button type="submit" name="search" id="search-btn"
						class="btn btn-flat">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</div>
		</form>
		<!-- /.search form --> <!-- sidebar menu: : style can be found in sidebar.less -->
		<ul class="sidebar-menu">
			<li class="header">MAIN NAVIGATION</li>
			<li class="treeview"><a href="dashboard"> <i
					class="fa fa-dashboard"></i> <span>Dashboard</span>
			</a></li>

			<li><a href="slide"><i class="fa fa-slideshare"></i> <span>Slides</span></a></li>

			<li><a href="main-category"> <i class="fa fa-list"></i> <span>Categories</span></a></li>
			
			<li><a href="user"><i class="fa fa-user"></i> <span>Users</span></a></li>

			<li><a href="comment"><i class="fa fa-comment"></i> <span>Comments</span>
					</a></li>

			<li><a href="savelist"> <i class="fa fa-list"></i> <span>Savelist</span>
					
			</a></li>

			<li class="active"><a href="feedback"> <i class="fa fa-th"></i>
					<span>Feeds Back</span> 
			</a></li>

			<li><a href="report"> <i class="fa fa-exclamation-circle"></i>
					<span>Report</span> 
			</a></li>
		</ul>
		</section> <!-- /.sidebar --> </aside>
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>
				Feedback Data <small>advanced tables</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active"><a href="#">Feedback</a></li>
			</ol>
			</section>

			<!-- Main content -->
			<section class="content" ng-controller="FeedbackCtrl">
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Feedbacks Table</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<table id="example1" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>ID</th>
										<th>Date</th>
										<th>Desciption</th>
										<th>Status</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<tr ng-repeat="f in feedback">
										<td>{{f.FEEDBACK_ID}}</td>
										<td>{{f.CREATE_DATE}}</td>
										<td>{{f.DES}}</td>
										<td>{{f.STATUS}}</td>
										<td>
											<button type="button" class="btn btn-primary btn-sm">
												<i class="fa fa-edit"></i>
											</button>
											<button type="button" class="btn btn-danger btn-sm">
												<i class="fa fa-eraser"></i>
											</button>
										</td>
									</tr>
								</tbody>
							</table>
							<div id="PAGINATION"></div>
						</div>
						<!-- /.box-body -->
					</div>
					<!-- /.box -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row --> </section>
			<!-- /.content -->
		</div>


	</div>
	<script src="/resources/admin/js/jquery.bootpage.min.js"></script>

</body>
</html>