<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main.Master" CodeBehind="Cart.aspx.vb" Inherits="OnlineStore_CIS4250.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpContent" runat="server">
        <body class="cart">
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <!-- Add your site or application content here -->
		<!-- page-wraper-start -->
		<div id="page-wraper">
			<!-- header-area-start -->
			<!-- header-area-end -->
			<!-- breadcrumbs-area-start -->
			<div class="breadcrumbs-area">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="breadcrumb-content text-center">
								<h2>cart</h2>
								<ul>
									<li><a href="#">Home /</a></li>
									<li class="active"><a href="#">cart</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- breadcrumbs-area-end -->
			<!-- shop-main-area-start -->
			<div class="shop-main-area">
				<!-- cart-main-area-start -->
				<div class="cart-main-area">
					<div class="container">
						<div class="row">
							<div class="col-lg-12">
								<form action="#">
									<div class="table-content table-responsive">
										<table>
											<thead>
												<tr>
													<th class="product-thumbnail">Image</th>
													<th class="product-name">Product</th>
													<th class="product-price">Price</th>
													<th class="product-quantity">Quantity</th>
													<th class="product-subtotal">Total</th>
													<th class="product-remove">Remove</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="product-thumbnail"><a href="#"><img src="img/cart/1.jpg" alt="man" /></a></td>
													<td class="product-name"><a href="#">Vestibulum suscipit</a></td>
													<td class="product-price"><span class="amount">£165.00</span></td>
													<td class="product-quantity"><input type="number" value="1"></td>
													<td class="product-subtotal">£165.00</td>
													<td class="product-remove"><a href="#"><i class="fa fa-times"></i></a></td>
												</tr>
												<tr>
													<td class="product-thumbnail"><a href="#"><img src="img/cart/2.jpg" alt="man" /></a></td>
													<td class="product-name"><a href="#">Vestibulum dictum magna</a></td>
													<td class="product-price"><span class="amount">£50.00</span></td>
													<td class="product-quantity"><input type="number" value="1"></td>
													<td class="product-subtotal">£50.00</td>
													<td class="product-remove"><a href="#"><i class="fa fa-times"></i></a></td>
												</tr>
											</tbody>
										</table>
									</div>
								</form>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
								<div class="buttons-cart mb-30 mt-3">
									<ul>
										<li><a href="#">Update Cart</a></li>
										<li><a href="#">Continue Shopping</a></li>
									</ul>
								</div>
								<div class="coupon">
									<h3>Coupon</h3>
									<p>Enter your coupon code if you have one.</p>
									<form action="#">
										<input type="text" placeholder="Coupon code">
										<a href="#">Apply Coupon</a>
									</form>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
								<div class="cart_totals">
									<h2>Cart Totals</h2>
									<table>
										<tbody>
											<tr class="cart-subtotal">
												<th>Subtotal</th>
												<td>
													<span class="amount">£215.00</span>
												</td>
											</tr>
											<tr class="shipping">
												<th>Shipping</th>
												<td>
													<ul id="shipping_method">
														<li>
															<input type="radio">
															<label>
																Flat Rate:
																<span class="amount">£7.00</span>
															</label>
														</li>
														<li>
															<input type="radio">
															<label> Free Shipping </label>
														</li>
													</ul>
													<a href="#">Calculate Shipping</a>
												</td>
											</tr>
											<tr class="order-total">
												<th>Total</th>
												<td>
													<strong>
														<span class="amount">£215.00</span>
													</strong>
												</td>
											</tr>
										</tbody>
									</table>
									<div class="wc-proceed-to-checkout">
										<a href="Checkout.aspx">Proceed to Checkout</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- cart-main-area-end -->
			</div>
			<!-- shop-main-area-end -->
			<!-- newslatter-area-start -->
			<div class="newslatter-area pt-80">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="bt-top ptb-80">
								<div class="newlatter-content text-center">
									<h6>Special Offers For Subscribers</h6>
									<h3>Ten Percent Member Discount</h3>
									<p>Subscribe to our newsletters now and stay up to date with new collections, the latest lookbooks and exclusive offers.</p>
									<form action="#">
										<input type="text" placeholder="Enter your email address here..."/>
										<button type="submit">Subscribe</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- newslatter-area-end -->
			<!-- footer-area-start -->
			<footer>
				<div class="footer-area ptb-40">
					<div class="container">
						<div class="row">
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
								<!-- footer-logo-start -->
								<div class="footer-logo mb-3">
									<a href="#"><img src="img/logo/2.png" alt="logo" /></a>
								</div>
								<!-- footer-logo-end -->
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
								<!-- copy-right-area-start -->
								<div class="copy-right-area mb-3 text-center">
									<p>Copyright © 2018 <a href="#">Hastech</a> . All Right Reserved</p>
								</div>
								<!-- copy-right-area-end -->
							</div>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
								<!-- footer-social-icon-start -->
								<div class="footer-social-icon">
									<ul>
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li>
										<li><a href="#"><i class="fa fa-rss"></i></a></li>
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
										<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
									</ul>
								</div>
								<!-- footer-social-icon-end -->
							</div>
						</div>
					</div>
				</div>
		   </footer>
			<!-- footer-area-end -->
	   </div>
	  <!-- page-wraper-start -->
	  
	  
		<!-- all js here -->
		<!-- jquery latest version -->
        <script src="js/vendor/jquery-1.12.0.min.js"></script>
		<!-- bootstrap js -->
        <script src="js/bootstrap.min.js"></script>
		<!-- owl.carousel js -->
        <script src="js/owl.carousel.min.js"></script>
		<!-- meanmenu js -->
        <script src="js/jquery.meanmenu.js"></script>
		<!-- jquery-ui js -->
        <script src="js/jquery-ui.min.js"></script>
		<!-- wow js -->
        <script src="js/wow.min.js"></script>
		<!-- owl.carousel.min.js -->
        <script src="js/owl.carousel.min.js"></script>
		<!-- jquery.nivo.slider.js -->
        <script src="js/jquery.nivo.slider.js"></script>
		<!-- jquery.elevateZoom-3.0.8.min.js -->
        <script src="js/jquery.elevateZoom-3.0.8.min.js"></script>
		<!-- jquery.parallax-1.1.3.js -->
        <script src="js/jquery.parallax-1.1.3.js"></script>
		<!-- jquery.counterup.min.js -->
        <script src="js/jquery.counterup.min.js"></script>
		<!-- waypoints.min.js -->
        <script src="js/waypoints.min.js"></script>
		<!-- plugins js -->
        <script src="js/plugins.js"></script>
		<!-- main js -->
        <script src="js/main.js"></script>
    </body>
</asp:Content>
