<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String context = request.getContextPath(); %>

<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="description" content="">
		<meta name="author" content="鄧宇騰">
		<title>管理中心 - 商品清單</title>
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700" rel="stylesheet">
		<link href="http://fonts.googleapis.com/css?family=Oswald:700,400" rel="stylesheet">
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700" rel="stylesheet">
		<link href="http://fonts.googleapis.com/css?family=Oswald:700,400" rel="stylesheet">
		<link href="<%=context %>/manager/assets/global/plugins/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
		<link href="<%=context %>/manager/assets/global/plugins/bower_components/fontawesome/css/font-awesome.min.css" rel="stylesheet">
		<link href="<%=context %>/manager/assets/global/plugins/bower_components/animate.css/animate.min.css" rel="stylesheet">
		<link href="<%=context %>/manager/assets/global/plugins/bower_components/dropzone/downloads/css/dropzone.css" rel="stylesheet">
		<link href="<%=context %>/manager/assets/global/plugins/bower_components/jquery.gritter/css/jquery.gritter.css" rel="stylesheet">
		<link href="<%=context %>/manager/assets/global/plugins/bower_components/simple-line-icons/css/simple-line-icons.css" rel="stylesheet">
		<link href="<%=context %>/manager/assets/admin/css/reset.css" rel="stylesheet">
		<link href="<%=context %>/manager/assets/admin/css/layout.css" rel="stylesheet">
		<link href="<%=context %>/manager/assets/admin/css/components.css" rel="stylesheet">
		<link href="<%=context %>/manager/assets/admin/css/plugins.css" rel="stylesheet">
		<link href="<%=context %>/manager/assets/admin/css/themes/default.theme.css" rel="stylesheet" id="theme">
		<link href="<%=context %>/manager/assets/admin/css/custom.css" rel="stylesheet">
	</head>
	<body class="page-session page-sound page-header-fixed page-sidebar-fixed demo-dashboard-session">
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
							<li class="active">商品清單</li>
						</ol>
					</div>
				</div>
				<div class="body-content animated fadeIn">
					<div class="row">
						<div class="col-md-12">
							<div class="panel">
								<div class="panel-heading">
									<div class="pull-left">
										<h3 class="panel-title">商品清單</h3>
									</div>
									<div class="clearfix"></div>
								</div>
								<div class="panel-body no-padding">
									<div class="table-responsive" style="margin-top: -1px;">
										<table class="table table-default">
											<thead>
											<tr>
												<th>圖片</th>
												<th>商品</th>
												<th>價格</th>
												<th>敘述</th>
												<th class="text-center" style="width: 12%;">操作</th>
											</tr>
											</thead>
											<tbody>
											<s:iterator value ="productlist" var="p">
											<tr class="border-danger">
												<td>
													<img src="<%=context %>/UploadImages/${p.imageSrc }.jpg" alt="<s:property value="#p.name"/>">
												</td>
												<td><s:property value="#p.name"/></td>
												<td><s:property value="#p.price"/></td>
												<td><s:property value="#p.description"/></td>
												<td class="text-center">
													<a href="<%=context %>/manager/update?productId=<s:property value='#p.id'/>" class="btn btn-primary btn-xs" data-toggle="tooltip" data-placement="top" data-original-title="修改"><i class="fa fa-pencil"></i></a>
													<a href="<%=context %>/manager/delete?productId=<s:property value='#p.id'/>" class="btn btn-danger btn-xs" data-toggle="tooltip" data-placement="top" data-original-title="刪除"><i class="fa fa-times"></i></a>
												</td>
											</tr>
											</s:iterator>
											</tbody>
										</table>
									</div>
									<ul class="pagination">
										<s:set name="page" value="#request['page']" />
										<s:set name="maxpage" value="#request['maxpage']" />
										<s:if test="#page >1 "><li><a href="<%=context %>/manager/listproduct?page=1">第一頁</a></li></s:if>
										<s:if test="#page >1 "><li><a href="<%=context %>/manager/listproduct?page=${page-1}">上一頁</a></li></s:if>
										<s:if test="#page < #maxpage"><li><a href="<%=context %>/manager/listproduct?page=${page + 1}">下一頁</a></li></s:if>
										<s:if test="#page < #maxpage"><li><a href="<%=context %>/manager/listproduct?page=${maxpage}">最後一頁</a></li></s:if>
									</ul>
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
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/bootstrap-session-timeout/dist/bootstrap-session-timeout.min.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/raphael/raphael-min.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/flot/jquery.flot.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/flot/jquery.flot.spline.min.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/flot/jquery.flot.categories.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/flot/jquery.flot.tooltip.min.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/flot/jquery.flot.resize.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/flot/jquery.flot.pie.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/morrisjs/morris.min.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/jquery.gritter/js/jquery.gritter.min.js"></script>
		<script src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/gmap3/dist/gmap3.min.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/waypoints/lib/jquery.waypoints.min.js"></script>
		<script src="<%=context %>/manager/assets/global/plugins/bower_components/counter-up/jquery.counterup.min.js"></script>
		<script src="<%=context %>/manager/assets/admin/js/apps.js"></script>
		<script src="<%=context %>/manager/assets/admin/js/pages/blankon.dashboard.ecommerce.js"></script>
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