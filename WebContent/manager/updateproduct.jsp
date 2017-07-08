<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<% String context = request.getContextPath(); %>
<!DOCTYPE html>
<html>
	<head>
		<title>管理中心 - 修改商品</title>
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
								<h1 class="title">修改商品</h1>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="col-lg-12">
						<section class="box ">
							<header class="panel_header">
							</header>
							<div class="content-body">
								<div class="row">
									<div class="col-xs-12">
										<form action="<%=context %>/manager/save" method="post" enctype="multipart/form-data">
											<div class="form-body">
												<div class="form-group">
													<label class="control-label">名稱</label>
													<input class="form-control" type="text" name="name" value="${updateproduct.name }">
												</div>
												<div class="form-group">
													<label class="control-label">圖片</label>
													<label for="exampleInputFile" class="control-label">上傳圖片</label>
													<input type="file" id="exampleInputFile" name="file">
												</div>
												<div class="form-group">
													<label class="control-label">價格</label>
													<input class="form-control" type="text" name="price" value="${updateproduct.price }">
												</div>
												<div class="form-group">
													<label class="control-label">敘述</label>
													<textarea class="form-control" rows="5" name="description">${updateproduct.description }</textarea>
												</div>
												<div class="form-group">
													<label class="control-label">庫存量</label>
													<input class="form-control" type="text" name="stock" value="${updateproduct.stock }">
												</div>
											</div>
											<div class="form-footer">
												<div class="pull-right">
													<button class="btn btn-success" type="submit">新增</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</section>
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