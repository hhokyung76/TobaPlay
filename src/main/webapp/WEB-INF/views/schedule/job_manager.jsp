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
    <link rel="stylesheet" href="assets/css/common.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
    <script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5core/master/dist/ax5core.min.js"></script>
    <script type="text/javascript" src="https://cdn.rawgit.com/ax5ui/ax5ui-grid/master/dist/ax5grid.min.js"></script>
    <script type="text/javascript" src="assets/js/common.js"></script>
    <!-- vendor css -->
    <link rel="stylesheet" href="assets/css/style.css" id="main-style-link">
    <script type="text/javascript">
        var jobMode = {
            init: function() {
                // const pageMethods = CreateUpdateCampaign.methods;
                // this.parseUrl();
                //
                // const pageData = CreateUpdateCampaign.data;
                //
                // CreateUpdateCampaign.data.pageTitle = '캠페인 생성';
                //
                // if (pageData.urlParams.no != null) {
                //     CreateUpdateCampaign.data.pageTitle = '캠페인 수정';
                //     CreateUpdateCampaign.data.campaignNo = pageData.urlParams.no;
                //     pageMethods.loadData();
                //     $("#cmpPurposeType").prop('disabled', true);
                // }
                //
                // CreateUpdateCampaign.initializeActionListeners();
                // CreateUpdateCampaign.renderPage();
            },
            renderPage: function() {
                // const pageData = CreateUpdateCampaign.data;
                //
                // $("#pageTitle").text(pageData.pageTitle);
                // $("#pageSubtitle").text(pageData.pageTitle);
                // $("#mainButton").text(pageData.pageTitle);
            },
            methods: {
                saveJob: function() {
                    // if(!commonValidation("campaignForm"))
                    //     return;

                    const url = '/job/save';

                    let callAjax = new comAjax();
                    callAjax.setUrl(url);
                    callAjax.setCallback(CreateUpdateCampaign.methods.parseCreateResponse);
                    callAjax.setErrorCallback(CreateUpdateCampaign.methods.parseError);

                    let jobId = $("#jobId").val();
                    let jobName = $("#jobName").val();
                    let jobDesc = $("#jobDesc").val();
                    let cronExpr = $("#cronExpr").val();

                    callAjax.addParam('jobId', jobId);
                    callAjax.addParam('jobName', jobName);
                    callAjax.addParam('jobDesc', jobDesc);
                    callAjax.addParam('cronExpr', cronExpr);

                    // add more entries

                    if ($("#inActive").is(':checked')) {
                        callAjax.addParam('inActive', "0");
                    } else {
                        callAjax.addParam('inActive', "1");
                    }

                    callAjax.setMethodType("POST");
                    callAjax.ajax();
                }

            }
        }
        $(document.body).ready(function () {
            var API_SERVER = "http://localhost:8090";
            var jobGrid = new ax5.ui.grid();

            jobGrid.setConfig({
                target: $('[data-ax5grid="job-grid1"]'),
                columns: [
                    {key: "jobId", label: "Job ID", align: "center", width:200},
                    {key: "jobName", label: "Job 이름", width:200},
                    {key: "jobCronExpr", label: "Cron Expression", width:400}
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
                    {key: "jobId", label: "Job ID"},
                    {key: "jobName", label: "Job Name"},
                    {key: "jobCronExpr", label: "Cron Expression"}
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
                            <h5 class="m-b-10">Job Manager</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="/index">Home</a></li>
                            <li class="breadcrumb-item"><a href="#!">Scheduler</a></li>
                            <li class="breadcrumb-item">Job Manager</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- [ breadcrumb ] end -->
        <!-- [ Main Content ] start -->
        <div class="row">
            <!-- [ form-element ] start -->
            <div class="col-sm-11">
                <!-- Basic Inputs -->
                <div class="card">

                    <div class="card-body">
                        <div class="i-block"><i data-feather="trash-2"></i></div>
                        <br>
                        <div data-ax5grid="job-grid1" data-ax5grid-config="{showLineNumber: true,
                    showRowSelector: true,
                    sortable: true,
                    header: {align:'center', columnHeight: 40},
                    body: {align: 'center', columnHeight: 30}
                    }" style="height: 300px;"></div>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-body">
                        <section class="con">
                            <div class="tblViewW write">
                                <table class="tbl" width="100%" >
                                    <colgroup>
                                        <col width="160">
                                        <col width="*">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th scope="row">Job ID<span class="req"> (필수입력)</span></th>
                                            <td>
                                                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" id="jobId">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Job 이름<span class="req"> (필수입력)</span></th>
                                            <td>
                                                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" id="jobName">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Job 설명</th>
                                            <td>
                                                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" id="jobDesc"></textarea>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Job Cron Expression</th>
                                            <td>
                                                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-sm" id="cronExpr">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">비활성화</th>
                                            <td>
                                                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" id="inActive">
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div> <!-- //tblViewW -->
                        </section> <!-- //con -->
                        <div class="card-footer">
                            <div id="exampleModalCenter" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalCenterTitle">Modal Title</h5>
                                            <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                                        </div>
                                        <div class="modal-body">
                                            <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn  btn-secondary" data-dismiss="modal" onclick="jobMode.methods.saveJob();">Close</button>
                                            <button type="button" class="btn  btn-primary">Save changes</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <button class="btn btn-primary mr-2" data-toggle="modal" data-target="#exampleModalCenter" id="saveJobBtn">저 장</button>
                            <button type="reset" class="btn btn-light" id="resetJobBtn">초기화</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-5">
                <div class="card">
                    <div class="card-header">
                        <h5>Cron Expression 설명</h5>
                    </div>
                    <form>
                        <div class="card-body">
                            <div class="alert alert-primary">
                                <div class="media align-items-center">
                                    <i class="feather icon-alert-circle h2"></i>
                                    <div class="media-body ml-3">
                                        * 5분 마다 실행 ex) 00:05, 00:10. 00:15.... 
                                        <br> cron = "0 0/5 * * * *"
                                        <br>* 1시간 마다 실행 ex) 01:00, 02:00, 03:00....
                                        <br> cron = "0 0 0/1 * * *"
                                        <br>* 매일 오후 18시마다 실행 ex) 18:00
                                        <br> cron = "0 0 18 * * *"
                                        <br>* 2018년도만 매일 오후 18시마다 실행 ex) 18:00
                                        <br> cron = "0 0 18 * * * 2018"
                                        <br>* 매일 오후 18시00분-18시55분 사이에 5분 간격으로 실행 ex) 18:00, 18:05.....18:55
                                        <br> cron = "0 0/5 18 * * *"
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="card-footer">
                        </div>
                    </form>
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
