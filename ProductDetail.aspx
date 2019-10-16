﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main.Master" CodeBehind="ProductDetail.aspx.vb" Inherits="OnlineStore_CIS4250.ProductDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpContent" runat="server">
    <body class="product-details">
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <!-- Add your site or application content here -->
		<!-- page-wraper-start -->
		<div id="page-wraper">
			<!-- breadcrumbs-area-start -->
			<div class="breadcrumbs-area">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="breadcrumb-content text-center">
								<h2>product details</h2>
								<ul>
									<li><a href="#">Home /</a></li>
									<li class="active"><a href="#">product details</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- breadcrumbs-area-end -->
			<!-- shop-main-area-start -->
			<div class="shop-main-area col-lg-8 col-md-8 col-sm-12 col-xs-12 pull-right">
				<div class="container">
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<!-- zoom-area-start -->
							<div class="zoom-area mb-3">
								<img id="zoompro" src="img/zoom/small/1.jpg" data-zoom-image="img/zoom/large/1.jpg" alt="zoom"/>
								<div id="gallery" class="mt-30">
									<a href="#" data-image="img/zoom/small/1.jpg" data-zoom-image="img/zoom/large/1.jpg">
										<img src="img/zoom/thumb/1.jpg" alt="zoom"/>
									  </a>
									  <a href="#" data-image="img/zoom/small/2.jpg" data-zoom-image="img/zoom/large/2.jpg">
										<img src="img/zoom/thumb/2.jpg" alt="zoom"/>
										</a>
									  <a href="#" data-image="img/zoom/small/3.jpg" data-zoom-image="img/zoom/large/3.jpg">
										<img src="img/zoom/thumb/3.jpg" alt="zoom"/>
									  </a>
									  <a href="#" data-image="img/zoom/small/4.jpg" data-zoom-image="img/zoom/large/4.jpg">
										<img src="img/zoom/thumb/4.jpg" alt="zoom"/>
									  </a>
								</div>
							</div>
							<!-- zoom-area-end -->
						</div>
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<!-- zoom-product-details-start -->
							<div class="zoom-product-details">                                
								<h1><asp:Label ID="lblProductName" runat="server" Text=""></asp:Label></h1>
								<div class="main-area mtb-30">
									<div class="rating">
										<ul>
											<li><a href="#"><i class="fa fa-star"></i></a></li>
											<li><a href="#"><i class="fa fa-star"></i></a></li>
											<li><a href="#"><i class="fa fa-star"></i></a></li>
											<li><a href="#"><i class="fa fa-star"></i></a></li>
											<li><a href="#"><i class="fa fa-star"></i></a></li>
											<li><a href="#"><i class="fa fa-star"></i></a></li>
										</ul>
									</div>
									<div class="review-2">
										<a href="#">1 reviews</a>
										<a href="#">Write a review</a>
									</div>
								</div>
								<div class="price">
									<ul>
										<li class="new-price">$<asp:Label ID="lblPrice" runat="server" Text=""></asp:Label></li>
									</ul>
									<p>Mauris blandit, metus a venenatis lacinia, felis enim tincidunt est, condimentum vulputate orci augue eu metus. Fusce dictum, nisi et semper ultricies, felis tortor blandit odio, egestas consequat pur..</p>
								</div>
								<div class="list-unstyled">
									<ul>
										<li>Product Code: <a href="#"><asp:Label ID="lblProductNo" runat="server" Text=""></asp:Label></a></li>
										<li>Availability:  <a href="#">In Stock</a></li>
									</ul>
								</div>
								<div class="catagory-select mb-30">
									<h3>Available Options</h3>
									<form action="#">
										<label for="#">Select:</label>
										<select  class="sorter-options" data-role="sorter">
											<option selected="selected" value="Lowest">Blue</option>
											<option value="Highest">White</option>
											<option value="Product">Green</option>
										</select>
									</form>
								</div>
								<form action="#">
									<div class="quality-button">
										<input class="qty" type="text" value="1"/>
										<input type="button" value="+" data-max="1000"  class="plus" />
										<input type="button" value="-" data-min="1" class="minus" />
									</div>
									<button type="submit">Add to cart</button>
									<div class="product-icon">
										<a href="#" data-toggle="tooltip" title="Add to Cart"><i class="icon ion-bag"></i></a>
										<a href="#" data-toggle="tooltip" title="Compare this Product"><i class="icon ion-android-options"></i></a>
									</div>
								</form>
							</div>
							<!-- zoom-product-details-end -->
						</div>
					</div>
					<div class="row">
						<!-- products-detalis-area-start -->
						<div class="products-detalis-area pt-80">
							<div class="col-lg-12">
								<!-- tab-menu-start -->
								<div class="tab-menu mb-30 text-center">
									<ul>
										<li class="active"><a href="#Description" data-toggle="tab">Description</a></li>
										<li><a href="#Reviews"  data-toggle="tab">Reviews (0)</a></li>
										<li><a href="#Tags" data-toggle="tab">Add Tags</a></li>
									</ul>
								</div>
								<!-- tab-menu-end -->
							</div>
							<!-- tab-area-start -->
							<div class="tab-content">
								<div class="tab-pane active" id="Description">
									<div class="col-lg-12">
										<div class="tab-description">
											<p>Bacon ipsum dolor sit amet ut nostrud chuck, voluptate adipisicing veniam kielbasa fugiat ex spare ribs. Incididunt sint officia non cow, ut et. Cillum porchetta tongue occaecat laborum bacon aliquip fatback flank dolore short loin ball tip bresaola deserunt dolor. Shoulder fugiat ut in ut tail swine dolore, capicola ullamco beef occaecat meatball. Laboris turkey in et chuck deserunt ad incididunt do.</p>
											<p>Capicola chuck tongue, anim consequat leberkas laborum ut enim bacon. Ribeye hamburger pastrami nisi ad consectetur dolor exercitation pork belly officia brisket pariatur mollit nulla turkey. Est dolore nulla cupidatat pork chop. Sausage officia pastrami chicken.</p>
											<p>Tail sed sausage magna quis commodo swine. Aliquip strip steak esse ex in ham hock fugiat in. Labore velit pork belly eiusmod ut shank doner capicola consectetur landjaeger fugiat excepteur short loin. Pork belly laboris mollit in leberkas qui. Pariatur swine aliqua pork chop venison veniam. Venison sed cow short loin bresaola shoulder cupidatat capicola drumstick dolore magna shankle.</p>
											<p>Sunt tail est sirloin meatloaf shank, brisket tempor duis swine fugiat dolore. Spare ribs esse jowl consectetur hamburger quis magna. Doner andouille dolore eiusmod, shank short ribs sausage adipisicing ball tip drumstick et. Ribeye in tenderloin bresaola laborum eu voluptate dolor sausage.</p>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="Reviews">
									<div class="col-lg-12">
										<div class="reviews-area">
											<h3>Reviews</h3>
											<p>Be the first to review “Apple 16Gb iPad Mini” </p>
											<div class="rating-area mb-10">
												<h4>Your Rating</h4>
												<a href="#"><i class="fa fa-star" ></i></a>
												<a href="#"><i class="fa fa-star" ></i></a>
												<a href="#"><i class="fa fa-star" ></i></a>
												<a href="#"><i class="fa fa-star" ></i></a>
											</div>
											<div class="comment-form mb-10">
												<label>Your Review</label>
												<textarea name="comment" id="comment" cols="20" rows="7"></textarea>
											</div>
											<div class="comment-form-author mb-10">
												<label>Name</label>
												<input type="text" />
											</div>
											<div class="comment-form-email mb-10">
												<label>email</label>
												<input type="text" />
											</div>
											<button type="submit">submit</button>
										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="Tags">
									<div class="col-lg-12">
										<div class="tab-description">
											<p> Custom Tab Content here. <br />
											Tail sed sausage magna quis commodo swine. Aliquip strip steak esse ex in ham hock fugiat in. Labore velit pork belly eiusmod ut shank doner capicola consectetur landjaeger fugiat excepteur short loin. Pork belly laboris mollit in leberkas qui. Pariatur swine aliqua pork chop venison veniam. Venison sed cow short loin bresaola shoulder cupidatat capicola drumstick dolore magna shankle. </p>
										</div>
									</div>
								</div>
							</div>
							<!-- tab-area-end -->
						</div>
						<!-- products-detalis-area-end -->
					</div>
				</div>
			</div>
			<!-- shop-main-area-end -->
			<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
				<!-- shop-left-area-start -->
				<div class="shop-left-area">
					<!-- single-shop-start -->
					<div class="single-shop mb-40">
						<div class="Categories-title">
							<h4><asp:Label ID="lblParentCategory" runat="server" Text=""></asp:Label></h4>
						</div>
                        <div class="Categories-list">
                            <ul>
                                    <li><asp:Label ID="lblMainCategories" runat="server" Text=""></asp:Label></li>
                            <asp:SqlDataSource ID="SqlSubCategories" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:OnlineStoreConnectionString %>" SelectCommand="">
                            </asp:SqlDataSource>
                            <asp:Repeater ID="rpSubCategory" runat="server" DataSourceID="SqlSubCategories">
                                <ItemTemplate>
                                    <li><a href="Category.aspx?MainCategoryID=<%# Request.QueryString("MainCategoryID") %>&MainCategoryName=<%# Request.QueryString("MainCategoryName") %>&SubCategoryID=<%# CStr(Eval("ID")) %>&SubCategoryName=<%# Eval("CategoryName") %>"><%# Trim(Eval("CategoryName")) %></a></li>
                                </ItemTemplate>
                            </asp:Repeater>
                            </ul>
                        </div>

					</div>
					<!-- single-shop-end -->

				</div>
				<!-- shop-left-area-end -->
			</div>
			<!-- arrivals-area-start -->
			<div class="arrivals-area ptb-80">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<div class="section-title mb-30 text-center">
								<h2>Related Products</h2>
								<p> Order online and have your products delivered to your closest store for free </p>
							</div>
						</div>
					</div>	
					<!-- tab-area-start -->
					<div class="tab-content">
						<div class="row">
							<div class="product-active">
								<div class="col-lg-12">
									<!-- product-wrapper-start -->
									<div class="product-wrapper">
										<div class="product-img">
											<a href="#">
												<img src="img/product/23.jpg" alt="product" class="primary"/>
												<img src="img/product/24.jpg" alt="product" class="secondary"/>
											</a>
											<span class="sale">sale</span>
											<div class="product-icon">
												<a href="#" data-toggle="tooltip" title="Add to Cart"><i class="icon ion-bag"></i></a>
												<a href="#" data-toggle="tooltip" title="Compare this Product"><i class="icon ion-android-options"></i></a>
												<a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="icon ion-android-open"></i></a>
											</div>
										</div>
										<div class="product-content pt-20">
											<div class="manufacture-product">
												<a href="#">Chanel</a>
												<div class="rating">
													<ul>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
													</ul>
												</div>
											</div>
											<h2><a href="#">Sopo Designs Woolrich Klettersack Backpack</a></h2>
											<div class="price">
												<ul>
													<li class="new-price">$122.00</li>
												</ul>
											</div>
										</div>
									</div>
									<!-- product-wrapper-end -->
								</div>
								<div class="col-lg-12">
									<!-- product-wrapper-start -->
									<div class="product-wrapper">
										<div class="product-img">
											<a href="#">
												<img src="img/product/31.jpg" alt="product" class="primary"/>
												<img src="img/product/32.jpg" alt="product" class="secondary"/>
											</a>
											<div class="product-icon">
												<a href="#" data-toggle="tooltip" title="Add to Cart"><i class="icon ion-bag"></i></a>
												<a href="#" data-toggle="tooltip" title="Compare this Product"><i class="icon ion-android-options"></i></a>
												<a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="icon ion-android-open"></i></a>
											</div>
										</div>
										<div class="product-content pt-20">
											<div class="manufacture-product">
												<a href="#">Dior</a>
												<div class="rating">
													<ul>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
													</ul>
												</div>
											</div>
											<h2><a href="#">Topo Designs Woolrich Klettersack Backpack</a></h2>
											<div class="price">
												<ul>
													<li class="new-price">$122.00</li>
												</ul>
											</div>
										</div>
									</div>
									<!-- product-wrapper-end -->
								</div>
								<div class="col-lg-12">
									<!-- product-wrapper-start -->
									<div class="product-wrapper">
										<div class="product-img">
											<a href="#">
												<img src="img/product/7.jpg" alt="product" class="primary"/>
												<img src="img/product/8.jpg" alt="product" class="secondary"/>
											</a>
											<span class="sale">sale</span>
											<div class="product-icon">
												<a href="#" data-toggle="tooltip" title="Add to Cart"><i class="icon ion-bag"></i></a>
												<a href="#" data-toggle="tooltip" title="Compare this Product"><i class="icon ion-android-options"></i></a>
												<a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="icon ion-android-open"></i></a>
											</div>
										</div>
										<div class="product-content pt-20">
											<div class="manufacture-product">
												<a href="#">Chanel </a>
												<div class="rating">
													<ul>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
													</ul>
												</div>
											</div>
											<h2><a href="#">Dopo Designs Woolrich Klettersack Backpack</a></h2>
											<div class="price">
												<ul>
													<li class="new-price">$122.00</li>
													<li class="old-price">$98.00</li>
												</ul>
											</div>
										</div>
									</div>
									<!-- product-wrapper-end -->
								</div>
								<div class="col-lg-12">
									<!-- product-wrapper-start -->
									<div class="product-wrapper">
										<div class="product-img">
											<a href="#">
												<img src="img/product/11.jpg" alt="product" class="primary"/>
												<img src="img/product/12.jpg" alt="product" class="secondary"/>
											</a>
											<div class="product-icon">
												<a href="#" data-toggle="tooltip" title="Add to Cart"><i class="icon ion-bag"></i></a>
												<a href="#" data-toggle="tooltip" title="Compare this Product"><i class="icon ion-android-options"></i></a>
												<a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="icon ion-android-open"></i></a>
											</div>
										</div>
										<div class="product-content pt-20">
											<div class="manufacture-product">
												<a href="#">Chanel</a>
												<div class="rating">
													<ul>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
													</ul>
												</div>
											</div>
											<h2><a href="#">Eopo Designs Woolrich Klettersack Backpack</a></h2>
											<div class="price">
												<ul>
													<li class="new-price">$98.00</li>
												</ul>
											</div>
										</div>
									</div>
									<!-- product-wrapper-end -->
								</div>
								<div class="col-lg-12">
									<!-- product-wrapper-start -->
									<div class="product-wrapper">
										<div class="product-img">
											<a href="#">
												<img src="img/product/33.jpg" alt="product" class="primary"/>
												<img src="img/product/34.jpg" alt="product" class="secondary"/>
											</a>
											<div class="product-icon">
												<a href="#" data-toggle="tooltip" title="Add to Cart"><i class="icon ion-bag"></i></a>
												<a href="#" data-toggle="tooltip" title="Compare this Product"><i class="icon ion-android-options"></i></a>
												<a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="icon ion-android-open"></i></a>
											</div>
										</div>
										<div class="product-content pt-20">
											<div class="manufacture-product">
												<a href="#">IVY Moda</a>
												<div class="rating">
													<ul>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
														<li><a href="#"><i class="fa fa-star"></i></a></li>
													</ul>
												</div>
											</div>
											<h2><a href="#">Ropo Designs Woolrich Klettersack Backpack</a></h2>
											<div class="price">
												<ul>
													<li class="new-price">$142.00</li>
												</ul>
											</div>
										</div>
									</div>
									<!-- product-wrapper-end -->
								</div>
							</div>
						</div>
					</div>
					<!-- tab-area-end -->
				</div>
			</div>
			<!-- arrivals-area-end -->
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
