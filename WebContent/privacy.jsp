<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String context = request.getContextPath(); %>

<%@taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Mobile Innovation | 隱私權政策</title>
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
									<a href="<%=context %>/index.jsp"><img id="logo" src="<%=context %>/images/logo.png" alt="IC"></a>
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
						<aside class="col-md-3">
							<div class="sidebar">
								<div class="block clearfix">
									<h3 class="title">隱私權與條款</h3>
									<div class="separator"></div>
									<nav>
										<ul class="nav nav-pills nav-stacked">
											<li><a href="<%=context %>/privacy.jsp">隱私權政策</a></li>
											<li><a href="<%=context %>/service.jsp">服務條款</a></li>
										</ul>
									</nav>
								</div>
							</div>
						</aside>
						<div class="main col-md-8 col-md-offset-1">
							<h1 class="page-title">隱私權政策</h1>
							<hr>
							<p>Mobile Innovation非常重視會員的隱私權且遵循「個人資料保護法」之規定，因此制訂了隱私權保護政策，您可參考下列隱私權保護政策的內容。</p>
							<div class="panel-group" id="accordion">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
												<i class="fa fa-user-secret"></i>個人資料之安全
											</a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse in">
										<div class="panel-body">
											<p>保護會員的個人隱私是Mobile Innovation重要的經營理念，在未經會員同意之下，我們絕不會將會員的個人資料提供予任何與本購物網站服務無關之第三人。會員應妥善保密自己的網路密碼及個人資料，不要將任何個人資料，尤其是網路密碼提供給任何人。在使用完Mobile Innovation網站所提供的各項服務功能後，務必記得登出帳戶，若是與他人共享電腦或使用公共電腦，切記要關閉瀏覽器視窗。</p>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed">
												<i class="fa fa-file"></i>個人資料的蒐集、處理、利用
											</a>
										</h4>
									</div>
									<div id="collapseTwo" class="panel-collapse collapse">
										<div class="panel-body">
											<p>Mobile Innovation相關網站所取得的個人資料，都僅供Mobile Innovation於其內部、依照原來所說明的使用目的和範圍，除非事先說明、或依照相關法律規定，否則Mobile Innovation不會將資料提供給第三人、或移作其他目的使用。</p>
											<ul>
												<li><p>蒐集之目的：<br>蒐集之目的在於進行行銷業務、消費者、客戶管理與服務、網路購物及其他電子商務服務及與調查、統計與研究分析(法定特定目的項目編號為Ｏ四Ｏ、Ｏ九Ｏ、一四八、一五七)。Mobile Innovation將藉由加入會員之過程或進行交易之過程來蒐集個人資料。</p></li>
												<li><p>蒐集之個人資料類別：<br>Mobile Innovation於網站內蒐集的個人資料包括，<br>(1)&nbsp;C001辨識個人者： 如會員之姓名、地址、電話、電子郵件等資訊。<br>(2)&nbsp;C002辨識財務者： 如信用卡或金融機構帳戶資訊。<br>(3)&nbsp;C011個人描述：例如：性別、出生年月日等。<br></p></li>
												<li><p>利用期間、地區、對象及方式：<br>(1)&nbsp;期間：會員當事人要求停止使用或Mobile Innovation停止提供服務之日為止。<br>(2)&nbsp;地區：會員之個人資料將使用於台灣地區。 <br>(3)&nbsp;利用對象及方式：會員之個人資料蒐集除用於Mobile Innovation之會員管理、客戶管理之檢索查詢等功能外，亦將利用於辨識身份、金流服務、物流服務、行銷廣宣等。例示如下：<br>a.&nbsp;以會員身份使用Mobile Innovation提供之各項服務時，於頁面中自動顯示會員資訊。<br>b.&nbsp;為遂行交易行為：會員對商品或勞務為預約、下標、購買、參與贈獎等之活動或從事其他交易時，關於商品配送、勞務提供、價金給付、回覆客戶之詢問、Mobile Innovation對會員之詢問、相關售後服務及其他遂行交易所必要之業務。<br>c.&nbsp;宣傳廣告或行銷等：提供會員各種電子雜誌等資訊、透過電子郵件、郵件、電話等提供與服務有關之資訊。將|員所瀏覽之內容或廣告，依客戶之個人屬性或購買紀錄、Mobile Innovation網站之瀏覽紀錄等項目，進行個人化作業、會員使用服務之分析、新服務之開發或既有服務之改善等。針對民調、活動、留言版等之意見，或其他服務關連事項，與會員進行聯繫。<br>d.&nbsp;回覆客戶之詢問：針對會員透過電子郵件、郵件、、傳真、電話或其他任何直接間接連絡方式向Mobile Innovation所提出之詢問進行回覆。<br>e.&nbsp;其他業務附隨之事項：附隨於上述a至d.之利用目的而為Mobile Innovation提供服務所必要之使用。<br>f.&nbsp;對於各別服務提供者之資訊提供：會員對服務提供者之商品或勞務為預約、下標、購買、參加贈獎活動或申請其他交易時，Mobile Innovation於該交易所必要之範圍內，得將會員之個人資料檔案提供予服務提供者，並由服務提供者負責管理該個人資料檔案。Mobile Innovation將以規約課予服務提供者依保障會員隱私權之原則處理個人資料之義務，但無法保證服務提供者會必然遵守。詳細內容，請向各別服務提供者洽詢。<br>g.&nbsp;其他：提供個別服務時，亦可能於上述規定之目的以外，利用個人資料。此時將在該個別服務之網頁載明其要旨。<br></p></li>
												<li><p>會員就個人資料之權利：<br>Mobile Innovation所蒐集個人資料之當事人，依個人資料保護法得對Mobile Innovation行使以下權利：<br>(1)&nbsp;查詢或請求閱覽。<br>(2)&nbsp;請求製給複製本。<br>(3)&nbsp;請求補充或更正。<br>(4)&nbsp;請求停止蒐集、處理或利用。<br>(5)&nbsp;請求刪除。<br>會員如欲行使上述權利，可與Mobile Innovation客服連絡進行申請。<br></p></li>
												<li><p>請注意！如拒絕提供加入會員所需必要之資料，將可能導致無法享受完整服務或完全無法使用該項服務。</p></li>
											</ul>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed">
												<i class="fa fa-lock"></i>資料安全
											</a>
										</h4>
									</div>
									<div id="collapseThree" class="panel-collapse collapse">
										<div class="panel-body">
											<p>為保障會員的隱私及安全，Mobile Innovation會員帳號資料會用密碼保護。Mobile Innovation並盡力以合理之技術及程序，保障所有個人資料之安全。</p>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapseFour" class="collapsed">
												<i class="fa fa-info-circle"></i>個人資料查詢或更正的方式
											</a>
										</h4>
									</div>
									<div id="collapseFour" class="panel-collapse collapse">
										<div class="panel-body">
											<p>會員對於其個人資料，有查詢及閱覽、製給複製本、補充或更正、停止電腦處理及利用、刪除等需求時，可以與客服中心聯絡，Mobile Innovation將迅速進行處理。<p>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapseFive" class="collapsed">
												<i class="fa fa-google"></i>Cookie
											</a>
										</h4>
									</div>
									<div id="collapseFive" class="panel-collapse collapse">
										<div class="panel-body">
											<p>為了便利會員使用，Mobile Innovation網站會使用cookie技術，以便於提供會員所需要的服務；cookie是網站伺服器用來和會員瀏覽器進行溝通的一種技術，它可能在會員的電腦中隨機儲存字串，用以辨識區別使用者，若會員關閉cookie有可能導致無法順利登入網站或無法使用購物車等狀況。</p>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapseSix" class="collapsed">
												<i class="fa fa-paperclip"></i>隱私權保護政策修訂
											</a>
										</h4>
									</div>
									<div id="collapseSix" class="panel-collapse collapse">
										<div class="panel-body">
											<p>隨著市場環境的改變本公司將會不時修訂網站政策。會員如果對於Mobile Innovation網站隱私權聲明、或與個人資料有關之相關事項有任何疑問，可以利用電子郵件和Mobile Innovation客服中心聯絡。</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<div class="section gray-bg text-muted footer-top clearfix">
				<div class="container">
					<div class="row">
						<div class="col-md-6">
							<div class="owl-carousel clients">
								<div class="client">
									<a href="http://www.apple.com/tw/"><img src="<%=context %>/images/apple.png" alt="Apple"></a>
								</div>
								<div class="client">
									<a href="http://www.samsung.com/tw/home/"><img src="<%=context %>/images/samsung.png" alt="SAMSUNG"></a>
								</div>
								<div class="client">
									<a href="http://www.sony.com.tw/zh"><img src="<%=context %>/images/sony.png" alt="Sony"></a>
								</div>
								<div class="client">
									<a href="http://www.htc.com/tw/"><img src="<%=context %>/images/htc.png" alt="HTC"></a>
								</div>
								<div class="client">
									<a href="http://www.lg.com/tw"><img src="<%=context %>/images/lg.png" alt="LG"></a>
								</div>
								<div class="client">
									<a href="http://www.oppo.com/tw/index.html"><img src="<%=context %>/images/oppo.png" alt="OPPO"></a>
								</div>
								<div class="client">
									<a href="http://www.infocusphone.com/tw/"><img src="<%=context %>/images/infocus.png" alt="InFocus"></a>
								</div>
								<div class="client">
									<a href="https://www.asus.com/tw/"><img src="<%=context %>/images/asus.png" alt="ASUS"></a>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<blockquote class="inline">
								<p class="margin-clear">好的藝術家抄，偉大的藝術家偷，所以我們向來對偷取偉大的點子這件事，一點都不覺得可恥。</p>	
								<footer><cite title="Source Title">史提夫·賈伯斯</cite></footer>
							</blockquote>
						</div>
					</div>
				</div>
			</div>
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
									<a href="about.jsp" class="link"><span>了解更多</span></a>
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
		<script type="text/javascript" src="plugins/jquery.js"></script>
		<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="plugins/modernizr.js"></script>
		<script type="text/javascript" src="plugins/isotope/isotope.pkgd.min.js"></script>
		<script type="text/javascript" src="plugins/owl-carousel/owl.carousel.js"></script>
		<script type="text/javascript" src="plugins/magnific-popup/jquery.magnific-popup.min.js"></script>
		<script type="text/javascript" src="<%=context %>/plugins/jquery.appear.js"></script>
		<script type="text/javascript" src="<%=context %>/plugins/jquery.sharrre.js"></script>
		<script type="text/javascript" src="<%=context %>/plugins/jquery.countTo.js"></script>
		<script src="<%=context %>/plugins/jquery.parallax-1.1.3.js"></script>
		<script src="<%=context %>/plugins/jquery.validate.js"></script>
		<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
		<script type="text/javascript" src="<%=context %>/js/google.map.config.js"></script>
		<script type="text/javascript" src="<%=context %>/plugins/jquery.browser.js"></script>
		<script type="text/javascript" src="<%=context %>/plugins/SmoothScroll.js"></script>
		<script type="text/javascript" src="<%=context %>/js/template.js"></script>
	</body>
</html>