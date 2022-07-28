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
                            <h5 class="m-b-10">Checkbox</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                            <li class="breadcrumb-item"><a href="#!">Form Components</a></li>
                            <li class="breadcrumb-item">Checkbox</li>
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
                        <h5>Basic Checkbox</h5>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="form-group row">
                                <label class="col-3 col-form-label">Checkboxes</label>
                                <div class="col-9">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
                                        <label class="form-check-label" for="defaultCheck1">
                                            Default checkbox
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="defaultCheck2" checked>
                                        <label class="form-check-label" for="defaultCheck2">
                                            Checked checkbox
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="defaultCheck3" disabled>
                                        <label class="form-check-label" for="defaultCheck3">
                                            Disabled checkbox
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-3 col-form-label">Inline</label>
                                <div class="col-9">
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
                                        <label class="form-check-label" for="inlineCheckbox1">1</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
                                        <label class="form-check-label" for="inlineCheckbox2">2</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3" checked>
                                        <label class="form-check-label" for="inlineCheckbox3">3</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" id="inlineCheckbox4" value="option4" disabled>
                                        <label class="form-check-label" for="inlineCheckbox4">4 (disabled)</label>
                                    </div>
                                    <small class="form-text"><code>.form-check-inline</code> to any <code>.form-check</code></small>

                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-3 col-form-label">Without Labels</label>
                                <div class="col-9">
                                    <div class="form-check">
                                        <input class="form-check-input position-static" type="checkbox" id="blankCheckbox" value="option1" aria-label="...">
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input position-static" type="radio" name="blankRadio" id="blankRadio1" value="option1" aria-label="...">
                                    </div>
                                    <small class="form-text">Add <code>.position-static</code> to inputs within <code>.form-check</code> that don’t have any label text</small>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-header">
                        <h5>Custom Checkbox</h5>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="form-group row">
                                <label class="col-3 col-form-label">Checkboxes</label>
                                <div class="col-9">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                            Default checkbox
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
                                        <label class="form-check-label" for="flexCheckChecked">
                                            Checked checkbox
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDisabled" disabled>
                                        <label class="form-check-label" for="flexCheckDisabled">
                                            Disabled checkbox
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckCheckedDisabled" checked disabled>
                                        <label class="form-check-label" for="flexCheckCheckedDisabled">
                                            Disabled checked checkbox
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-3 col-form-label">Inline</label>
                                <div class="col-9">
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" value="" id="customCheckinlh1">
                                        <label class="form-check-label" for="customCheckinlh1">
                                            1
                                        </label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" value="" id="customCheckinlh2">
                                        <label class="form-check-label" for="customCheckinlh2">
                                            2
                                        </label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" value="" id="customCheckinlh3" checked>
                                        <label class="form-check-label" for="customCheckinlh3">
                                            3
                                        </label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="checkbox" value="" id="customCheckinlh4" disabled>
                                        <label class="form-check-label" for="customCheckinlh4">
                                            4 (disabled)
                                        </label>
                                    </div>
                                    <small class="form-text text-muted">Add <code>.form-check-inline</code> to any <code>.custom-control</code></small>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-3 col-form-label">Indeterminate</label>
                                <div class="col-9">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="customCheckint1">
                                        <label class="form-check-label" for="customCheckint1">
                                            Indeterminate checkbox
                                        </label>
                                    </div>
                                    <small class="form-text text-muted"><code>$('.your-checkbox').prop('indeterminate', true)</code></small>
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
                                    <input class="form-check-input input-primary" type="checkbox" id="customCheckc1" checked>
                                    <label class="form-check-label" for="customCheckc1">primary</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input input-secondary" type="checkbox" id="customCheckc2" checked>
                                    <label class="form-check-label" for="customCheckc2">secondary</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input input-success" type="checkbox" id="customCheckc3" checked>
                                    <label class="form-check-label" for="customCheckc3">success</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input input-danger" type="checkbox" id="customCheckc4" checked>
                                    <label class="form-check-label" for="customCheckc4">danger</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input input-warning" type="checkbox" id="customCheckc5" checked>
                                    <label class="form-check-label" for="customCheckc5">warning</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input input-info" type="checkbox" id="customCheckc6" checked>
                                    <label class="form-check-label" for="customCheckc6">info</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input input-dark" type="checkbox" id="customCheckc7" checked>
                                    <label class="form-check-label" for="customCheckc7">dark</label>
                                </div>
                                <small class="form-text text-muted">Some help text goes here</small>
                            </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                <label>Color States</label>
                                <div class="form-check">
                                    <input class="form-check-input input-light-primary" type="checkbox" id="customCheckclight1" checked>
                                    <label class="form-check-label" for="customCheckclight1">primary</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input input-light-secondary" type="checkbox" id="customCheckclight2" checked>
                                    <label class="form-check-label" for="customCheckclight2">secondary</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input input-light-success" type="checkbox" id="customCheckclight3" checked>
                                    <label class="form-check-label" for="customCheckclight3">success</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input input-light-danger" type="checkbox" id="customCheckclight4" checked>
                                    <label class="form-check-label" for="customCheckclight4">danger</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input input-light-warning" type="checkbox" id="customCheckclight5" checked>
                                    <label class="form-check-label" for="customCheckclight5">warning</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input input-light-info" type="checkbox" id="customCheckclight6" checked>
                                    <label class="form-check-label" for="customCheckclight6">info</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input input-light-dark" type="checkbox" id="customCheckclight7" checked>
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

<script>
    $('#customCheckint1').prop('indeterminate', true)
</script>

</body>

</html>
