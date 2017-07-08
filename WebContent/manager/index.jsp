<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String context = request.getContextPath(); %>
<!DOCTYPE html>
<html>
	<head>
		<title>管理中心</title>
		<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<link href="<%=context %>/manager/assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" media="screen"/>
		<link href="<%=context %>/manager/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
		<link href="<%=context %>/manager/assets/plugins/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
		<link href="<%=context %>/manager/assets/fonts/font-awesome/css/font-awesome.css" rel="stylesheet" type="text/css"/>
		<link href="<%=context %>/manager/assets/css/animate.min.css') }}" rel="stylesheet" type="text/css"/>
		<link href="<%=context %>/manager/assets/plugins/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" type="text/css"/>
		<link href="<%=context %>/manager/assets/plugins/jvectormap/jquery-jvectormap-2.0.1.css" rel="stylesheet" type="text/css" media="screen"/>
		<link href="<%=context %>/manager/assets/css/style.css') }}" rel="stylesheet" type="text/css"/>
		<link href="<%=context %>/manager/assets/css/responsive.css') }}" rel="stylesheet" type="text/css"/>
		<link href="<%=context %>/manager/assets/plugins/icheck/skins/all.css" rel="stylesheet" type="text/css" media="screen"/>
		<link href="<%=context %>/manager/assets/plugins/datatables/css/jquery.dataTables.css" rel="stylesheet" type="text/css" media="screen"/>
		<link href="<%=context %>/manager/assets/plugins/datatables/extensions/TableTools/css/dataTables.tableTools.min.css" rel="stylesheet" type="text/css" media="screen"/>
		<link href="<%=context %>/manager/assets/plugins/datatables/extensions/Responsive/css/dataTables.responsive.css" rel="stylesheet" type="text/css" media="screen"/>
		<link href="<%=context %>/manager/assets/plugins/datatables/extensions/Responsive/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet" type="text/css" media="screen"/>
		<link href="<%=context %>/manager/assets/plugins/datatables/extensions/Buttons/css/buttons.dataTables.min.css" rel="stylesheet" type="text/css" media="screen"/>
		<link href="<%=context %>/manager/assets/plugins/icheck/skins/minimal/minimal.css" rel="stylesheet" type="text/css" media="screen"/>
	</head>
	<body>
		<div class="page-container row-fluid container-fluid">
			<div class="page-topbar ">
				<div class="logo-area"></div>
				<div class="quick-area">
					<div class="pull-left">
						<ul class="info-menu left-links list-inline list-unstyled">
							<li class="sidebar-toggle-wrap">
								<a href="#" data-toggle="sidebar" class="sidebar_toggle">
									<i class="fa fa-bars"></i>
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="page-sidebar fixedscroll">
				<div class="page-sidebar-wrapper" id="main-menu-wrapper">
					<ul class='wraplist'>
						<li>
							<a href="<%=context %>/manager/addProduct.jsp">
								<i class="fa fa-desktop"></i>
								<span class="title">新增商品</span>
							</a>
						</li>
						<li>
							<a href="<%=context %>/manager/listproduct">
								<i class="fa fa-desktop"></i>
								<span class="title">商品清單</span>
							</a>
						</li>
						<li>
							<a href="<%=context %>/manager/manager">
								<i class="fa fa-desktop"></i>
								<span class="title">訂單狀態</span>
							</a>
						</li>
						<li>
							<a href="<%=context %>/from/listaction!list?page=1">
								<i class="fa fa-desktop"></i>
								<span class="title">前往前臺</span>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<section id="main-content">
				<section class="wrapper main-wrapper row">
					<div class="col-xs-12">
						<div class="page-title">
							<div class="pull-left">
								<h1 class="title">管理中心</h1>
							</div>
						</div>
					</div>
				</section>
			</section>
			<script src="<%=context %>/manager/assets/js/jquery-1.11.2.min.js" type="text/javascript"></script> 
			<script src="<%=context %>/manager/assets/js/jquery.easing.min.js" type="text/javascript"></script> 
			<script src="<%=context %>/manager/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script> 
			<script src="<%=context %>/manager/assets/plugins/pace/pace.min.js" type="text/javascript"></script>  
			<script src="<%=context %>/manager/assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js" type="text/javascript"></script> 
			<script src="<%=context %>/manager/assets/plugins/viewport/viewportchecker.js" type="text/javascript"></script>  
			<script src="<%=context %>/manager/assets/plugins/easypiechart/jquery.easypiechart.min.js" type="text/javascript"></script>
			<script src="<%=context %>/manager/assets/plugins/jquery-knob/jquery.knob.min.js" type="text/javascript"></script>
			<script src="<%=context %>/manager/assets/js/chart-easypie.js" type="text/javascript"></script>
			<script src="<%=context %>/manager/assets/js/chart-knobs.js" type="text/javascript"></script>
			<script src="<%=context %>/manager/assets/plugins/datatables/js/jquery.dataTables.min.js" type="text/javascript"></script>
			<script src="<%=context %>/manager/assets/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js" type="text/javascript"></script>
			<script src="<%=context %>/manager/assets/plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js" type="text/javascript"></script>
			<script src="<%=context %>/manager/assets/plugins/datatables/extensions/Responsive/bootstrap/3/dataTables.bootstrap.js" type="text/javascript"></script>
			<script src="<%=context %>/manager/assets/plugins/datatables/extensions/Buttons/js/dataTables.buttons.min.js" type="text/javascript"></script>
			<script src="<%=context %>/manager/assets/plugins/datatables/extensions/Buttons/js/buttons.print.min.js" type="text/javascript"></script>
			<script src="<%=context %>/manager/assets/plugins/icheck/icheck.min.js" type="text/javascript"></script>
			<script src="<%=context %>/manager/assets/js/scripts.js" type="text/javascript"></script>
		</div>
	</body>
</html>

<!DOCTYPE html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="description" content="">
		<meta name="author" content="鄧宇騰">
		<title>管理中心</title>
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
							<li class="active">管理中心</li>
						</ol>
					</div>
				</div>
				<div class="body-content animated fadeIn">
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