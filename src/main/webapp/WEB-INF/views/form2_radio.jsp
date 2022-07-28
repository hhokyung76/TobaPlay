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
			<img src="assets/images/logo.svg" alt="" class="logo logo-lg">
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
<section class="pc-container">
    <div class="pcoded-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Radio</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                            <li class="breadcrumb-item"><a href="#!">Form Components</a></li>
                            <li class="breadcrumb-item">Radio</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <!-- [ Main Content ] start -->
        <div class="row">
            <!-- [ form-element ] start -->
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-header">
                        <h5>Basic radio</h5>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="form-group row">
                                <label class="col-3 col-form-label">radioes</label>
                                <div class="col-9">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" value="" id="defaultCheck1">
                                        <label class="form-check-label" for="defaultCheck1">
                                            Default radio
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" value="" id="defaultCheck2" checked>
                                        <label class="form-check-label" for="defaultCheck2">
                                            Checked radio
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" value="" id="defaultCheck3" disabled>
                                        <label class="form-check-label" for="defaultCheck3">
                                            Disabled radio
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-3 col-form-label">Inline</label>
                                <div class="col-9">
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="inlineradio1" value="option1">
                                        <label class="form-check-label" for="inlineradio1">1</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="inlineradio2" value="option2">
                                        <label class="form-check-label" for="inlineradio2">2</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="inlineradio3" value="option3">
                                        <label class="form-check-label" for="inlineradio3">3</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="inlineradio4" value="option4" disabled>
                                        <label class="form-check-label" for="inlineradio4">4 (disabled)</label>
                                    </div>
                                    <small class="form-text d-block"><code>.form-check-inline</code> to any <code>.form-check</code></small>

                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-3 col-form-label">Inline checked state</label>
                                <div class="col-9">
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="inlineradiostate1" value="option1">
                                        <label class="form-check-label" for="inlineradiostate1">1</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="inlineradiostate2" value="option2">
                                        <label class="form-check-label" for="inlineradiostate2">2</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="inlineradiostate3" value="option3" checked>
                                        <label class="form-check-label" for="inlineradiostate3">3</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="inlineradiostate4" value="option4" disabled>
                                        <label class="form-check-label" for="inlineradiostate4">4 (disabled)</label>
                                    </div>
                                    <small class="form-text d-block"><code>.form-check-inline</code> to any <code>.form-check</code></small>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-header">
                        <h5>Custom radio</h5>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="form-group row">
                                <label class="col-3 col-form-label">radioes</label>
                                <div class="col-9">
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" value="" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            Default radio
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" value="" id="flexCheckChecked" checked>
                                        <label class="form-check-label" for="flexCheckChecked">
                                            Checked radio
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" value="" id="flexCheckDisabled" disabled>
                                        <label class="form-check-label" for="flexCheckDisabled">
                                            Disabled radio
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" value="" id="flexCheckCheckedDisabled" checked disabled>
                                        <label class="form-check-label" for="flexCheckCheckedDisabled">
                                            Disabled checked radio
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-3 col-form-label">Inline</label>
                                <div class="col-9">
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" value="" id="customCheckinlh1">
                                        <label class="form-check-label" for="customCheckinlh1">
                                            1
                                        </label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" value="" id="customCheckinlh2">
                                        <label class="form-check-label" for="customCheckinlh2">
                                            2
                                        </label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" value="" id="customCheckinlh3">
                                        <label class="form-check-label" for="customCheckinlh3">
                                            3
                                        </label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" value="" id="customCheckinlh4" disabled>
                                        <label class="form-check-label" for="customCheckinlh4">
                                            4 (disabled)
                                        </label>
                                    </div>
                                    <small class="form-text d-block text-muted">Add <code>.form-check-inline</code> to any <code>.custom-control</code></small>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-3 col-form-label">Inline Radio Checked State </label>
                                <div class="col-9">
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" value="" id="customCheckinlhstate1">
                                        <label class="form-check-label" for="customCheckinlhstate1">
                                            1
                                        </label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" value="" id="customCheckinlhstate2">
                                        <label class="form-check-label" for="customCheckinlhstate2">
                                            2
                                        </label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" value="" id="customCheckinlhstate3" checked>
                                        <label class="form-check-label" for="customCheckinlhstate3">
                                            3
                                        </label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" value="" id="customCheckinlhstate4" disabled>
                                        <label class="form-check-label" for="customCheckinlhstate4">
                                            4 (disabled)
                                        </label>
                                    </div>
                                    <small class="form-text d-block text-muted">Add <code>checked</code> attribute to any <code>.form-check-input</code></small>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h5>Color Options</h5>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Color States</label>
                                        <div class="form-check">
                                            <input class="form-check-input input-primary" type="radio" id="customCheckc1" checked>
                                            <label class="form-check-label" for="customCheckc1">primary</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input input-secondary" type="radio" id="customCheckc2" checked>
                                            <label class="form-check-label" for="customCheckc2">secondary</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input input-success" type="radio" id="customCheckc3" checked>
                                            <label class="form-check-label" for="customCheckc3">success</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input input-danger" type="radio" id="customCheckc4" checked>
                                            <label class="form-check-label" for="customCheckc4">danger</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input input-warning" type="radio" id="customCheckc5" checked>
                                            <label class="form-check-label" for="customCheckc5">warning</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input input-info" type="radio" id="customCheckc6" checked>
                                            <label class="form-check-label" for="customCheckc6">info</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input input-dark" type="radio" id="customCheckc7" checked>
                                            <label class="form-check-label" for="customCheckc7">dark</label>
                                        </div>
                                        <small class="form-text text-muted">Some help text goes here</small>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Color States</label>
                                        <div class="form-check">
                                            <input class="form-check-input input-light-primary" type="radio" id="customCheckclight1" checked>
                                            <label class="form-check-label" for="customCheckclight1">primary</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input input-light-secondary" type="radio" id="customCheckclight2" checked>
                                            <label class="form-check-label" for="customCheckclight2">secondary</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input input-light-success" type="radio" id="customCheckclight3" checked>
                                            <label class="form-check-label" for="customCheckclight3">success</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input input-light-danger" type="radio" id="customCheckclight4" checked>
                                            <label class="form-check-label" for="customCheckclight4">danger</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input input-light-warning" type="radio" id="customCheckclight5" checked>
                                            <label class="form-check-label" for="customCheckclight5">warning</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input input-light-info" type="radio" id="customCheckclight6" checked>
                                            <label class="form-check-label" for="customCheckclight6">info</label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input input-light-dark" type="radio" id="customCheckclight7" checked>
                                            <label class="form-check-label" for="customCheckclight7">dark</label>
                                        </div>
                                        <small class="form-text text-muted">Some help text goes here</small>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- [ form-element ] end -->
        </div>
        <!-- [ Main Content ] end -->
    </div>
</section>
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
