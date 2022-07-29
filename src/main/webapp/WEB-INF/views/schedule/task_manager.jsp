<%@page contentType = "text/html;charset=utf-8"%>
<!DOCTYPE html>
<html lang="utf-8">

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
    <meta name="description" content="" />
    <meta name="keywords" content="">
    <meta name="author" content="Phoenixcoded" />

    <!-- Favicon icon -->
    <link rel="icon" href="assets/images/favicon.svg" type="image/x-icon">

    <!-- font css -->
    <link rel="stylesheet" href="assets/fonts/feather.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome.css">
    <link rel="stylesheet" href="assets/fonts/material.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
    <script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5core/master/dist/ax5core.min.js"></script>
    <script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.min.js"></script>
    <!-- vendor css -->
    <link rel="stylesheet" href="assets/css/style.css" id="main-style-link">
    <script type="text/javascript">
        $(document.body).ready(function () {
            var API_SERVER = "http://localhost:8090";
            var jobGrid = new ax5.ui.grid();

            jobGrid.setConfig({
                target: $('[data-ax5grid="job-grid1"]'),
                columns: [
                    {key: "a", label: "field A"},
                    {key: "b", label: "field B"},
                    {key: "c", label: "numbers C"},
                    {key: "d", label: "field D"},
                    {key: "e", label: "field E"},
                    {key: "f", label: "field F"},
                    {key: "g", label: "field G"},
                    {key: "h", label: "field H"}
                ]
            });
            //firstGrid.setData(gridList);
            // 그리드 데이터 가져오기
            $.ajax({
                method: "GET",
                url: API_SERVER + "/api/v1/testdatas",
                dataType : "json",
                success: function (res) {
                    console.log("res: "+res);
                    console.log("res.list: "+res.page);
                    jobGrid.setData(res.list);
                }
            });

            var taskGrid = new ax5.ui.grid();

            taskGrid.setConfig({
                target: $('[data-ax5grid="task-grid1"]'),
                columns: [
                    {key: "a", label: "field A"},
                    {key: "b", label: "field B"},
                    {key: "c", label: "numbers C"},
                    {key: "d", label: "field D"},
                    {key: "e", label: "field E"},
                    {key: "f", label: "field F"},
                    {key: "g", label: "field G"},
                    {key: "h", label: "field H"}
                ]
            });
            //firstGrid.setData(gridList);
            // 그리드 데이터 가져오기
            $.ajax({
                method: "GET",
                url: API_SERVER + "/api/v1/testdatas",
                dataType : "json",
                success: function (res) {
                    console.log("res: "+res);
                    console.log("res.list: "+res.page);
                    taskGrid.setData(res.list);
                }
            });


        });
    </script>
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
	<jsp:include page="../navi.jsp"/>
	<!-- [ navigation menu ] end -->
	<!-- [ Header ] start -->
	<jsp:include page="../header.jsp"/>
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
                            <h5 class="m-b-10">Task Manager</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="/index">Home</a></li>
                            <li class="breadcrumb-item"><a href="#!">Scheduler</a></li>
                            <li class="breadcrumb-item">Task Manager</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <!-- [ Main Content ] start -->
        <div class="row">
            <!-- [ form-element ] start -->
            <div class="col-sm-4">
                <!-- Basic Inputs -->
                <div class="card">
                    <div class="card-header">
                        <h4>Job List</h4>
                    </div>
                    <div class="card-body">
                        <div data-ax5grid="job-grid1" data-ax5grid-config="{showLineNumber: true,
                    showRowSelector: false,
                    sortable: true,
                    header: {align:'center', columnHeight: 40},
                    body: {align: 'center', columnHeight: 30}
                    }" style="height: 400px;"></div>
                    </div>
                </div>
            </div>
            <div class="col-sm-8">
                <!-- Basic Inputs -->
                <div class="card">
                    <div class="card-header">
                        <h4>Task List</h4>
                    </div>
                    <div class="card-body">
                        <div class="i-block"><i data-feather="trash-2"></i></div>
                        <br>

                        <div data-ax5grid="task-grid1" data-ax5grid-config="{showLineNumber: true,
                    showRowSelector: true,
                    sortable: true,
                    header: {align:'center', columnHeight: 40},
                    body: {align: 'center', columnHeight: 30}
                    }" style="height: 340px;"></div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">

                <div class="card">
                    <div class="card-header">
                        <h5>Input Group Sizing</h5>
                    </div>
                    <div class="card-body">
                        <div class="alert alert-primary">
                            <div class="media align-items-center">
                                <i class="feather icon-alert-circle h2"></i>
                                <div class="media-body ml-3">
                                    Add sizing class <code>.input-group-sm, .input-group-lg</code>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group input-group-sm">
                                <span class="input-group-text">Small</span>
                                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group input-group-sm">
                                <span class="input-group-text">Small</span>
                                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group input-group-sm">
                                <span class="input-group-text">Small</span>
                                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm">
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <button class="btn btn-primary mr-2">Submit</button>
                        <button class="btn btn-secondary">Cancel</button>
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h5>Input Attributes </h5>
                    </div>
                    <form>
                        <div class="card-body">
                            <div class="alert alert-primary">
                                <div class="media align-items-center">
                                    <i class="feather icon-alert-circle h2"></i>
                                    <div class="media-body ml-3">
                                        Examples of <code>autofocus, value, readonly, disabled, required</code> attributes in Input .
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="example-auto-focus">Auto focus</label>
                                <input type="email" class="form-control" placeholder="Enter email" id="example-auto-focus" autofocus>
                                <small>autofocus on page load</small>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="example-value">Value</label>
                                <input type="text" class="form-control" value="John Doe">
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="example-required">Required</label>
                                <input type="text" class="form-control" id="example-required" id="example-required" required>
                                <small>Submit the form to see it in action</small>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="example-read-only">Readonly</label>
                                <input type="text" class="form-control" value="demo@email.com" id="example-read-only" readonly>
                                <small>The input <code>readonly</code> attribute specifies that an input field is read-only</small>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="example-disabled">Disabled</label>
                                <input type="text" class="form-control" value="26" id="example-disabled" disabled>
                                <small>The value of a <code>disabled</code> input field will not be sent when submitting the form</small>
                            </div>
                            <div class="form-group mb-0">
                                <label class="form-label" for="example-disabled-select">Disabled select</label>
                                <select class="form-control" id="example-disabled-select" disabled>
                                    <option>Option 1</option>
                                    <option>Option 2</option>
                                    <option>Option 3</option>
                                </select>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLiveLabel">Modal Title</h5>
                                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <p>Woohoo, you're reading this text in a modal!</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn  btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn  btn-primary">Save changes</button>
                                    </div>
                                </div>
                            </div>
                            <button class="btn btn-primary mr-2" data-target="#exampleModalLive">저 장</button>
                            <button type="reset" class="btn btn-light">초기화</button>
                        </div>
                    </form>
                </div>
                <div class="card">
                    <div class="card-header">
                        <h5>Advance Input attributes </h5>
                    </div>
                    <form>
                        <div class="card-body">
                            <div class="alert alert-primary">
                                <div class="media align-items-center">
                                    <i class="feather icon-alert-circle h2"></i>
                                    <div class="media-body ml-3">
                                        Examples of <code>maxlength, min, max, step, pattern, list</code> attributes of Input. <br /> Submit form for checkout attribute functionality.
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="example-max-length">Max Length</label>
                                <input type="text" class="form-control" placeholder="Enter PIN" id="example-max-length" maxlength="4">
                                <small>maxlength set to 4 characters</small>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="example-datemax">Date</label>
                                <input type="date" class="form-control" id="example-datemax" max="1979-12-31">
                                <small>Enter a date before 1980-01-01</small>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="example-datemin">Date</label>
                                <input type="date" class="form-control" id="example-datemin" min="2000-01-02">
                                <small>Enter a date after 2000-01-01</small>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="example-quantity">Quantity</label>
                                <input type="number" class="form-control" id="example-quantity" min="1" max="5">
                                <small>i.e.between 1 and 5</small>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="example-steps">Points</label>
                                <input type="number" class="form-control" id="example-steps" step="3" value="1">
                                <small>step set to 3</small>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="example-country-code">Country code</label>
                                <input type="text" class="form-control" id="example-country-code" pattern="[A-Za-z]{3}" title="Three letter country code">
                                <small><code>pattern</code> attribute - three letter country code</small>
                            </div>
                            <div class="form-group mb-0">
                                <label class="form-label" for="example-data-list">List (Browsers)</label>
                                <input type="text" class="form-control" id="example-data-list" list="browsers">
                                <datalist id="browsers">
                                    <option value="Internet Explorer">
                                    <option value="Firefox">
                                    <option value="Chrome">
                                    <option value="Opera">
                                    <option value="Safari">
                                </datalist>
                                <small>The datalist tag is not supported in Safari 12.0 (or earlier).</small>
                            </div>
                        </div>
                        <div class="card-footer">
                            <button type="submit" class="btn btn-primary mr-2">Submit</button>
                            <button type="reset" class="btn btn-light">Reset</button>
                        </div>
                    </form>
                </div>
                <!-- [ form-element ] end -->
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
