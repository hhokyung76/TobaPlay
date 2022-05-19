<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
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
	<link href="https://unpkg.com/gridjs/dist/theme/mermaid.min.css" rel="stylesheet"/>
    <script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
</head>
<script type="text/javascript">
    var setCookie = function(name, value, day) {
        var date = new Date();
        date.setTime(date.getTime() + day * 60 * 60 * 24 * 1000);
        document.cookie = name + '=' + value + ';expires=' + date.toUTCString() + ';path=/';
    };

    var getCookie = function(name) {
        var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
        return value? value[2] : null;
    };

    var deleteCookie = function(name) {
        var date = new Date();
        document.cookie = name + "= " + "; expires=" + date.toUTCString() + "; path=/";
    }

    var test = function() {
        setCookie("test", "test1234", 1);
        console.log(getCookie("test"));
        deleteCookie("test");
        console.log(getCookie("test"));

        var totalheight=400;
        var totalwidth = 600;
        var height = 80;
        var width = 40;
        var divheight = totalheight / height;
        var divwidth = totalwidth / width;
        var id=1;
        //document.createElement("iframe").setAttribute("id", "tg360_inner");
        //var div3 = document.createElement("<div id='"+id+"' style=\"background:#F0E68C;width:"+width+"px;height:"+height+"px;border:solid 1px #c0c0c0;padding: 0.5em;text-align: center;float:left;\"></div>");
        //document.body.appendChild(div3);
        document.getElementById("home").src = "https://www.baeldung.com/spring-boot-custom-error-page";
        //$('#home').load("https://www.baeldung.com/spring-boot-custom-error-page");
        console.log(document.getElementById("home"));

        var tempDiv = document.getElementById("home");
        tempDiv.setAttribute("innerHTML", "<object type='text/html' data='home.html'></object>");
    }


    //var btn = document.getElementById("btn");
    // btn.addEventListener('click', event => {
    //     test();
    // });

    var getCookieForTg = function() {
        alert(getCookie("tg-id"));
    }

    function load_init() {
        var obj = new ActiveXObject("WbemScripting.SWbemLocator");
        var s = obj.ConnectServer(".");
        var properties = s.ExecQuery("SELECT * FROM ")
    }

</script>
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script>
    // var CampaignPage = {
    //     renderHome: function() {
    //         $("#home").load("https://www.baeldung.com/spring-boot-custom-error-page");
    //     }
    // }
    // $(document).ready( function() {
    //     $('#home').load("https://www.baeldung.com/spring-boot-custom-error-page");
    //     alert('good');
    // });
    jQuery(document).ready(function(){
        jQuery("#home").load("https://www.baeldung.com/spring-boot-custom-error-page");
    });
</script>
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

<div class="pc-container">
    <div class="pcoded-content">
        <!-- [ breadcrumb ] start -->
        <div class="page-header">
            <div class="page-block">
                <div class="row align-items-center">
                    <div class="col-md-12">
                        <div class="page-header-title">
                            <h5 class="m-b-10">Sample Page</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                            <li class="breadcrumb-item">Sample Page</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <!-- [ Main Content ] start -->
        <div class="row">
            <!-- [ sample-page ] start -->
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <h5>Hello card22</h5>
                    </div>
                    <div class="card-body">
                        <div id="home" style="border: 1px solid gold; padding: 10px; height: auto; min-height: 100px; overflow: auto;" width="200" height="200" src="https://www.baeldung.com/spring-boot-custom-error-page"></div>
                        <button type="button" class="btn  btn-primary" id="btn" onclick="test();">쿠키 테스트</button>
                        <button type="button" class="btn  btn-secondary" onclick="getCookieForTg();">GET TG-ID</button>
                        <button type="button" class="btn  btn-success" id="successBtn">Success</button>
                        <button type="button" class="btn  btn-danger">Danger</button>
                        <button type="button" class="btn  btn-warning">Warning</button>
                        <button type="button" class="btn  btn-info">Info</button>
                        <button type="button" class="btn  btn-light">Light</button>
                        <button type="button" class="btn  btn-dark">Dark</button>
                        <button type="button" class="btn  btn-link">Link</button>
                    </div>
                </div>
            </div>
            <!-- [ sample-page ] end -->
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

</body>

