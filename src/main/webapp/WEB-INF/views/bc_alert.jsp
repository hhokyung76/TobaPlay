<!DOCTYPE html>
<html lang="en">
<head>
	<title>DashboardKit Bootstrap 5 Admin Template</title>
	<!-- HTML5 Shim and Respond.js IE11 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 11]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	<!-- Meta -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="description" content="DashboardKit is made using Bootstrap 5 design framework. Download the free admin template & use it for your project.">
	<meta name="keywords" content="DashboardKit, Dashboard Kit, Dashboard UI Kit, Bootstrap 5, Admin Template, Admin Dashboard, CRM, CMS, Free Bootstrap Admin Template">
	<meta name="author" content="DashboardKit ">


	<!-- Favicon icon -->
	<link rel="icon" href="assets/images/favicon.svg" type="image/x-icon">

	<!-- font css -->
	<link rel="stylesheet" href="assets/fonts/feather.css">
	<link rel="stylesheet" href="assets/fonts/fontawesome.css">
	<link rel="stylesheet" href="assets/fonts/material.css">

	<!-- vendor css -->
	<link rel="stylesheet" href="assets/css/style.css" id="main-style-link">

</head>

<body class="">
	<!-- [ Pre-loader ] start -->
	<div class="loader-bg">
		<div class="loader-track">
			<div class="loader-fill"></div>
		</div>
	</div>
	<!-- [ Pre-loader ] End -->
	<!-- [ Mobile header ] start -->
	<div class="pc-mob-header pc-header">
		<div class="pcm-logo">
			<img src="static/assets/images/logo.svg" alt="" class="logo logo-lg">
		</div>
		<div class="pcm-toolbar">
			<a href="#!" class="pc-head-link" id="mobile-collapse">
				<div class="hamburger hamburger--arrowturn">
					<div class="hamburger-box">
						<div class="hamburger-inner"></div>
					</div>
				</div>
			</a>
			<a href="#!" class="pc-head-link" id="headerdrp-collapse">
				<i data-feather="align-right"></i>
			</a>
			<a href="#!" class="pc-head-link" id="header-collapse">
				<i data-feather="more-vertical"></i>
			</a>
		</div>
	</div>
	<!-- [ Mobile header ] End -->


	<!-- [ navigation menu ] start -->
	<jsp:include page="/WEB-INF/views/navi.jsp"/>
	<!-- [ navigation menu ] end -->
	<!-- [ Header ] start -->
	<jsp:include page="/WEB-INF/views/header.jsp"/>
	<!-- [ Header ] end -->

<!-- [ Main Content ] start -->
<div class="pc-container">
	<div class="pcoded-content">
		<!-- [ Main Content ] start -->
		<div class="row mb-3">
				<div class="col-md-8">
					<h3>Alerts</h3>
					<p class="lead">Provide contextual feedback messages for typical user actions with the handful of available and flexible alert messages.</p>
					<p class="f-w-500">Check out <a href="http://html.phoenixcoded.net/nextro-new/docs/index-bc-package.html#page-alert" target="_blank" class="badge bg-light-primary">Documentation</a></p>
				</div>
		</div>
		<div class="row">
			<!-- [ basic-alert ] start -->
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<h5>Basic Alerts</h5>
					</div>
					<div class="card-body">
						<div class="alert alert-primary" role="alert">
							A simple primary alert—check it out!
						</div>
						<div class="alert alert-secondary" role="alert">
							A simple secondary alert—check it out!
						</div>
						<div class="alert alert-success" role="alert">
							A simple success alert—check it out!
						</div>
						<div class="alert alert-danger" role="alert">
							A simple danger alert—check it out!
						</div>
						<div class="alert alert-warning" role="alert">
							A simple warning alert—check it out!
						</div>
						<div class="alert alert-info" role="alert">
							A simple info alert—check it out!
						</div>
						<div class="alert alert-light" role="alert">
							A simple light alert—check it out!
						</div>
						<div class="alert alert-dark" role="alert">
							A simple dark alert—check it out!
						</div>
					</div>
				</div>
			</div>
			<!-- [ basic-alert ] end -->
			<!-- [ link-alert ] start -->
			<div class="col-md-6">
				<div class="card">
					<div class="card-header">
						<h5>Link Alerts</h5>
					</div>
					<div class="card-body">
						<div class="alert alert-primary" role="alert">
							A simple primary alert with <a href="#!" class="alert-link">an example link</a>. Give it a click if you like.
						</div>
						<div class="alert alert-secondary" role="alert">
							A simple secondary alert with <a href="#!" class="alert-link">an example link</a>. Give it a click if you like.
						</div>
						<div class="alert alert-success" role="alert">
							A simple success alert with <a href="#!" class="alert-link">an example link</a>. Give it a click if you like.
						</div>
						<div class="alert alert-danger" role="alert">
							A simple danger alert with <a href="#!" class="alert-link">an example link</a>. Give it a click if you like.
						</div>
						<div class="alert alert-warning" role="alert">
							A simple warning alert with <a href="#!" class="alert-link">an example link</a>. Give it a click if you like.
						</div>
						<div class="alert alert-info" role="alert">
							A simple info alert with <a href="#!" class="alert-link">an example link</a>. Give it a click if you like.
						</div>
						<div class="alert alert-light" role="alert">
							A simple light alert with <a href="#!" class="alert-link">an example link</a>. Give it a click if you like.
						</div>
						<div class="alert alert-dark" role="alert">
							A simple dark alert with <a href="#!" class="alert-link">an example link</a>. Give it a click if you like.
						</div>
					</div>
				</div>
			</div>
			<!-- [ link-alert ] end -->
			<!-- [ dismiss-alert ] start -->
			<div class="col-md-6">
				<div class="card">
					<div class="card-header">
						<h5>Dismissing</h5>
					</div>
					<div class="card-body">
						<div class="alert alert-primary alert-dismissible fade show" role="alert">
							<strong>Holy guacamole!</strong> You should check in on some of those fields below.
							<button type="button" class="btn-close" data-dismiss="alert" aria-label="Close"></button>
						</div>
						<div class="alert alert-secondary alert-dismissible fade show" role="alert">
							<strong>Holy guacamole!</strong> You should check in on some of those fields below.
							<button type="button" class="btn-close" data-dismiss="alert" aria-label="Close"></button>
						</div>
						<div class="alert alert-success alert-dismissible fade show" role="alert">
							<strong>Holy guacamole!</strong> You should check in on some of those fields below.
							<button type="button" class="btn-close" data-dismiss="alert" aria-label="Close"></button>
						</div>
						<div class="alert alert-danger alert-dismissible fade show" role="alert">
							<strong>Holy guacamole!</strong> You should check in on some of those fields below.
							<button type="button" class="btn-close" data-dismiss="alert" aria-label="Close"></button>
						</div>
						<div class="alert alert-warning alert-dismissible fade show" role="alert">
							<strong>Holy guacamole!</strong> You should check in on some of those fields below.
							<button type="button" class="btn-close" data-dismiss="alert" aria-label="Close"></button>
						</div>
						<div class="alert alert-info alert-dismissible fade show" role="alert">
							<strong>Holy guacamole!</strong> You should check in on some of those fields below.
							<button type="button" class="btn-close" data-dismiss="alert" aria-label="Close"></button>
						</div>
						<div class="alert alert-light alert-dismissible fade show" role="alert">
							<strong>Holy guacamole!</strong> You should check in on some of those fields below.
							<button type="button" class="btn-close" data-dismiss="alert" aria-label="Close"></button>
						</div>
						<div class="alert alert-dark alert-dismissible fade show" role="alert">
							<strong>Holy guacamole!</strong> You should check in on some of those fields below.
							<button type="button" class="btn-close" data-dismiss="alert" aria-label="Close"></button>
						</div>
					</div>
				</div>
			</div>
			<!-- [ dismiss-alert ] end -->
			<!-- [ additional-alert ] start -->
			<div class="col-md-12">
				<div class="card">
					<div class="card-header">
						<h5>Additional Content</h5>
					</div>
					<div class="card-body">
						<div class="alert alert-success" role="alert">
							<h4 class="alert-heading">Well done!</h4>
							<p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.</p>
							<hr>
							<p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
						</div>
					</div>
				</div>
			</div>
			<!-- [ additional-alert ] end -->
		</div>
		<!-- [ Main Content ] end -->
	</div>
</div>
<!-- [ Main Content ] end -->
    <!-- Warning Section start -->
    <!-- Older IE warning message -->
    <!--[if lt IE 11]>
        <div class="ie-warning">
            <h1>Warning!!</h1>
            <p>You are using an outdated version of Internet Explorer, please upgrade
               <br/>to any of the following web browsers to access this website.
            </p>
            <div class="iew-container">
                <ul class="iew-download">
                    <li>
                        <a href="http://www.google.com/chrome/">
                            <img src="assets/images/browser/chrome.png" alt="Chrome">
                            <div>Chrome</div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.mozilla.org/en-US/firefox/new/">
                            <img src="assets/images/browser/firefox.png" alt="Firefox">
                            <div>Firefox</div>
                        </a>
                    </li>
                    <li>
                        <a href="http://www.opera.com">
                            <img src="assets/images/browser/opera.png" alt="Opera">
                            <div>Opera</div>
                        </a>
                    </li>
                    <li>
                        <a href="https://www.apple.com/safari/">
                            <img src="assets/images/browser/safari.png" alt="Safari">
                            <div>Safari</div>
                        </a>
                    </li>
                    <li>
                        <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                            <img src="assets/images/browser/ie.png" alt="">
                            <div>IE (11 & above)</div>
                        </a>
                    </li>
                </ul>
            </div>
            <p>Sorry for the inconvenience!</p>
        </div>
    <![endif]-->
    <!-- Warning Section Ends -->
    <!-- Required Js -->
    <script src="assets/js/vendor-all.min.js"></script>
    <script src="assets/js/plugins/bootstrap.min.js"></script>
    <script src="assets/js/plugins/feather.min.js"></script>
    <script src="assets/js/pcoded.min.js"></script>
    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/9.12.0/highlight.min.js"></script> -->
    <!-- <script src="assets/js/plugins/clipboard.min.js"></script> -->
    <!-- <script src="assets/js/uikit.min.js"></script> -->


</body>
</html>
