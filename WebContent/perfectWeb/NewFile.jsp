<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
	<head>
		<meta charset="utf-8">
		<title>Home</title>
		<meta name="description" content="">
		<meta name="author" content="">

		<!-- Mobile Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- Favicon -->
		<link rel="shortcut icon" href="images/favicon.ico">
 
		<link href="bootstrap/css/bootstrap.css" rel="stylesheet"> 
		<link href="fonts/font-awesome/css/font-awesome.css" rel="stylesheet"> 
		<link href="css/animations.css" rel="stylesheet"> 
		<link href="css/style.css" rel="stylesheet"> 
		<link href="css/custom.css" rel="stylesheet">
	</head>

	<body class="no-trans">
		<!-- scrollToTop --> 
		<div class="scrollToTop"><i class="icon-up-open-big"></i></div>

		<!-- header start --> 
		<header class="header fixed clearfix navbar navbar-fixed-top">
			<div class="container">
				<div class="row">
					<div class="col-md-4">

						<!-- header-left start --> 
						<div class="header-left">

							<!-- logo -->
							<div class="logo smooth-scroll">
								<a href="#banner"><img id="logo" src="images/logo.png" alt="Worthy"></a>
							</div>

							<!-- name-and-slogan -->
							<div class="logo-section smooth-scroll">
								<div class="brand"><a href="#banner">掘金</a></div>								
							</div>

						</div>
						<!-- header-left end -->

					</div>
					<div class="col-md-8">

						<!-- header-right start --> 
						<div class="header-right">

							<!-- main-navigation start --> 
							<div class="main-navigation animated">

								<!-- navbar start --> 
								<nav class="navbar navbar-default" role="navigation">
									<div class="container-fluid">

										<!-- Toggle get grouped for better mobile display -->
										<div class="navbar-header">
											<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse-1">
												<span class="sr-only">Toggle navigation</span>
												<span class="icon-bar"></span>
												<span class="icon-bar"></span>
												<span class="icon-bar"></span>
											</button>
										</div>

										<!-- Collect the nav links, forms, and other content for toggling -->
										<div class="collapse navbar-collapse scrollspy smooth-scroll" id="navbar-collapse-1">
											<ul class="nav navbar-nav navbar-right">
												<li class="active"><a href="#banner">主页</a></li>
												<li><a href="#services">登录</a></li>
												<li><a href="#about">个人简介</a></li>
												
												<li><a href="#portfolio">商品</a></li>
												<li><a href="#price">注册</a></li>
												<li><a href="#contact">反馈</a></li>
											</ul>
										</div>

									</div>
								</nav>
								<!-- navbar end -->

							</div>
							<!-- main-navigation end -->

						</div>
						<!-- header-right end -->

					</div>
				</div>
			</div>
		</header>
		<!-- header end -->

		<!-- banner start --> 
		<div id="banner" class="banner">
			<div class="banner-image"></div>
			<div class="banner-caption">
				<div class="container">
					<div class="row">					 
						<div class="caption-data" style="margin-top: 0px; opacity: 1;" data-animation-effect="fadeIn">
								<h1>We are AWESOME!</h1>
								<h3 class="padding-top30">Lorem ipsum dolor sit amet, consectetur adipisicing elit.<br/> Eos debitis provident nulla illum minus.</h3>
								<div class="padding-top60 contact-form">
									<button class="btn cta-button">CLICK HERE</button>
								</div>
							</div>
					</div>
				</div>
			</div>
		</div>
		<!-- banner end -->
		
<!-- 		
		<section class="hero-caption secPadding">

		<div class="container">
	
	<div class="row " style="margin-top: 0px;">
				<div class="col-sm-12">
	<h2>welcome to <strong>AVENGER</strong> - <span>Awesome</span> Multipurpose Template</h2>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure aperiam consequatur quo. Sed quis tortor magna. Maecenas hendrerit feugiat pulvinar. Aenean condimentum quam eu ultricies cursus.  Nulla facilisi. In hac habitasse platea dictumst. Ut nec tellus neque. Sed non dui eget arcu elementum facilisis.</p>
 	</div>
	
			</div>

		</div>
	
</section> -->



<!-- section start -->
 <!-- 服务 -->
 
 <style>/*重置样式*/
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr,
acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub
, sup, tt, var, b, u, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody,
tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header,
hgroup, menu, nav, output, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0
}
body {
    font-family: "微软雅黑";
    background: #f4f4f4;
}

/*header*/
.header-line {
    width: 100%;
    height: 4px;
    background: #0dbfdd;
}

/*content*/
.content {
    width: 28%;
    margin: 70px auto 0;
    text-align: center;
}
.content-logo {
    width: 80px;
    height: 80px;
}
.content-title {
    margin: 10px 0 25px 0;
    font-size: 2em;
    color: #747474;
    font-weight: normal;
}
.content-form {
    width: 100%;
    padding: 36px 0 20px;
    border: 1px solid  #dedede;
    text-align: center;
    background: #fff;
}
.content-form form div {
    margin-bottom: 19px;
}
.content-form form .user,
.content-form form .password {
    width: 60%;
    height: 20px;
    padding: 10px;
    font-size: 1em;
    border: 1px solid  #cccbcb;
    border-radius: 7px;
    letter-spacing: 1px;
}
.content-form form input:focus {
    outline: none;
    -webkit-box-shadow: 0 0 5px #0dbfdd;
            box-shadow: 0 0 5px #0dbfdd;
}
.content-form-signup {
    width: 84%;
    margin: 0 auto;
    padding: 10px;
    border: 1px solid  #cccbcb;
    border-radius: 7px;
    font-size: 1em;
    font-weight: bold;
    color: #fff;
    background: #0dbfdd;
    cursor: pointer;
}
.content-form-signup:hover {
    background: #0cb3d0;
}
.content-form-signup:focus {
    outline: none;
    border: 1px solid  #0cb3d0;
}
.content-login-description {
    margin-top: 25px;
    line-height: 1.63636364;
    color: #747474;
    font-size: .91666667rem;
}
.content-login-link {
    font-size: 16px;
    color: #0dbfdd;
    text-decoration: none;
}

/*输入框无内容便提示*/
#remind_1,
#remind_2 {
    width: 76%;
    margin: 0 auto 2px;
    text-align: left;
    font-size: .2em;
    color: #f00;
}</style>
    <meta charset="UTF-8">
    <title>log-in</title>
    <link rel="stylesheet" href="css/common_form.css">
</head>

<body>
 <header>
        <div class="header-line"></div>
    </header>
    <div class="content">
        
        <h1 class="content-title">登录</h1>
        <div class="content-form">
            <form method="post" id="services"<%-- action="<%=path %>/dlyz" --%>>
          
                <div id="change_margin_1">
                用户名:
               <input class="user" type="text" name="userName" placeholder="请输入用户名6-16位" onblur="oBlur_1()" onfocus="oFocus_1()">
                </div>
                <!-- input的value为空时弹出提醒 -->
                <p id="remind_1"></p>
                <div id="change_margin_2">
                密码:
                    <input class="password" type="passWord" name="passWord" placeholder="请输入密码8-16位
                    " onblur="oBlur_2()" onfocus="oFocus_2()">
                </div>
          
   <br /><font color="red">
   <%=request.getAttribute("error")==null?"":request.getAttribute("error")%></font>
                <!-- input的value为空时弹出提醒 -->
                <p id="remind_2"></p>
                <div id="change_margin_3">
                    <input class="content-form-signup" type="submit" name="zhuce" value="登录">
                </div>
            <%--      <a href="<%=path %>/MyWeb/main.jsp">返回首页</a> --%>
            </form>
        </div>
    </div>
<script src="js/common_form_test.js"></script>
</body>

<!-- 		<section class="section transprant-bg pclear secPadding">
			<div class="container no-view" data-animation-effect="fadeIn">
				<h1 id="services" class="title text-center">Services</h1>
				<div class="space"></div>
				<div class="row">
					<div class="col-md-4">
						<div class="media block-list">
							<div class="media-left">
								<i class="fa fa-trophy"></i>
							</div>
							<div class="media-body">
								<h3 class="media-heading">User Research</h3>
								<blockquote>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure aperiam consequatur quo.</p>
									
								</blockquote>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="media block-list">
							<div class="media-left">
								<i class="fa fa-gear"></i>
							</div>
							<div class="media-body">
								<h3 class="media-heading">Data Collection</h3>
								<blockquote>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure aperiam ducimus.</p>
									
								</blockquote>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="media block-list">
							<div class="media-left">
								<i class="fa fa-laptop"></i>
							</div>
							<div class="media-body">
								<h3 class="media-heading">Designing</h3>
								<blockquote>
									<p>Dolor sit amet, consectetur adipisicing elit. Iure aperiam consequatur placeat.</p>
									
								</blockquote>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<div class="media block-list">
							<div class="media-left">
								<i class="fa fa-clock-o"></i>
							</div>
							<div class="media-body">
								<h3 class="media-heading">Development</h3>
								<blockquote>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure aperiam consequatur.</p>
									
								</blockquote>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="media block-list">
							<div class="media-left">
								<i class="fa fa-heart"></i>
							</div>
							<div class="media-body">
								<h3 class="media-heading">Quality</h3>
								<blockquote>
									<p>Forem ipsum dolor sit amet, consectetur adipisicing elit. Iure aperiam consequatur.</p>
									
								</blockquote>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="media block-list">
							<div class="media-left">
								<i class="fa fa-magic"></i>
							</div>
							<div class="media-body">
								<h3 class="media-heading">Release</h3>
								<blockquote>
									<p>Norem ipsum dolor sit amet, consectetur adipisicing elit. Iure aperiam consequatur.</p>
									
								</blockquote>
							</div>
						</div>
					</div>
				</div>
			</div>			  
		</section> -->
		<!-- section end -->

		<!-- section start --> 
		<!-- 关于 -->
		<section class="section clearfix no-view secPadding" data-animation-effect="fadeIn">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h1 id="about" class="title text-center">About <span>Avenger</span></h1>
						<p class="lead text-center">Lorem ipsum dolor sit amet, consectetur adipisicing elit. laudantium culpa tenetur.</p>
						<div class="space"></div>
						<div class="row">
							<div class="col-md-6">
								<img src="images/section-image-1.png" alt="">
								<div class="space"></div>
							</div>
							<div class="col-md-6">
								<p>Lorem ipsum dolor sit amet, cadipisicing  sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde fuga error commodi architecto, laudantium culpa tenetur at id, beatae pet.</p>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. adipisicing  sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium,m deserunt.</p>
								<ul class="list-unstyled">
									<li><i class="fa fa-arrow-circle-right pr-10 colored"></i> Lorem ipsum enimdolor sit amet</li>
									<li><i class="fa fa-arrow-circle-right pr-10 colored"></i> Explicabo deleniti neque aliquid</li>
									<li><i class="fa fa-arrow-circle-right pr-10 colored"></i> Consectetur adipisicing elit</li>
									<li><i class="fa fa-arrow-circle-right pr-10 colored"></i> Lorem ipsum dolor sit amet</li>
									<li><i class="fa fa-arrow-circle-right pr-10 colored"></i> Quo issimos molest quibusdam temporibus</li>
								</ul>
							</div>
						</div>
						<div class="space"></div>
						<h2>Amazing free bootstrap template</h2>
						<div class="row">
							<div class="col-md-6">
								<p>Lorem ipsum dolor sit amet, adipisicing  sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde error commodi architecto, laudantium culpa optio corporis quod earumdignissimos eius mollitia et quas officia doloremque.</p>
									<ul class="list-unstyled">
									<li><i class="fa fa-arrow-circle-right pr-10 colored"></i> Lorem ipsum enimdolor sit amet</li>
									<li><i class="fa fa-arrow-circle-right pr-10 colored"></i> Explicabo deleniti neque aliquid</li>
									<li><i class="fa fa-arrow-circle-right pr-10 colored"></i> Consectetur adipisicing elit</li>
									<li><i class="fa fa-arrow-circle-right pr-10 colored"></i> Lorem ipsum dolor sit amet</li>
									<li><i class="fa fa-arrow-circle-right pr-10 colored"></i> Quo issimos molest quibusdam temporibus</li>
								</ul>
								<p>Dolores quam magnam aadipisicing  sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde molestias velit eveniet, facere autem saepe autrunt.</p>
							</div>
							<div class="col-md-6">
								<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
									<div class="panel panel-default">
										<div class="panel-heading" role="tab" id="headingOne">
											<h4 class="panel-title">
												<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
													Collapsible Group Item #1
												</a>
											</h4>
										</div>
										<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
											<div class="panel-body">
												Consectetur adipisicing  sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat ntium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earumdignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading" role="tab" id="headingTwo">
											<h4 class="panel-title">
												<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
													Collapsible Group Item #2
												</a>
											</h4>
										</div>
										<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
											<div class="panel-body">
												Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat ntium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earumdignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading" role="tab" id="headingThree">
											<h4 class="panel-title">
												<a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
													Collapsible Group Item #3
												</a>
											</h4>
										</div>
										<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
											<div class="panel-body">
												Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi adipisci illo, voluptatum ipsam fuga error commodi architecto, laudantium culpa tenetur at id, beatae placeat deserunt iure quas voluptas fugit eveniet.
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- section end -->
 
		<!-- section start --> 
		<div class="default-bg colord secPadding">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<h1 class="text-center">Amazing Free Bootstrap Template.</h1>
					</div>
				</div>
			</div>
		</div>
		<!-- section end -->





		<!-- section start --> 
	<!-- 	商品 -->
		<section class="section secPadding">
			<div class="container">
				<h1 class="text-center title" id="portfolio">Portfolio</h1>
				<div class="separator"></div>
				<p class="lead text-center">Lorem ipsum dolor sit amet laudantium molestias similique.<br> Quisquam incidunt ut laboriosam.</p>
				<br>			
				<div class="row no-view" data-animation-effect="fadeIn">
					<div class="col-md-12">

						<!-- isotope filters start -->
						<div class="filters text-center">
							<ul class="nav nav-pills">
								<li class="active"><a href="#" data-filter="*">All</a></li>
								<li><a href="#" data-filter=".web-design">Web design</a></li>
								<li><a href="#" data-filter=".app-development">App development</a></li>
								<li><a href="#" data-filter=".mobile-apps">Mobile Apps</a></li>
							</ul>
						</div>
						<!-- isotope filters end -->

						<!-- portfolio items start -->
						<div class="isotope-container row grid-space-20">
							<div class="col-sm-6 col-md-3 isotope-item web-design">
								<div class="image-box">
									<div class="overlay-container">
										<img src="images/portfolio-1.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-1">
											<i class="fa fa-search-plus"></i>
											 
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-1">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-1" tabindex="-1" role="dialog" aria-labelledby="project-1-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-1-label">Project Title</h4>
											</div>
											<div class="modal-body">
												
												<div class="row">												 
													<div class="col-md-12">
														<img src="images/portfolio-1.jpg" alt="">
														<br/>
														<h3>Project Description</h3>
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>

							<div class="col-sm-6 col-md-3 isotope-item app-development">
								<div class="image-box">
									<div class="overlay-container">
										<img src="images/portfolio-2.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-2">
											<i class="fa fa-search-plus"></i>
											 
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-2">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-2" tabindex="-1" role="dialog" aria-labelledby="project-2-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-2-label">Project Title</h4>
											</div>
											<div class="modal-body">
												
												<div class="row">												 
													<div class="col-md-12">
														<img src="images/portfolio-2.jpg" alt="">
														<br/>
														<h3>Project Description</h3>
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>
							
							<div class="col-sm-6 col-md-3 isotope-item web-design">
								<div class="image-box">
									<div class="overlay-container">
										<img src="images/portfolio-3.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-3">
											<i class="fa fa-search-plus"></i> 
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-3">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-3" tabindex="-1" role="dialog" aria-labelledby="project-3-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-3-label">Project Title</h4>
											</div>
											<div class="modal-body">
												
												<div class="row">												 
													<div class="col-md-12">
														<img src="images/portfolio-3.jpg" alt="">
														<br/>
														<h3>Project Description</h3>
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>
							
							<div class="col-sm-6 col-md-3 isotope-item mobile-apps">
								<div class="image-box">
									<div class="overlay-container">
										<img src="images/portfolio-4.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-4">
											<i class="fa fa-search-plus"></i> 
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-4">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-4" tabindex="-1" role="dialog" aria-labelledby="project-4-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-4-label">Project Title</h4>
											</div>
											<div class="modal-body">
												
												<div class="row">												 
													<div class="col-md-12">
														<img src="images/portfolio-4.jpg" alt="">
														<br/>
														<h3>Project Description</h3>
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>
							
							<div class="col-sm-6 col-md-3 isotope-item app-development">
								<div class="image-box">
									<div class="overlay-container">
										<img src="images/portfolio-5.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-5">
											<i class="fa fa-search-plus"></i> 
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-5">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-5" tabindex="-1" role="dialog" aria-labelledby="project-5-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-5-label">Project Title</h4>
											</div>
											<div class="modal-body">
												
												<div class="row">												 
													<div class="col-md-12">
														<img src="images/portfolio-5.jpg" alt="">
														<br/>
														<h3>Project Description</h3>
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>
							
							<div class="col-sm-6 col-md-3 isotope-item web-design">
								<div class="image-box">
									<div class="overlay-container">
										<img src="images/portfolio-6.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-6">
											<i class="fa fa-search-plus"></i> 
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-6">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-6" tabindex="-1" role="dialog" aria-labelledby="project-6-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-6-label">Project Title</h4>
											</div>
											<div class="modal-body">
												
												<div class="row">												 
													<div class="col-md-12">
														<img src="images/portfolio-6.jpg" alt="">
														<br/>
														<h3>Project Description</h3>
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>
							
							<div class="col-sm-6 col-md-3 isotope-item mobile-apps">
								<div class="image-box">
									<div class="overlay-container">
										<img src="images/portfolio-7.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-7">
											<i class="fa fa-search-plus"></i>
											<span>Site Building</span>
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-7">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-7" tabindex="-1" role="dialog" aria-labelledby="project-7-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-7-label">Project Title</h4>
											</div>
											<div class="modal-body">
												
												<div class="row">												 
													<div class="col-md-12">
														<img src="images/portfolio-7.jpg" alt="">
														<br/>
														<h3>Project Description</h3>
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>
							
							<div class="col-sm-6 col-md-3 isotope-item web-design">
								<div class="image-box">
									<div class="overlay-container">
										<img src="images/portfolio-8.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-8">
											<i class="fa fa-search-plus"></i> 
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-8">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-8" tabindex="-1" role="dialog" aria-labelledby="project-8-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-8-label">Project Title</h4>
											</div>
											<div class="modal-body">
												
												<div class="row">												 
													<div class="col-md-12">
														<img src="images/portfolio-8.jpg" alt="">
														<br/>
														<h3>Project Description</h3>
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>

							<div class="col-sm-6 col-md-3 isotope-item web-design">
								<div class="image-box">
									<div class="overlay-container">
										<img src="images/portfolio-9.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-9">
											<i class="fa fa-search-plus"></i> 
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-9">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-9" tabindex="-1" role="dialog" aria-labelledby="project-9-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-9-label">Project Title</h4>
											</div>
											<div class="modal-body">
												
												<div class="row">												 
													<div class="col-md-12">
														<img src="images/portfolio-9.jpg" alt="">
														<br/>
														<h3>Project Description</h3>
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>

							<div class="col-sm-6 col-md-3 isotope-item mobile-apps">
								<div class="image-box">
									<div class="overlay-container">
										<img src="images/portfolio-10.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-10">
											<i class="fa fa-search-plus"></i> 
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-10">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-10" tabindex="-1" role="dialog" aria-labelledby="project-10-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-10-label">Project Title</h4>
											</div>
											<div class="modal-body">
												
												<div class="row">												 
													<div class="col-md-12">
														<img src="images/portfolio-10.jpg" alt="">
														<br/>
														<h3>Project Description</h3>
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>

							<div class="col-sm-6 col-md-3 isotope-item web-design">
								<div class="image-box">
									<div class="overlay-container">
										<img src="images/portfolio-11.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-11">
											<i class="fa fa-search-plus"></i> 
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-11">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-11" tabindex="-1" role="dialog" aria-labelledby="project-11-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-11-label">Project Title</h4>
											</div>
											<div class="modal-body">
												
												<div class="row">												 
													<div class="col-md-12">
														<img src="images/portfolio-11.jpg" alt="">
														<br/>
														<h3>Project Description</h3>
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>

							<div class="col-sm-6 col-md-3 isotope-item app-development">
								<div class="image-box">
									<div class="overlay-container">
										<img src="images/portfolio-12.jpg" alt="">
										<a class="overlay" data-toggle="modal" data-target="#project-12">
											<i class="fa fa-search-plus"></i> 
										</a>
									</div>
									<a class="btn btn-default btn-block" data-toggle="modal" data-target="#project-12">Project Title</a>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="project-12" tabindex="-1" role="dialog" aria-labelledby="project-12-label" aria-hidden="true">
									<div class="modal-dialog modal-lg">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
												<h4 class="modal-title" id="project-12-label">Project Title</h4>
											</div>
											<div class="modal-body">
												
												<div class="row">												 
													<div class="col-md-12">
														<img src="images/portfolio-12.jpg" alt="">
														<br/>
														<h3>Project Description</h3>
														<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Atque sed, quidem quis praesentium, ut unde. Quae sed, incidunt laudantium nesciunt, optio corporis quod earum pariatur omnis illo saepe numquam suscipit, nemo placeat dignissimos eius mollitia et quas officia doloremque ipsum labore rem deserunt.</p>
													</div>
												</div>
											</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-sm btn-default" data-dismiss="modal">Close</button>
											</div>
										</div>
									</div>
								</div>
								<!-- Modal end -->
							</div>

						</div>
						<!-- portfolio items end -->
					
					</div>
				</div>
			</div>
		</section>
		<!-- section end -->
		



	
<!-- section start --> 
<!-- 个人简介？ -->
		<section class="default-bg secPadding">
			
<div class="container">
  <div class="row">
    <div class='col-md-offset-2 col-md-8 text-center'>
    <h2>Clients Testimonials</h2>
    </div>
  </div>
  <div class='row'>
    <div class='col-md-offset-2 col-md-8'>
      <div class="carousel slide" data-ride="carousel" id="quote-carousel">
        <!-- Bottom Carousel Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#quote-carousel" data-slide-to="0" class="active"></li>
          <li data-target="#quote-carousel" data-slide-to="1"></li>
          <li data-target="#quote-carousel" data-slide-to="2"></li>
        </ol>
        
        <!-- Carousel Slides / Quotes -->
        <div class="carousel-inner">
        
          <!-- Quote 1 -->
          <div class="item active">
            <blockquote>
              <div class="row">
                <div class="col-sm-3 text-center">
                  <img class="img-circle" src="images/128.jpg" style="width: 100px;height:100px;">
                </div>
                <div class="col-sm-9">
                  <p>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit!</p>
                  <small>Someone famous</small>
                </div>
              </div>
            </blockquote>
          </div>
          <!-- Quote 2 -->
          <div class="item">
            <blockquote>
              <div class="row">
                <div class="col-sm-3 text-center">
                  <img class="img-circle" src="images/129.jpg" style="width: 100px;height:100px;">
                </div>
                <div class="col-sm-9">
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam auctor nec lacus ut tempor. Mauris.</p>
                  <small>Someone famous</small>
                </div>
              </div>
            </blockquote>
          </div>
          <!-- Quote 3 -->
          <div class="item">
            <blockquote>
              <div class="row">
                <div class="col-sm-3 text-center">
                  <img class="img-circle" src="images/130.jpg" style="width: 100px;height:100px;">
                </div>
                <div class="col-sm-9">
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut rutrum elit in arcu blandit, eget pretium nisl accumsan. Sed ultricies commodo tortor, eu pretium mauris.</p>
                  <small>Someone famous</small>
                </div>
              </div>
            </blockquote>
          </div>
        </div>              
      </div>                          
    </div>
  </div>
</div>
		</section>
		
		
		
		
		
		
		
		<!-- section end -->
		<!-- 价格 -->
		<section id="price" class="price-table secPadding">
    	 <div class="container text-center"> 
         <div class="heading">
            <h1 class="text-center title" id="">Our Price</h1>
				<div class="separator"></div>
				<p class="lead text-center">Lorem ipsum dolor sit amet laudantium molestias similique.<br> Quisquam incidunt ut laboriosam.</p>
				<br>	
          </div> 
         	<div class="row"> 
            <div class="col-sm-3">
              <div class="panel panel-default text-center">
                <div class="panel-heading">
                  <h3>Basic</h3>
                </div>
                <div class="panel-body">
                  <h3 class="panel-title price">$9<span class="price-cents">99</span><span class="price-month">mo.</span></h3>
                </div>
                <ul class="list-group">
                  <li class="list-group-item">5 Projects</li>
                  <li class="list-group-item">5 GB of Storage</li>
                  <li class="list-group-item">Up to 100 Users</li>
                  <li class="list-group-item">10 GB Bandwidth</li>
                  <li class="list-group-item">Security Suite</li>
                  <li class="list-group-item"><a class="btn btn-default">Sign Up Now!</a></li>
                </ul>
              </div>          
            </div>
            <div class="col-sm-3">
              <div class="panel panel-default text-center">
                <div class="panel-heading">
                  <h3>Plus</h3>
                </div>
                <div class="panel-body">
                  <h3 class="panel-title price">$19<span class="price-cents">99</span><span class="price-month">mo.</span></h3>
                </div>
                <ul class="list-group">
                  <li class="list-group-item">10 Projects</li>
                  <li class="list-group-item">10 GB of Storage</li>
                  <li class="list-group-item">Up to 250 Users</li>
                  <li class="list-group-item">25 GB Bandwidth</li>
                  <li class="list-group-item">Security Suite</li>
                  <li class="list-group-item"><a class="btn btn-default">Sign Up Now!</a></li>
                </ul>
              </div>          
            </div>
            <div class="col-sm-3">
              <div class="panel panel-danger text-center">
                <div class="panel-heading">
                  <h3>Premium</h3>
                </div>
                <div class="panel-body">
                  <h3 class="panel-title price">$29<span class="price-cents">99</span><span class="price-month">mo.</span></h3>
                </div>
                <ul class="list-group">
                  <li class="list-group-item">Unlimited</li>
                  <li class="list-group-item">50 GB of Storage</li>
                  <li class="list-group-item">Up to 1000 Users</li>
                  <li class="list-group-item">100 GB Bandwidth</li>
                  <li class="list-group-item">Security Suite</li>
                  <li class="list-group-item"><a class="btn btn-primary">Sign Up Now!</a></li>
                </ul>
              </div>          
            </div>
            <div class="col-sm-3">
              <div class="panel panel-default text-center">
                <div class="panel-heading">
                  <h3>Ultimate</h3>
                </div>
                <div class="panel-body">
                  <h3 class="panel-title price">$49<span class="price-cents">99</span><span class="price-month">mo.</span></h3>
                </div>
                <ul class="list-group">
                  <li class="list-group-item">Unlimited</li>
                  <li class="list-group-item">150 GB of Storage</li>
                  <li class="list-group-item">Unlimited</li>
                  <li class="list-group-item">500 GB Bandwidth</li>
                  <li class="list-group-item">Security Suite</li>
                  <li class="list-group-item"><a class="btn btn-default">Sign Up Now!</a></li>
                </ul>
              </div>          
            </div>
     
          </div>
         </div>      
    </section>
		





		<!-- footer start --> 
		<!-- 反馈 -->
		<footer id="footer">

			<!-- .footer start --> 
			<div class="footer section">
				<div class="container">
					<h1 class="title text-center" id="contact">Contact Us</h1>
					<div class="space"></div>
					<div class="row">
						
						<div class="col-sm-6">
							<div class="footer-content">
								<form role="form" id="footer-form">
									<div class="form-group has-feedback">
										<label class="sr-only" for="name2">Name</label>
										<input type="text" class="form-control" id="name2" placeholder="Name" name="name2" required>
										<i class="fa fa-user form-control-feedback"></i>
									</div>
									<div class="form-group has-feedback">
										<label class="sr-only" for="email2">Email address</label>
										<input type="email" class="form-control" id="email2" placeholder="Enter email" name="email2" required>
										<i class="fa fa-envelope form-control-feedback"></i>
									</div>
									<div class="form-group has-feedback">
										<label class="sr-only" for="message2">Message</label>
										<textarea class="form-control" rows="8" id="message2" placeholder="Message" name="message2" required></textarea>
										<i class="fa fa-pencil form-control-feedback"></i>
									</div>
									<input type="submit" value="Send" class="btn btn-default">
								</form>
							</div>
						</div>
						
						<div class="col-sm-6">
							<div class="footer-content">
								

							<div class="widget-content">

								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vel nam magnam natus tempora cumque, aliquam deleniti voluptatibus voluptas. Maecenas ultrices finibus erat sit amet auctor. Curabitur et metus laoreet, fermentum quam sagittis, cursus augue. </p><br/>

								<p class="contacts"><i class="fa fa-map-marker"></i> 1508 Kembery Drive, Chicago, IL 60605 </p>

								<p class="contacts"><i class="fa fa-phone"></i> 202-314-1583</p>

								<p class="contacts"><i class="fa fa-envelope"></i> support@biss.com</p>

							

							</div>

						</aside>
								<ul class="social-links">
									<li class="facebook"><a target="_blank" href="#"><i class="fa fa-facebook"></i></a></li>
									<li class="twitter"><a target="_blank" href="#"><i class="fa fa-twitter"></i></a></li>
									<li class="googleplus"><a target="_blank" href="#"><i class="fa fa-google-plus"></i></a></li>
									<li class="skype"><a target="_blank" href="#"><i class="fa fa-skype"></i></a></li>
									<li class="linkedin"><a target="_blank" href="#"><i class="fa fa-linkedin"></i></a></li>
									<li class="youtube"><a target="_blank" href="#"><i class="fa fa-youtube"></i></a></li> 
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- .footer end -->

			<!-- .subfooter start --> 
			<div class="subfooter">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<p class="text-center">Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
						</div>
					</div>
				</div>
			</div>
			<!-- .subfooter end -->

		</footer>
		<!-- footer end -->

		<!-- JavaScript --> 
		<script type="text/javascript" src="plugins/jquery.min.js"></script>
		<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="plugins/modernizr.js"></script>
		<script type="text/javascript" src="plugins/isotope/isotope.pkgd.min.js"></script>
		<script type="text/javascript" src="plugins/jquery.backstretch.min.js"></script>
		<script type="text/javascript" src="plugins/jquery.appear.js"></script>

		<!-- Custom Scripts -->
		<script type="text/javascript" src="js/custom.js"></script>

	</body>
</html>
