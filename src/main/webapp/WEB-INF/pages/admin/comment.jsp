<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="MainApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin | Comments</title>
<%@include file="include/admin-link.jsp"%>
<style>
#PAGINATION{
	text-align:center;
}
</style>
</head>
<body ng-cloak class="skin-blue sidebar-mini">
	<div class="wrapper">
		<%@include file="include/admin-header.jsp"%>
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
		<ul class="sidebar-menu">
			<li class="header">MAIN NAVIGATION</li>
				<li class="treeview">
					<a href="dashboard">
						<i class="fa fa-dashboard"></i>
						<span>Dashboard</span>
					</a>
				</li>
			<li><a href="slide"><i class="fa fa-slideshare"></i> <span>Slides</span></a></li>

			<li><a href="main-category"> <i class="fa fa-list"></i> <span>Categories</span></a></li>
			
			<li><a href="user"><i class="fa fa-user"></i> <span>Users</span></a></li>

			<li class="active"><a href="comment"><i
					class="fa fa-comment"></i> <span>Comments</span></a></li>

			<li><a href="savelist"> <i class="fa fa-list"></i>
					<span>Savelist</span> 
			</a></li>

			<li><a href="feedback"> <i class="fa fa-th"></i> <span>Feeds
						Back</span> 
			</a></li>
			<li><a href="report"> <i class="fa fa-exclamation-circle"></i>
					<span>Report</span>
			</a></li>
		</ul>
		</section> <!-- /.sidebar --> </aside>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>
				Comments Tables <small>advanced tables</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active"><a href="#">Comment</a></li>
			</ol>
			</section>

			<!-- Main content -->
			<section class="content" ng-controller="CommentCtrl">
			<div class="row">
				<div class="col-xs-12">
					<div class="box">
						<div class="box-header">
							<h3 class="box-title">Comments Table</h3>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<table id="example1" class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>ID</th>
										<th>Date</th>
										<th>Desciption</th>
										<th>User</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<tr ng-repeat="c in comment" ng-init="rowNumber= 10">
										<td>{{($index + ((filter.page - 1) * rowNumber)) + 1}}</td>
										<td>{{c.CREATED_DATE}}</td>
										<td>{{c.REMARK}}</td>
										<td>{{c.USER_ID}}</td>
										<td>
											<button type="button" class="btn btn-primary btn-sm">
												<i class="fa fa-reply"></i>
											</button>
											<button type="button" class="btn btn-danger btn-sm"
															ng-click="alertDelete(c.COMMENT_ID)">
												<i class="fa fa-edit"></i>
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
	<%@include file="include/admin-script.jsp"%>
</body>
</html>