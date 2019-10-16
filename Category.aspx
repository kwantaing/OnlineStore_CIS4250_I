<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Main.Master" CodeBehind="Category.aspx.vb" Inherits="OnlineStore_CIS4250.Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpContent" runat="server">
    <body class="shop">
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
								<h2>shop</h2>
								<ul>
									<li><a href="/">Home /</a></li>
									<li><a href="Category.aspx">Products </a></li>
                                    <li><a href="#"><asp:Label class="active" runat="server" ID="lblBreadCrumb1" Text=""></asp:Label></a></li>
                                    <li class="active"><a href="# "><asp:Label runat="server" ID="lblBreadCrumb2" Text=""></asp:Label></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- breadcrumbs-area-end -->
			<!-- shop-main-area-start -->
			<div class="shop-main-area">
				<div class="container">
					<!-- <div class="row">
						<div class="col-lg-12">
							<!-- page-bar-start -->
							<div class="page-bar">
								<div class="shop-tab">
									<!-- tab-menu-start -->
									<div class="tab-menu-3">
										<ul>
											<li class="active"><a href="#th" data-toggle="tab"><i class="fa fa-list"></i></a></li>
											<li><a href="#list"  data-toggle="tab"><i class="fa fa-th"></i></a></li>
										</ul>
									</div> 
									<!-- tab-menu-end -->
									<!-- toolbar-sorter-start -->
									<div class="toolbar-sorter">
										<select  class="sorter-options" data-role="sorter">
											<option selected="selected" value="Lowest">Sort By: Default</option>
											<option value="Highest">Sort By: Name (A - Z)</option>
											<option value="Product">Sort By: Name (Z - A)</option>
										</select>
									</div>
									<!-- toolbar-sorter-end -->
									<!-- toolbar-sorter-2-start -->
									<div class="toolbar-sorter-2">
										<select  class="sorter-options" data-role="sorter">
											<option selected="selected" value="Lowest">Show: 9</option>
											<option value="Highest">Show: 25</option>
											<option value="Product">Show: 50</option>
										</select>
									</div>
									<!-- toolbar-sorter-2-end -->
								</div>
							</div>
							<!-- page-bar-end -->
						</div> 
					</div>
					<div class="row">
						<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 pull-right">
							<!-- shop-right-area-start -->
							<div class="shop-right-area mb-40-2 mb-30">
								<!-- tab-area-start -->
								<div class="tab-content">
                                    <h2><asp:Label ID="lblProductList" runat="server" Text=""></asp:Label></h2>
									<div class="tab-pane active" id="th">
                                        <asp:SqlDataSource ID="SqlProductList" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:OnlineStoreConnectionString %>" SelectCommand="">
                                        </asp:SqlDataSource>
                                        <asp:Repeater ID="rpProductList" runat="server" DataSourceID="SqlProductList">
                                            <ItemTemplate>
                                                <div class="product-wrapper product-wrapper-3 mb-40">
                                                    <div class="product-img">
                                                        <a href="#">
													        <img src="img/product/3.jpg" alt="product" class="primary"/>
													        <img src="img/product/4.jpg" alt="product" class="secondary"/>
                                                        </a>
												        <div class="product-icon">
													        <a href="#" data-toggle="tooltip" title="Add to Cart"><i class="icon ion-bag"></i></a>
													        <a href="#" data-toggle="tooltip" title="Compare this Product"><i class="icon ion-android-options"></i></a>
													        <a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="icon ion-android-open"></i></a>
												        </div>
                                                    </div>
											        <div class="product-content">
												        <h2><a href="ProductDetail.aspx?ProductNo=<%# Eval("ID") %>&MainCategoryID=<%# Eval("MainCategoryID") %>&SubCategoryID=<%#Eval("SubCategoryID") %>"><%# Eval("ProductName") %></a></h2>
												        <div class="price">
													        <ul>
														        <li class="new-price">$<%# Trim(Eval("Price")) %></li>
													        </ul>
												        </div>
												        <p>Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you’re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or lis..</p>
											        </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
										<!-- product-wrapper-start -->
										<!-- <div class="product-wrapper product-wrapper-3 mb-40">
											<div class="product-img">
												<a href="#">
													<img src="img/product/1.jpg" alt="product" class="primary"/>
													<img src="img/product/2.jpg" alt="product" class="secondary"/>
												</a>
												<div class="product-icon">
													<a href="#" data-toggle="tooltip" title="Add to Cart"><i class="icon ion-bag"></i></a>
													<a href="#" data-toggle="tooltip" title="Compare this Product"><i class="icon ion-android-options"></i></a>
													<a href="#" data-toggle="modal" data-target="#mymodal" title="Quick View"><i class="icon ion-android-open"></i></a>
												</div>
											</div>
											<div class="product-content">
												<div class="manufacture-product">
													<a href="#">Armani</a>
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
												<h2><a href="product-details.html">Aopo Designs Woolrich Klettersack Backpack</a></h2>
												<div class="price">
													<ul>
														<li class="new-price">$122.00</li>
													</ul>
												</div>
												<p>HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with..</p>
											</div>
										</div> -->
										<!-- product-wrapper-end -->
									</div>
								</div>
								<!-- tab-area-end -->
								<!-- pagination-area-start -->
								<div class="pagination-area">
									<div class="pagination-number">
										<ul>
											<li><a href="#"><i class="fa fa-angle-left"></i></a></li>
											<li class="active"><a href="#">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
										</ul>
									</div>
									<div class="product-count">
										<p>Showing 1 - 12 of 13 items</p>
									</div>
								</div>
								<!-- pagination-area-end -->
							</div>
							<!-- shop-right-area-end -->
						</div>
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
					</div>	
                  </div>
			<!-- shop-main-area-end -->

    </body>
</asp:Content>
