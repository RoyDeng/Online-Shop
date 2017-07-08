<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String context = request.getContextPath(); %>

<%@taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Mobile Innovation | 服務條款</title>
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
							<h1 class="page-title">服務條款</h1>
							<hr>
							<div class="panel-group" id="accordion">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
												<i class="fa fa-book"></i>認知與接受條款
											</a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse in">
										<div class="panel-body">
											<p>1.Mobile Innovation數位科技股份有限公司(以下簡稱「Mobile Innovation」)係依據本服務條款提供Mobile Innovation（http://www.books.com.tw）服務 (以下簡稱「本服務」)。當會員完成Mobile Innovation之會員註冊手續、或開始使用本服務時，即表示已閱讀、瞭解並同意接受本服務條款之所有內容，並完全接受本服務現有與未來衍生的服務項目及內容。Mobile Innovation公司有權於任何時間修改或變更本服務條款之內容，修改後的服務條款內容將公佈網站上，Mobile Innovation將不會個別通知會員，建議會員隨時注意該等修改或變更。會員於任何修改或變更後繼續使用本服務時，視為會員已閱讀、瞭解並同意接受該等修改或變更。若不同意上述的服務條款修訂或更新方式，或不接受本服務條款的其他任一約定，會員應立即停止使用本服務。</p>
											<p>2.若會員為未滿二十歲之未成年人，應於會員的家長（或監護人）閱讀、瞭解並同意本約定書之所有內容及其後修改變更後，方得註冊為會員、使用或繼續使用本服務。當會員使用或繼續使用Mobile Innovation時，即推定會員的家長（或監護人）已閱讀、瞭解並同意接受本約定書之所有內容及其後修改變更。</p>
											<p>3.會員及Mobile Innovation雙方同意使用本服務之所有內容包括意思表示等，以電子文件作為表示方式。</p>
											<p>4.為了確保會員之個人資料、隱私及消費者權益之保護，於交易過程中將使用會員之個人資料，謹依個人資料保護法第8條規定告知以下事項：</p>
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
											<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed">
												<i class="fa fa-user"></i>會員的註冊義務
											</a>
										</h4>
									</div>
									<div id="collapseTwo" class="panel-collapse collapse">
										<div class="panel-body">
											<p>為了能使用本服務，會員同意以下事項：</p>
											<ul>
												<li>依本服務註冊表之提示提供會員本人正確、最新的資料，且不得以第三人之名義註冊為會員。每位會員僅能註冊登錄一個帳號，不可重覆註冊登錄。</li>
												<li>即時維持並更新會員個人資料，確保其正確性，以獲取最佳之服務。 </li>
												<li>若會員提供任何錯誤或不實的資料、或未按指示提供資料、或欠缺必要之資料、或有重覆註冊帳號等情事時，Mobile Innovation有權不經事先通知，逕行暫停或終止會員的帳號，並拒絕會員使用本服務之全部或一部。</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" class="collapsed">
												<i class="fa fa-user-secret"></i>Mobile Innovation隱私權政策
											</a>
										</h4>
									</div>
									<div id="collapseThree" class="panel-collapse collapse">
										<div class="panel-body">
											<p>關於會員的註冊以及其他特定資料依Mobile Innovation「<a href="<%=context %>/privacy.jsp">隱私權政策</a>」受到保護與規範。</p>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapseFour" class="collapsed">
												<i class="fa fa-lock"></i>會員帳號、密碼及安全
											</a>
										</h4>
									</div>
									<div id="collapseFour" class="panel-collapse collapse">
										<div class="panel-body">
											<p>1.完成本服務的登記程序之後，會員將取得一個特定之密碼及會員帳號，維持密碼及帳號之機密安全，是會員的責任。任何依照規定方法輸入會員帳號及密碼與登入資料一致時，無論是否由本人親自輸入，均將推定為會員本人所使用，利用該密碼及帳號所進行的一切行動，會員本人應負完全責任。</p>
											<p>2.會員同意以下事項：</p>
											<ul>
												<li>會員的密碼或帳號遭到盜用或有其他任何安全問題發生時，會員將立即通知Mobile Innovation</li>
												<li>每次連線完畢，均結束會員的帳號使用。</li>
												<li>會員的帳號、密碼及會員權益均僅供會員個人使用及享有，不得轉借、轉讓他人或與他人合用。</li>
												<li>帳號及密碼遭盜用、不當使用或其他Mobile Innovation無法辯識是否為本人親自使用之情況時，對此所致之損害，除證明係因可歸責於Mobile Innovation之事由所致，Mobile Innovation將不負任何責任。</li>
												<li>Mobile Innovation若知悉會員之帳號密碼確係遭他人冒用時，將立即暫停該帳號之使用(含該帳號所生交易之處理)。</li>
												<li>當會員同意使用Facebook帳號登入使用本服務時，該Facebook帳號之密碼是由Facebook網站所處理，Mobile Innovation並不會接觸到該密碼，而且每一個Facebook帳號只能綁定一個Mobile Innovation會員帳號進行登入，第一次綁定後即不能再予修改。</li>
												<li>就Mobile Innovation而言，經由登入Facebook帳號及密碼而登入使用本服務時，該登入的帳號即代表會員本人，使用者於使用本服務之任何行為，均視為會員本人之行為，並需遵循Mobile Innovation會員條款之各項約定。會員必須妥善設定、維護及保管自己之Facebook帳號及密碼，包含但不限使用本服務結束時應適時登出本服務之網站並同時登出Facebook帳號。</li>
												<li>如果會員洩漏自己的個人資料、密碼或付款資料，並使得第三人有使用的機會時，會員必須就第三人的行為負全部責任。Mobile Innovation並可隨時暫停或終止提供本項使用Facebook帳號登入使用本服務之措施。</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapseFive" class="collapsed">
												<i class="fa fa-child"></i>兒童及青少年之保護
											</a>
										</h4>
									</div>
									<div id="collapseFive" class="panel-collapse collapse">
										<div class="panel-body">
											<p>為確保兒童及青少年使用網路的安全，並避免隱私權受到侵犯，家長（或監護人）應盡到下列義務： 未滿十二歲之兒童使用本服務時時，應全程在旁陪伴，十二歲以上未滿十八歲之青少年使用本服務前亦應斟酌是否給予同意。</p>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapseSix" class="collapsed">
												<i class="fa fa-paperclip"></i>使用者的守法義務及承諾
											</a>
										</h4>
									</div>
									<div id="collapseSix" class="panel-collapse collapse">
										<div class="panel-body">
											<p>會員承諾絕不為任何非法目的或以任何非法方式使用本服務，並承諾遵守中華民國相關法規及一切使用網際網路之國際慣例。會員若係中華民國以外之使用者，並同意遵守所屬國家或地域之法令。會員同意並保證不得利用本服務從事侵害他人權益或違法之行為，包括但不限於：</p>
											<ul>
												<li>公布或傳送任何誹謗、侮辱、具威脅性、攻擊性、不雅、猥褻、不實、違反公共秩序或善良風俗或其他不法之文字、圖片或任何形式的檔案</li>
												<li>侵害或毀損Mobile Innovation或他人名譽、隱私權、營業秘密、商標權、著作權、專利權、其他智慧財產權及其他權利</li>
												<li>違反依法律或契約所應負之保密義務</li>
												<li>冒用他人名義使用本服務</li>
												<li>傳輸或散佈電腦病毒</li>
												<li>從事未經Mobile Innovation事前授權的商業行為</li>
												<li>刊載、傳輸、發送垃圾郵件、連鎖信、違法或未經Mobile Innovation許可之多層次傳銷訊息及廣告等；或儲存任何侵害他人智慧財產權或違反法令之資料</li>
												<li>對本服務其他用戶或第三人產生困擾、不悅或違反一般網路禮節致生反感之行為</li>
												<li>其他不符本服務所提供的使用目的之行為或Mobile Innovation有正當理由認為不適當之行為</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" class="collapsed">
												<i class="fa fa-newspaper-o"></i>服務內容之變更與電子報及EDM發送
											</a>
										</h4>
									</div>
									<div id="collapseSeven" class="panel-collapse collapse">
										<div class="panel-body">
											<p>1.會員同意Mobile Innovation所提供本服務之範圍，Mobile Innovation均得視業務需要及實際情形，增減、變更或終止相關服務的項目或內容，且無需個別通知會員。<br>2.會員同意Mobile Innovation得依實際執行情形，增加、修改或終止相關活動，並選擇最適方式告知會員。<br>3.會員同意Mobile Innovation得不定期發送電子報或商品訊息(EDM)至會員所登錄的電子信箱帳號。當會員收到訊息後表示拒絕接受行銷時，Mobile Innovation將停止繼續發送行銷訊息。<br></p>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapseEight" class="collapsed">
												<i class="fa fa-times-circle"></i>服務之停止、中斷
											</a>
										</h4>
									</div>
									<div id="collapseEight" class="panel-collapse collapse">
										<div class="panel-body">
											<p>Mobile Innovation將依一般合理之技術及方式，維持系統及服務之正常運作。但於以下各項情況時，Mobile Innovation有權可以停止、中斷提供本服務：</p>
											<ul>
												<li>Mobile Innovation網站電子通信設備進行必要之保養及施工時</li>
												<li>發生突發性之電子通信設備故障時</li>
												<li>Mobile Innovation網站申請之電子通信服務被停止，無法提供服務時</li>
												<li>由於天災等不可抗力之因素或其他不可歸責於Mobile Innovation致使Mobile Innovation網站無法提供服務時</li>
											</ul>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapseNine" class="collapsed">
												<i class="fa fa-money"></i>交易行為
											</a>
										</h4>
									</div>
									<div id="collapseNine" class="panel-collapse collapse">
										<div class="panel-body">
											<p>1.會員使用本服務進行交易時，應依據Mobile Innovation所提供之確認商品數量及價格機制進行。<br>2.會員同意使用本服務訂購產品時，於Mobile Innovation通知確認交易成立前，Mobile Innovation仍保有不接受訂單或取消出貨之權利。會員向Mobile Innovation發出訂購通知後，系統將自動發出接受通知，但此通知並非訂單確認通知，關於交易成立與否Mobile Innovation將另行告知。若因訂單內容之標的商品或服務，其交易條件(包括但不限於規格、內容說明、圖片、)有誤時，Mobile Innovation仍得於下單後二工作日內拒絕該筆訂單。<br>3.會員若於使用本服務訂購產品後倘任意退換貨、取消訂單、或有任何Mobile Innovation認為不適當而造成Mobile Innovation作業上之困擾或損害之行為，Mobile Innovation將可視情況採取拒絕交易、暫停取消7-11或客樂得配送付款方式，或永久取消會員資格辦理。若會員訂購之產品若屬於以下情形：（１）預購類商品（２）商品頁顯示無庫存（３）須向供應商調貨（４）轉由廠商出貨，因商品交易特性之故，倘商品缺絕、或廠商因故無法順利供貨導致訂單無法成立時，Mobile Innovation將以最適方式(以電子郵件為主，再輔以電話、郵遞或傳真等)告知。<br>4.會員使用本服務進行交易時，得依照消費者保護法之規定行使權利。因會員之交易行為而對本服務條款產生疑義時，應為有利於消費者之解釋。<br></p>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapseTen" class="collapsed">
												<i class="fa fa-exclamation-triangle"></i>責任之限制與排除
											</a>
										</h4>
									</div>
									<div id="collapseTen" class="panel-collapse collapse">
										<div class="panel-body">
											<p>1.本服務所提供之各項功能，均依該功能當時之現況提供使用，Mobile Innovation對於其效能、速度、完整性、可靠性、安全性、正確性等，皆不負擔任何明示或默示之擔保責任。<br>2.Mobile Innovation並不保證本服務之網頁、伺服器、網域等所傳送的電子郵件或其內容不會含有電腦病毒等有害物；亦不保證郵件、檔案或資料之傳輸儲存均正確無誤不會斷線和出錯等，因各該郵件、檔案或資料傳送或儲存失敗、遺失或錯誤等所致之損害，Mobile Innovation不負賠償責任。<br></p>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapseEleven" class="collapsed">
												<i class="fa fa-key"></i>智慧財產權的保護
											</a>
										</h4>
									</div>
									<div id="collapseEleven" class="panel-collapse collapse">
										<div class="panel-body">
											<p>1.Mobile Innovation所使用之軟體或程式、網站上所有內容，包括但不限於著作、圖片、檔案、資訊、資料、網站架構、網站畫面的安排、網頁設計，均由Mobile Innovation或其他權利人依法擁有其智慧財產權，包括但不限於商標權、專利權、著作權、營業秘密與專有技術等。任何人不得逕自使用、修改、重製、公開播送、改作、散布、發行、公開發表、進行還原工程、解編或反向組譯。若會員欲引用或轉載前述軟體、程式或網站內容，必須依法取得Mobile Innovation或其他權利人的事前書面同意。尊重智慧財產權是會員應盡的義務，如有違反，會員應對Mobile Innovation負損害賠償責任（包括但不限於訴訟費用及律師費用等）。<br>2.在尊重他人智慧財產權之原則下，會員同意在使用Mobile Innovation之服務時，不作侵害他人智慧財產權之行為。<br>3.若會員有涉及侵權之情事，Mobile Innovation可暫停全部或部份之服務，或逕自以取消會員帳號之方式處理。<br></p>
											<p>4.若有發現智慧財產權遭侵害之情事，請將所遭侵權之情形及聯絡方式，並附具真實陳述及擁有合法智慧財產權之聲明，以下列方式聯絡Mobile Innovation：以電子郵件(E-mail)寄送至： <a href="mailto:xoxo4795946@yahoo.com.tw">xoxo4795946@yahoo.com.tw</a><br>(請注意！此為限定用途之信箱，非關侵權事項通知之信件寄送至此將不獲受理。)</p>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwelve" class="collapsed">
												<i class="fa fa-info-circle"></i>會員對Mobile Innovation之授權
											</a>
										</h4>
									</div>
									<div id="collapseTwelve" class="panel-collapse collapse">
										<div class="panel-body">
											<p>對於會員上載、傳送、輸入或提供之資料，會員同意Mobile Innovation網站得於合理之範圍內蒐集、處理、保存、傳遞及使用該等資料，以提供使用者其他資訊或服務、或作成會員統計資料、或進行關於網路行為之調查或研究，或為任何之合法使用。 若會員無合法權利得授權他人使用、修改、重製、公開播送、改作、散布、發行、公開發表某資料，並將前述權利轉授權第三人，請勿擅自將該資料上載、傳送、輸入或提供至Mobile Innovation。任何資料一經會員上載、傳送、輸入或提供至Mobile Innovation時，視為會員已允許Mobile Innovation無條件使用、修改、重製、公開播送、改作、散布、發行、公開發表該等資料，並得將前述權利轉授權他人，會員對此絕無異議。會員並應保證Mobile Innovation使用、修改、重製、公開播送、改作、散布、發行、公開發表、轉授權該等資料，不致侵害任何第三人之智慧財產權，否則應對Mobile Innovation負損害賠償責任（包括但不限於訴訟費用及律師費用等）。</p>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapseThirteen" class="collapsed">
												<i class="fa fa-check-circle"></i>特別授權事項
											</a>
										</h4>
									</div>
									<div id="collapseThirteen" class="panel-collapse collapse">
										<div class="panel-body">
											<p>因使用本服務所提供之網路交易或活動，可能須透過宅配或貨運業者始能完成貨品(或贈品等)之配送或取回，因此，會員同意並授權Mobile Innovation得視該次網路交易或活動之需求及目的，將由會員所提供且為配送所必要之個人資料(如收件人姓名、配送地址、連絡電話等)，提供予宅配貨運業者及相關配合之廠商，以利完成該次貨品(或贈品等)之配送、取回。</p>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapseFourteen" class="collapsed">
												<i class="fa fa-ban"></i>拒絕或終止會員的使用
											</a>
										</h4>
									</div>
									<div id="collapseFourteen" class="panel-collapse collapse">
										<div class="panel-body">
											<p>會員同意Mobile Innovation得基於維護交易安全之考量，因任何理由，包含但不限於缺乏使用，或違反本服務條款的明文規定及精神，終止會員的密碼、帳號（或其任何部分）或本服務（或其任何部分）之使用，或將本服務內任何「會員內容」加以移除並刪除。此外，會員同意若本服務（或其任何部分）之使用被終止，Mobile Innovation對會員或任何第三人均不承擔責任。</p>
										</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion" href="#collapseFifteen" class="collapsed">
												<i class="fa fa-balance-scale"></i>準據法與管轄法院
											</a>
										</h4>
									</div>
									<div id="collapseFifteen" class="panel-collapse collapse">
										<div class="panel-body">
											<p>本服務條款之解釋與適用，以及與本服務條款有關或會員與Mobile Innovation間因交易行為而產生之爭議或糾紛，應依照中華民國法律予以處理，並以台灣台北地方法院為第一審管轄法院，但若法律對於管轄法院另有強制規定者，仍應依其規定。</p>
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
								<p class="margin-clear">我深信支持我繼續前進的唯一理由，就是我深愛自己所做的事。</p>	
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