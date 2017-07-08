<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String context = request.getContextPath(); %>

<%@taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Mobile Innovation | 搜尋商品</title>
		<meta name="description" content="">
		<meta name="author" content="鄧宇騰">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,400,700,300&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=PT+Serif' rel='stylesheet' type='text/css'>
		<link href="<%=context %>/bootstrap/css/bootstrap.css" rel="stylesheet">
		<link href="<%=context %>/fonts/font-awesome/css/font-awesome.css" rel="stylesheet">
		<link href="<%=context %>/fonts/fontello/css/fontello.css" rel="stylesheet">
		<link href="<%=context %>/plugins/magnific-popup/magnific-popup.css" rel="stylesheet">
		<link href="<%=context %>/css/animations.css" rel="stylesheet">
		<link href="<%=context %>/plugins/owl-carousel/owl.carousel.css" rel="stylesheet">
		<link href="<%=context %>/css/style.css" rel="stylesheet">
		<link href="<%=context %>/css/dark_gray.css" rel="stylesheet">
	</head>
	<body class="no-trans">
		<div class="scrollToTop"><i class="icon-up-open-big"></i></div>
		<div class="page-wrapper">
			<div class="header-top">
				<div class="container">
					<div class="row">
						<div class="col-xs-2 col-sm-6">
							<div class="header-top-first clearfix">
								<ul class="social-links clearfix hidden-xs">
									<li class="facebook"><a target="_blank" href="https://www.facebook.com/profile.php?id=100000220488515"><i class="fa fa-facebook"></i></a></li>
									<li class="twitter"><a target="_blank" href="https://twitter.com/xoxo4795946"><i class="fa fa-twitter"></i></a></li>
									<li class="googleplus"><a target="_blank" href="https://plus.google.com/u/0/105315227642321794534"><i class="fa fa-google-plus"></i></a></li>
									<li class="instagram"><a target="_blank" href="https://www.instagram.com/aab8057"><i class="fa fa-instagram"></i></a></li>
									<li class="vine"><a target="_blank" href="https://vine.co/u/1143417164066426880"><i class="fa fa-vine"></i></a></li>
								</ul>
								<div class="social-links hidden-lg hidden-md hidden-sm">
									<div class="btn-group dropdown">
										<button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="fa fa-share-alt"></i></button>
										<ul class="dropdown-menu dropdown-animation">
											<li class="facebook"><a target="_blank" href="https://www.facebook.com/profile.php?id=100000220488515"><i class="fa fa-facebook"></i></a></li>
											<li class="twitter"><a target="_blank" href="https://twitter.com/xoxo4795946"><i class="fa fa-twitter"></i></a></li>
											<li class="googleplus"><a target="_blank" href="https://plus.google.com/u/0/105315227642321794534"><i class="fa fa-google-plus"></i></a></li>
											<li class="instagram"><a target="_blank" href="https://www.instagram.com/aab8057"><i class="fa fa-instagram"></i></a></li>
											<li class="vine"><a target="_blank" href="https://vine.co/u/1143417164066426880"><i class="fa fa-vine"></i></a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xs-10 col-sm-6">
							<div id="header-top-second"  class="clearfix">
								<div class="header-top-dropdown">
									<div class="btn-group dropdown">
										<button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="fa fa-search"></i>搜尋</button>
										<ul class="dropdown-menu dropdown-menu-right dropdown-animation">
											<li>
												<form role="search" class="search-box" action="<%=context %>/from/find">
													<div class="form-group has-feedback">
														<input type="text" class="form-control" name="keyword">
														<i class="fa fa-search form-control-feedback"></i>
													</div>
												</form>
											</li>
										</ul>
									</div>
									<%
									if (session.getAttribute("user") == null) {
									%>
									<div class="btn-group dropdown">
										<button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i>登入</button>
										<ul class="dropdown-menu dropdown-menu-right dropdown-animation">
											<li>
												<form class="login-form" method="post" action="<%=context %>/from/loginaction">
													<div class="form-group has-feedback">
														<input type="text" class="form-control" placeholder="使用者名稱" name="username">
														<i class="fa fa-user form-control-feedback"></i>
													</div>
													<div class="form-group has-feedback">
														<input type="password" class="form-control" placeholder="密碼" name="password">
														<i class="fa fa-lock form-control-feedback"></i>
													</div>
													<button type="submit" class="btn btn-group btn-dark btn-sm">登入</button>
													<span>或</span>
													<button type="button" class="btn btn-group btn-default btn-sm" onclick="javascript:location.href='<%=context %>/userregister.jsp'">註冊</button>
												</form>
											</li>
										</ul>
									</div>
									<%
									} else {
									%>
									<div class="btn-group dropdown">
										<button type="button" class="btn dropdown-toggle" onclick="javascript:location.href='<%=context %>/from/loginoutaction'">${sessionScope.user.name }</button>
									</div>
									<%
									}
									%>
									<div class="btn-group dropdown">
										<button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="fa fa-shopping-cart"></i>購物車</button>
										<ul class="dropdown-menu dropdown-menu-right dropdown-animation cart">
											<li>
												<table class="table table-hover">
													<thead>
														<tr>
															<th class="quantity">數量</th>
															<th class="product">商品</th>
															<th class="amount">小計</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="item" items="${sessionScope.cart.items}">
														<tr>
															<td class="quantity">${item.key}</td>
															<td class="product">${item.value.product.name}</td>
															<td class="amount">${item.value.cost}</td>
														</tr>
														</c:forEach>
													</tbody>
												</table>
												<div class="panel-body text-right">	
												<a href="<%=context %>/from/cart_inedx!CartIndex" class="btn btn-group btn-default btn-sm">查看購物車</a>
												<a href="<%=context %>/from/order_index!index" class="btn btn-group btn-default btn-sm">結帳</a>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<header class="header fixed clearfix">
				<div class="container">
					<div class="row">
						<div class="col-md-3">
							<div class="header-left clearfix">
								<div class="logo">
									<a href="<%=context %>/index.jsp"><img id="logo" src="<%=context %>/images/logo.png" alt="Mobile Innovation"></a>
								</div>
								<div class="site-slogan">
									購物中心
								</div>
							</div>
						</div>
						<div class="col-md-9">
							<div class="header-right clearfix">
								<div class="main-navigation animated">
									<nav class="navbar navbar-default" role="navigation">
										<div class="container-fluid">
											<div class="navbar-header">
												<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
													<span class="sr-only">Toggle navigation</span>
													<span class="icon-bar"></span>
													<span class="icon-bar"></span>
													<span class="icon-bar"></span>
												</button>
											</div>
											<div class="collapse navbar-collapse" id="navbar-collapse-1">
												<ul class="nav navbar-nav navbar-right">
													<li>
														<a href="<%=context %>/index.jsp">首頁</a>
													</li>
												</ul>
											</div>
										</div>
									</nav>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
			<section class="main-container">
				<div class="container">
					<div class="row">
						<div class="main col-md-12">
							<h1 class="page-title">搜尋商品</h1>
							<div class="separator-2"></div>
							<p class="lead">搜尋您要的商品。</p>
							<div class="sorting-filters">
								<form class="form-inline" action="<%=context %>/from/find" method="post">
									<div class="form-group">
										<input type="text" class="form-control" placeholder="請輸入商品的關鍵字">
									</div>
									<div class="form-group">
										<button type="submit" class="btn btn-group btn-dark btn-sm">搜尋</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</section>
			<footer id="footer">
				<div class="footer">
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<div class="footer-content">
									<div class="logo-footer"><img id="logo-footer" src="<%=context %>/images/logo.png" alt=""></div>
									<div class="row">
										<div class="col-sm-6">
											<p>以簡單、安心、創新的服務，打造讓消費者最便利使用的平台。</p>
											<ul class="social-links circle">
												<li class="facebook"><a target="_blank" href="https://www.facebook.com/profile.php?id=100000220488515"><i class="fa fa-facebook"></i></a></li>
												<li class="twitter"><a target="_blank" href="https://twitter.com/xoxo4795946"><i class="fa fa-twitter"></i></a></li>
												<li class="googleplus"><a target="_blank" href="https://plus.google.com/u/0/105315227642321794534"><i class="fa fa-google-plus"></i></a></li>
												<li class="instagram"><a target="_blank" href="https://www.instagram.com/aab8057"><i class="fa fa-instagram"></i></a></li>
												<li class="vine"><a target="_blank" href="https://vine.co/u/1143417164066426880"><i class="fa fa-vine"></i></a></li>
											</ul>
										</div>
										<div class="col-sm-6">
											<ul class="list-icons">
												<li><i class="fa fa-map-marker pr-10"></i> 32023 桃園市中壢區中北路二OO號</li>
												<li><i class="fa fa-phone pr-10"></i> +886-3-265-9999</li>
												<li><i class="fa fa-fax pr-10"></i> +886-3-265-8888</li>
												<li><i class="fa fa-envelope-o pr-10"></i> s10344140@cycy.edu.tw</li>
											</ul>
										</div>
									</div>
									<a href="<%=context %>/about.jsp" class="link"><span>了解更多</span></a>
								</div>
							</div>
							<div class="space-bottom hidden-lg hidden-xs"></div>
							<div class="col-sm-6 col-md-2">
								<div class="footer-content">
									<h2>連結</h2>
									<nav>
										<ul class="nav nav-pills nav-stacked">
											<li><a href="https://www.cycu.edu.tw">中原大學</a></li>
											<li><a href="http://cyim.cycu.edu.tw/wSite/mp?mp=5400">資訊管理學系</a></li>
											<li><a href="https://www.facebook.com/cyimsa">系學會</a></li>
											<li><a href="https://www.facebook.com/CYCUSA">學生會</a></li>
											<li><a href="https://www.dcard.tw">Dcard</a></li>
										</ul>
									</nav>
								</div>
							</div>
							<div class="col-sm-6 col-md-3 col-md-offset-1">
								<div class="footer-content">
									<h2>信用卡付款</h2>
									<div class="box small"><i class="fa fa-cc-paypal"></i></div>
									<div class="box small"><i class="fa fa-cc-visa"></i></div>
									<div class="box small"><i class="fa fa-cc-mastercard"></i></div>
									<div class="box small"><i class="fa fa-cc-discover"></i></div>
								</div>
							</div>
						</div>
						<div class="space-bottom hidden-lg hidden-xs"></div>
					</div>
				</div>
				<div class="subfooter">
					<div class="container">
						<div class="row">
							<div class="col-md-6">
								<p>Copyright © 2016 Chung Yuan Christian University All Rights Reserved</p>
							</div>
							<div class="col-md-6">
								<nav class="navbar navbar-default" role="navigation">
									<div class="navbar-header">
										<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-2">
											<span class="sr-only">Toggle navigation</span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
										</button>
									</div>   
									<div class="collapse navbar-collapse" id="navbar-collapse-2">
										<ul class="nav navbar-nav">
											<li><a href="<%=context %>/index.jsp">首頁</a></li>
											<li><a href="<%=context %>/about.jsp">關於我們</a></li>
											<li><a href="<%=context %>/privacy.jsp">隱私權政策</a></li>
											<li><a href="<%=context %>/service.jsp">服務條款</a></li>
											<li><a href="<%=context %>/contact.jsp">聯絡我們</a></li>
										</ul>
									</div>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</footer>
		</div>
		<script type="text/javascript" src="<%=context %>/plugins/jquery.js"></script>
		<script type="text/javascript" src="<%=context %>/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="<%=context %>/plugins/modernizr.js"></script>
		<script type="text/javascript" src="<%=context %>/plugins/isotope/isotope.pkgd.min.js"></script>
		<script type="text/javascript" src="<%=context %>/plugins/owl-carousel/owl.carousel.js"></script>
		<script type="text/javascript" src="<%=context %>/plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
		<script type="text/javascript" src="<%=context %>/plugins/jquery.appear.js"></script>
		<script type="text/javascript" src="<%=context %>/plugins/jquery.sharrre.js"></script>
		<script type="text/javascript" src="<%=context %>/plugins/jquery.countTo.js"></script>
		<script src="<%=context %>/plugins/jquery.parallax-1.1.3.js"></script>
		<script src="<%=context %>/plugins/jquery.validate.js"></script>
		<script type="text/javascript" src="<%=context %>/plugins/jquery.browser.js"></script>
		<script type="text/javascript" src="<%=context %>/plugins/SmoothScroll.js"></script>
		<script type="text/javascript" src="<%=context %>/js/template.js"></script>
	</body>
</html>