<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewLogin.aspx.cs" Inherits="Guest_NewLogin" %>
<!-- === BEGIN HEADER === -->
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
    <!--<![endif]-->
    <head id="Head1" runat="server">
        <!-- Title -->
        <title>Lifestyle - Professional TravelGuide</title>
        <!-- Meta -->
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <meta name="description" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <!-- Favicon -->
        <link href="favicon.ico" rel="shortcut icon">
        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.css" >
        <!-- Template CSS -->
        <link rel="stylesheet" href="assets/css/animate.css" >
        <link rel="stylesheet" href="assets/css/font-awesome.css">
        <link rel="stylesheet" href="assets/css/nexus.css" >
        <link rel="stylesheet" href="assets/css/responsive.css">
        <link rel="stylesheet" href="assets/css/custom.css">
        <!-- Google Fonts-->
        <link href="http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=PT+Sans" type="text/css" rel="stylesheet">
        <link href="http://fonts.googleapis.com/css?family=Roboto:400,300" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div id="body-bg">
            <!--<ul class="social-icons pull-right hidden-xs">
                <li class="social-rss">
                    <a href="#" target="_blank" title="RSS"></a>
                </li>
                <li class="social-twitter">
                    <a href="#" target="_blank" title="Twitter"></a>
                </li>
                <li class="social-facebook">
                    <a href="#" target="_blank" title="Facebook"></a>
                </li>
                <li class="social-googleplus">
                    <a href="#" target="_blank" title="GooglePlus"></a>
                </li>
            </ul>-->
            <div id="pre-header" class="container" style="height: 40px">
                <!-- Spacing above header -->
            </div>
            <div id="header">
                <div class="container">
                    <div class="row">
                        <!-- Logo -->
                        <div class="logo">
                            <a href="index.html" title="">
                                <img src="assets/img/logo.png" alt="Logo" />
                            </a>
                        </div>
                        <!-- End Logo -->
                    </div>
                </div>
            </div>
            <!-- Top Menu -->
            <div id="hornav" class="container no-padding">
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <div class="text-center visible-lg">
                            <ul id="hornavmenu" class="nav navbar-nav">
                                <li>
                                    <a href="index.html" class="fa-home">Home</a>
                                </li>
                                <!--<li>
                                    <span class="fa-gears">Features</span>
                                    <ul>
                                        <li class="parent">
                                            <span>Typography</span>
                                            <ul>
                                                <li>
                                                    <a href="features-typo-basic.html">Basic Typography</a>
                                                </li>
                                                <li>
                                                    <a href="features-typo-blockquotes.html">Blockquotes</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="parent">
                                            <span>Components</span>
                                            <ul>
                                                <li>
                                                    <a href="features-labels.html">Labels</a>
                                                </li>
                                                <li>
                                                    <a href="features-progress-bars.html">Progress Bars</a>
                                                </li>
                                                <li>
                                                    <a href="features-panels.html">Panels</a>
                                                </li>
                                                <li>
                                                    <a href="features-pagination.html">Pagination</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="parent">
                                            <span>Icons</span>
                                            <ul>
                                                <li>
                                                    <a href="features-icons.html">Icons General</a>
                                                </li>
                                                <li>
                                                    <a href="features-icons-social.html">Social Icons</a>
                                                </li>
                                                <li>
                                                    <a href="features-icons-font-awesome.html">Font Awesome</a>
                                                </li>
                                                <li>
                                                    <a href="features-icons-glyphicons.html">Glyphicons</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="features-testimonials.html">Testimonials</a>
                                        </li>
                                        <li>
                                            <a href="features-accordions-tabs.html">Accordions & Tabs</a>
                                        </li>
                                        <li>
                                            <a href="features-buttons.html">Buttons</a>
                                        </li>
                                        <li>
                                            <a href="features-carousels.html">Carousels</a>
                                        </li>
                                        <li>
                                            <a href="features-grid.html">Grid System</a>
                                        </li>
                                        <li>
                                            <a href="features-animate-on-scroll.html">Animate On Scroll</a>
                                        </li>
                                    </ul>
                                </li>-->
                                <li>
                                    <span class="fa-copy">Pages</span>
                                    <ul>
                                        <li>
                                            <a href="pages-about-us.html">About Us</a>
                                        </li>
                                        <!--<li>
                                            <a href="pages-services.html">Services</a>
                                        </li>-->
                                        <!--<li>
                                            <a href="pages-faq.html">F.A.Q.</a>
                                        </li>-->
                                        <li>
                                            <a href="pages-about-me.html">About Me</a>
                                        </li>
                                        <!--<li>
                                            <a href="pages-full-width.html">Full Width</a>
                                        </li>
                                        <li>
                                            <a href="pages-left-sidebar.html">Left Sidebar</a>
                                        </li>
                                        <li>
                                            <a href="pages-right-sidebar.html">Right Sidebar</a>
                                        </li>
                                        <li>-->
                                            <a href="pages-login.html">Login</a>
                                        </li>
                                        <!--<li>
                                            <a href="pages-sign-up.html">Sign-Up</a>
                                        </li>-->
                                        <!--<li>
                                            <a href="pages-404.html">404 Error Page</a>
                                        </li>-->
                                    </ul>
                                </li>
                                <li>
                                    <span class="fa-th">Register</span>
                                    <ul>
                                        <li>
                                            <a href="../Guest/NewUser.aspx">NewUser</a>
                                        </li>
                                        <!--<li>
                                            <a href="portfolio-3-column.html">3 Column</a>
                                        </li>
                                        <li>
                                            <a href="portfolio-4-column.html">4 Column</a>
                                        </li>
                                        <li>
                                            <a href="portfolio-6-column.html">6 Column</a>
                                        </li>-->
                                    </ul>
                                </li>
                                <li>
                                    <span class="fa-font">Blog</span>
                                    <ul>
                                        <li>
                                            <a href="../Guest/blog-list.html">Blog</a>
                                        </li>
                                        <!--<li>
                                            <a href="blog-single.html">Blog Single Item</a>
                                        </li>-->
                                    </ul>
                                </li>
                                <li>
                                    <a href="contact.html" class="fa-comment">Contact</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Top Menu -->
            <div id="post_header" class="container" style="height: 40px">
                <!-- Spacing below header -->
            </div>
            <div id="content-top-border" class="container">
            </div>
            <!-- === END HEADER === -->
            <!-- === BEGIN CONTENT === -->
            <div id="content">
                <div class="container background-white">
                    <div class="container">
                        <div class="row margin-vert-30">
                            <!-- Login Box -->
                            <div class="col-md-6 col-md-offset-3 col-sm-offset-3">
                                <form id="Form1" class="login-page" runat="server">
                                    <div class="login-header margin-bottom-30">
                                        <h2>Login to your account</h2>
                                    </div>
                                    <div class="input-group margin-bottom-20">
                                        
                                        <span class="input-group-addon">
                                            <i class="fa fa-user"></i>
                                        </span>
                                        <asp:TextBox ID="txtemail" runat="server" Width="220px"></asp:TextBox>
                                    </div>
                                    <div class="input-group margin-bottom-20">
                                        
                                        <span class="input-group-addon">
                                            <i class="fa fa-lock"></i>
                                        </span>
                                        <asp:TextBox ID="txtpasswd" runat="server" TextMode="Password" Width="220px" OnTextChanged="txtpasswd_TextChanged"></asp:TextBox>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="checkbox">
                                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Sign In</asp:LinkButton>
                                        </div>
                                        <div class="col-md-6">
                                            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                        </div>
                                    </div>
                                    <hr>
                                    <h4>Forget your Password ?</h4>
                                    <p>
                                        <a href="#">Click here</a>to reset your password.</p>
                                </form>
                            </div>
                            <!-- End Login Box -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- === END CONTENT === -->
            <!-- === BEGIN FOOTER === -->
            <div id="content-bottom-border" class="container">
            </div>
            <div id="base">
                <div class="container padding-vert-30 margin-top-60">
                    <div class="row">
                        <!-- Contact Details -->
                        <div class="col-md-4 margin-bottom-20">
                            <h3 class="margin-bottom-10">Contact Details</h3>
                            <p>
                                <span class="fa-phone">Telephone:</span>+91 9526810211
                                <br>
                                <span class="fa-envelope">Email:</span>
                                <a href="mailto:info@abhinanth007.com">info@abhinanth007.com</a>
                                <br>
                                <span class="fa-link">Website:</span>
                                <a href="http://www.abhinanth007.com">www.abhinanth007.com</a>
                            </p>
                            <p>Wayanad,
                                <br>Kerala --
                                <!--<br>Co. Sligo,
                                <br>Ireland--></p>
                        </div>
                        <!-- End Contact Details -->
                        <!-- Sample Menu -->
                        <!--<div class="col-md-3 margin-bottom-20">
                            <h3 class="margin-bottom-10">Sample Menu</h3>
                            <ul class="menu">
                                <li>
                                    <a class="fa-tasks" href="#">Placerat facer possim</a>
                                </li>
                                <li>
                                    <a class="fa-users" href="#">Quam nunc putamus</a>
                                </li>
                                <li>
                                    <a class="fa-signal" href="#">Velit esse molestie</a>
                                </li>
                                <li>
                                    <a class="fa-coffee" href="#">Nam liber tempor</a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>-->
                        <!-- End Sample Menu -->
                        <div class="col-md-1"></div>
                        <!-- Disclaimer -->
                        <div class="col-md-3 margin-bottom-20 padding-vert-30 text-center">
                            <h3 class="color-gray margin-bottom-10">Join our Newsletter</h3>
                            <p>
                                Sign up for our newsletter for all the
                                <br>latest news and information
                            </p>
                            <input type="email">
                            <br>
                            <button class="btn btn-primary btn-lg margin-top-20" type="button">Subscribe</button>
                        </div>
                        <!-- End Disclaimer -->
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <!-- Footer Menu -->
            <div id="footer">
                <div class="container">
                    <div class="row">
                        <div id="footermenu" class="col-md-8">
                            <ul class="list-unstyled list-inline">
                                <li>
                                    <a href="#" target="_blank">Sample Link</a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">Sample Link</a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">Sample Link</a>
                                </li>
                                <li>
                                    <a href="#" target="_blank">Sample Link</a>
                                </li>
                            </ul>
                        </div>
                        <!--<div id="copyright" class="col-md-4">
                            <p class="pull-right">(c) 2014 Your Copyright Info</p>
                        </div>-->
                    </div>
                </div>
            </div>
            <!-- End Footer Menu -->
            <!-- JS -->
            <script type="text/javascript" src="assets/js/jquery.min.js" type="text/javascript"></script>
            <script type="text/javascript" src="assets/js/bootstrap.min.js" type="text/javascript"></script>
            <script type="text/javascript" src="assets/js/scripts.js"></script>
            <!-- Isotope - Portfolio Sorting -->
            <script type="text/javascript" src="assets/js/jquery.isotope.js" type="text/javascript"></script>
            <!-- Mobile Menu - Slicknav -->
            <script type="text/javascript" src="assets/js/jquery.slicknav.js" type="text/javascript"></script>
            <!-- Animate on Scroll-->
            <script type="text/javascript" src="assets/js/jquery.visible.js" charset="utf-8"></script>
            <!-- Sticky Div -->
            <script type="text/javascript" src="assets/js/jquery.sticky.js" charset="utf-8"></script>
            <!-- Slimbox2-->
            <script type="text/javascript" src="assets/js/slimbox2.js" charset="utf-8"></script>
            <!-- Modernizr -->
            <script src="assets/js/modernizr.custom.js" type="text/javascript"></script>
            <!-- End JS -->
    </body>
</html>
<!-- === END FOOTER === -->