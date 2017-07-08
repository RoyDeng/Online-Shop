<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<% String context = request.getContextPath(); %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="description" content="">
		<meta name="author" content="鄧宇騰">
		<title>管理中心 - 新增商品</title>
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700" rel="stylesheet">
		<link href="http://fonts.googleapis.com/css?family=Oswald:700,400" rel="stylesheet">
		<link href="<%=context %>/manager/assets/global/plugins/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<link href="<%=context %>/manager/assets/global/plugins/bower_components/fontawesome/css/font-awesome.min.css" rel="stylesheet">
		<link href="<%=context %>/manager/assets/global/plugins/bower_components/animate.css/animate.min.css" rel="stylesheet">
		<link href="<%=context %>/manager/assets/global/plugins/bower_components/bootstrap-tagsinput/dist/bootstrap-tagsinput.css" rel="stylesheet">
		<link href="<%=context %>/manager/assets/global/plugins/bower_components/jasny-bootstrap-fileinput/css/jasny-bootstrap-fileinput.min.css" rel="stylesheet">
		<link href="<%=context %>/manager/assets/global/plugins/bower_components/chosen_v1.2.0/chosen.min.css" rel="stylesheet">
		<link href="<%=context %>/manager/assets/admin/css/reset.css" rel="stylesheet">
		<link href="<%=context %>/manager/assets/admin/css/layout.css" rel="stylesheet">
		<link href="<%=context %>/manager/assets/admin/css/components.css" rel="stylesheet">
		<link href="<%=context %>/manager/assets/admin/css/plugins.css" rel="stylesheet">
		<link href="<%=context %>/manager/assets/admin/css/themes/default.theme.css" rel="stylesheet" id="theme">
		<link href="<%=context %>/manager/assets/admin/css/custom.css" rel="stylesheet">
	</head>
	<body>
		<section id="wrapper">
			<header id="header">
				<div class="header-left">
					<div class="navbar-minimize-mobile left">
						<i class="fa fa-bars"></i>
					</div>
					<div class="navbar-header">
						<a class="navbar-brand" href="dashboard.html">
							<img class="logo" src="http://img.djavaui.com/?create=175x50,81B71A?f=ffffff" alt="brand logo">
						</a>
					</div>
					<div class="navbar-minimize-mobile right">
						<i class="fa fa-cog"></i>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="header-right">
					<div class="navbar navbar-toolbar">
					</div>
				</div>
			</header>
			<aside id="sidebar-left" class="sidebar-circle">
				<ul class="sidebar-menu">
					<li>
						<a href="<%=context %>/manager/addProduct.jsp">
							<span class="icon"><i class="fa fa-desktop"></i></span>
							<span class="text">新增商品</span>
						</a>
					</li>
					<li>
						<a href="<%=context %>/manager/listproduct">
							<span class="icon"><i class="fa fa-desktop"></i></span>
							<span class="text">商品清單</span>
						</a>
					</li>
					<li>
						<a href="<%=context %>/manager/manager">
							<span class="icon"><i class="fa fa-desktop"></i></span>
							<span class="text">訂單狀態</span>
						</a>
					</li>
					<li>
						<a href="<%=context %>/from/listaction!list?page=1">
							<span class="icon"><i class="fa fa-desktop"></i></span>
							<span class="text">前往前臺</span>
						</a>
					</li>
				</ul>
			</aside>
			<section id="page-content">
				<div class="header-content">
					<h2><i class="fa fa-home"></i>Mobile Innovation<span>管理中心</span></h2>
					<div class="breadcrumb-wrapper hidden-xs">
						<span class="label">您正在：</span>
						<ol class="breadcrumb">
							<li class="active">新增商品</li>
						</ol>
					</div>
				</div>
				<div class="body-content animated fadeIn">

					<div class="row">
						<div class="col-md-6">
							<div class="panel rounded shadow">
								<div class="panel-heading">
									<div class="pull-left">
										<h3 class="panel-title">新增商品</h3>
									</div>
								</div>
								<div class="panel-body no-padding">
									<form action="<%=context %>/manager/addproduct" method="post" enctype="multipart/form-data">
										<div class="form-body">
											<div class="form-group">
												<label class="control-label">名稱</label>
												<input class="form-control" type="text" name="name">
											</div>
											<div class="form-group">
												<label class="control-label">圖片</label>
												<label for="exampleInputFile" class="control-label">上傳圖片</label>
                                                <input type="file" id="exampleInputFile" name="file">
											</div>
											<div class="form-group">
												<label class="control-label">價格</label>
												<input class="form-control" type="text" name="price">
											</div>
											<div class="form-group">
												<label class="control-label">敘述</label>
												<textarea class="form-control" rows="5" name="description"></textarea>
											</div>
											<div class="form-group">
												<label class="control-label">庫存量</label>
												<input class="form-control" type="text" name="stock">
											</div>
										</div>
										<div class="form-footer">
											<div class="pull-right">
												<button class="btn btn-danger mr-5">取消</button>
												<button class="btn btn-success" type="submit">新增</button>
											</div>
											<div class="clearfix"></div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<footer class="footer-content">
					Copyright © 2016 Chung Yuan Christian University All Rights Reserved
				</footer>
			</section>
		</section>
		<div id="back-top" class="animated pulse circle">
			<i class="fa fa-angle-up"></i>
		</div>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/jquery/dist/jquery.min.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/jquery-cookie/jquery.cookie.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/typehead.js/dist/handlebars.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/typehead.js/dist/typeahead.bundle.min.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/jquery-nicescroll/jquery.nicescroll.min.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/jquery.sparkline.min/index.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/jquery-easing-original/jquery.easing.1.3.min.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/ionsound/js/ion.sound.min.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/bootbox/bootbox.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/jasny-bootstrap-fileinput/js/jasny-bootstrap.fileinput.min.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/holderjs/holder.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/bootstrap-maxlength/bootstrap-maxlength.min.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/jquery-autosize/jquery.autosize.min.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/chosen_v1.2.0/chosen.jquery.min.js"></script>
		<script src="<%=context %>/manager/assets/admin/js/apps.js"></script>
		<script src="<%=context %>/manager/assets/admin/js/pages/blankon.form.element.js"></script>
		<script src="<%=context %>/manager/assets/admin/js/demo.js"></script>
		<script>
			(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
				(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
					m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			})(window,document,'script','//www.google-analytics.com/analytics.js','ga');

			ga('create', 'UA-55892530-1', 'auto');
			ga('send', 'pageview');

		</script>
	</body>
</html>