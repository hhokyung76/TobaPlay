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
    <meta name="description" content="" />
    <meta name="keywords" content="">
    <meta name="author" content="Phoenixcoded" />

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
	<nav class="pc-sidebar ">
		<div class="navbar-wrapper">
			<div class="m-header">
				<a href="index.html" class="b-brand">
					<!-- ========   change your logo hear   ============ -->
					<img src="assets/images/logo.svg" alt="" class="logo logo-lg">
					<img src="assets/images/logo-sm.svg" alt="" class="logo logo-sm">
				</a>
			</div>
			<div class="navbar-content">
				<ul class="pc-navbar">
					<li class="pc-item pc-caption">
						<label>Navigation</label>
					</li>
					<li class="pc-item">
						<a href="index.html" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">home</i></span><span class="pc-mtext">Dashboard</span></a>
					</li>
					<li class="pc-item pc-caption">
						<label>Elements</label>
						<span>UI Components</span>
					</li>
					<li class="pc-item pc-hasmenu">
						<a href="#!" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">business_center</i></span><span class="pc-mtext">Basic</span><span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
						<ul class="pc-submenu">
							<li class="pc-item"><a class="pc-link" href="bc_alert.jsp">Alert</a></li>
							<li class="pc-item"><a class="pc-link" href="bc_button.jsp">Button</a></li>
							<li class="pc-item"><a class="pc-link" href="bc_badges.jsp">Badges</a></li>
							<li class="pc-item"><a class="pc-link" href="bc_breadcrumb-pagination.jsp">Breadcrumb & paggination</a></li>
							<li class="pc-item"><a class="pc-link" href="bc_card.jsp">Cards</a></li>
							<li class="pc-item"><a class="pc-link" href="bc_collapse.jsp">Collapse</a></li>
							<li class="pc-item"><a class="pc-link" href="bc_carousel.jsp">Carousel</a></li>
							<li class="pc-item"><a class="pc-link" href="bc_progress.jsp">Progress</a></li>
							<li class="pc-item"><a class="pc-link" href="bc_modal.jsp">Modal</a></li>
							<li class="pc-item"><a class="pc-link" href="bc_tabs.jsp">Tabs & pills</a></li>
							<li class="pc-item"><a class="pc-link" href="bc_typography.jsp">Typography</a></li>
						</ul>
					</li>
					<li class="pc-item">
						<a href="icon-feather.jsp" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">history_edu</i></span><span class="pc-mtext">Icons</span></a>
					</li>
					<li class="pc-item pc-caption">
						<label>Forms</label>
						<span>40+ Ready to Use From plugins</span>
					</li>
					<li class="pc-item pc-hasmenu">
						<a href="#!" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">edit</i></span><span class="pc-mtext">Forms Elements</span><span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
						<ul class="pc-submenu">
							<li class="pc-item"><a class="pc-link" href="form_elements.jsp">Form Basic</a></li>
							<li class="pc-item"><a class="pc-link" href="form2_basic.jsp">Form Options</a></li>
							<li class="pc-item"><a class="pc-link" href="form2_input_group.jsp">Input Groups</a></li>
							<li class="pc-item"><a class="pc-link" href="form2_checkbox.jsp">Checkbox</a></li>
							<li class="pc-item"><a class="pc-link" href="form2_radio.jsp">Radio</a></li>
						</ul>
					</li>
					<li class="pc-item pc-caption">
						<label>table</label>
						<span>Advance Datatable Integrated</span>
					</li>
					<li class="pc-item">
						<a href="tbl_bootstrap.html" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">table_rows</i></span><span class="pc-mtext">Bootstrap table</span></a>
					</li>
					<li class="pc-item pc-caption">
						<label>Chart & Maps</label>
						<span>Tones of readymade charts</span>
					</li>
					<li class="pc-item">
						<a href="chart-apex.jsp" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">bubble_chart</i></span><span class="pc-mtext">Chart</span></a>
					</li>
					<li class="pc-item">
						<a href="map-google.html" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">my_location</i></span><span class="pc-mtext">Maps</span></a>
					</li>
					<li class="pc-item pc-caption">
						<label>Pages</label>
						<span>Redymade Pages</span>
					</li>
					<li class="pc-item pc-hasmenu">
						<a href="#!" class="pc-link"><span class="pc-micon"><i class="material-icons-two-tone">https</i></span><span class="pc-mtext">Authentication</span><span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
						<ul class="pc-submenu">
							<li class="pc-item"><a class="pc-link" href="auth-signup.jsp" target="_blank">Sign up</a></li>
							<li class="pc-item"><a class="pc-link" href="auth-signin.jsp" target="_blank">Sign in</a></li>
						</ul>
					</li>
					<li class="pc-item pc-caption">
						<label>Other</label>
						<span>Extra more things</span>
					</li>
					<li class="pc-item pc-hasmenu">
						<a href="#!" class="pc-link"><span class="pc-micon"><i class="material-icons-two-tone">list_alt</i></span><span class="pc-mtext">Menu levels</span><span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
						<ul class="pc-submenu">
							<li class="pc-item"><a class="pc-link" href="#!">Menu Level 2.1</a></li>
							<li class="pc-item pc-hasmenu">
								<a href="#!" class="pc-link">Menu level 2.2<span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
								<ul class="pc-submenu">
									<li class="pc-item"><a class="pc-link" href="#!">Menu level 3.1</a></li>
									<li class="pc-item"><a class="pc-link" href="#!">Menu level 3.2</a></li>
									<li class="pc-item pc-hasmenu">
										<a href="#!" class="pc-link">Menu level 3.3<span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
										<ul class="pc-submenu">
											<li class="pc-item"><a class="pc-link" href="#!">Menu level 4.1</a></li>
											<li class="pc-item"><a class="pc-link" href="#!">Menu level 4.2</a></li>
										</ul>
									</li>
								</ul>
							</li>
							<li class="pc-item pc-hasmenu">
								<a href="#!" class="pc-link">Menu level 2.3<span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
								<ul class="pc-submenu">
									<li class="pc-item"><a class="pc-link" href="#!">Menu level 3.1</a></li>
									<li class="pc-item"><a class="pc-link" href="#!">Menu level 3.2</a></li>
									<li class="pc-item pc-hasmenu">
										<a href="#!" class="pc-link">Menu level 3.3<span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
										<ul class="pc-submenu">
											<li class="pc-item"><a class="pc-link" href="#!">Menu level 4.1</a></li>
											<li class="pc-item"><a class="pc-link" href="#!">Menu level 4.2</a></li>
										</ul>
									</li>
								</ul>
							</li>
						</ul>
					</li>
					<li class="pc-item"><a href="sample-page.html" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">storefront</i></span><span class="pc-mtext">Sample page</span></a></li>

				</ul>
			</div>
		</div>
	</nav>
	<!-- [ navigation menu ] end -->
	<!-- [ Header ] start -->
	<header class="pc-header ">
		<div class="header-wrapper">
			<div class="mr-auto pc-mob-drp">
				<ul class="list-unstyled">
					<li class="dropdown pc-h-item">
						<a class="pc-head-link active dropdown-toggle arrow-none mr-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
							Level
						</a>
						<div class="dropdown-menu pc-h-dropdown">
							<a href="#!" class="dropdown-item">
								<i class="material-icons-two-tone">account_circle</i>
								<span>My Account</span>
							</a>
							<div class="pc-level-menu">
								<a href="#!" class="dropdown-item">
									<i class="material-icons-two-tone">list_alt</i>
									<span class="float-right"><i data-feather="chevron-right" class="mr-0"></i></span>
									<span>Level2.1</span>
								</a>
								<div class="dropdown-menu pc-h-dropdown">
									<a href="#!" class="dropdown-item">
										<i class="fas fa-circle"></i>
										<span>My Account</span>
									</a>
									<a href="#!" class="dropdown-item">
										<i class="fas fa-circle"></i>
										<span>Settings</span>
									</a>
									<a href="#!" class="dropdown-item">
										<i class="fas fa-circle"></i>
										<span>Support</span>
									</a>
									<a href="#!" class="dropdown-item">
										<i class="fas fa-circle"></i>
										<span>Lock Screen</span>
									</a>
									<a href="#!" class="dropdown-item">
										<i class="fas fa-circle"></i>
										<span>Logout</span>
									</a>
								</div>
							</div>
							<a href="#!" class="dropdown-item">
								<i class="material-icons-two-tone">settings</i>
								<span>Settings</span>
							</a>
							<a href="#!" class="dropdown-item">
								<i class="material-icons-two-tone">support</i>
								<span>Support</span>
							</a>
							<a href="#!" class="dropdown-item">
								<i class="material-icons-two-tone">https</i>
								<span>Lock Screen</span>
							</a>
							<a href="#!" class="dropdown-item">
								<i class="material-icons-two-tone">chrome_reader_mode</i>
								<span>Logout</span>
							</a>
						</div>
					</li>
				</ul>
			</div>
			<div class="ml-auto">
				<ul class="list-unstyled">
					<li class="dropdown pc-h-item">
						<a class="pc-head-link dropdown-toggle arrow-none mr-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
							<i class="material-icons-two-tone">search</i>
						</a>
						<div class="dropdown-menu dropdown-menu-right pc-h-dropdown drp-search">
							<form class="px-3">
								<div class="form-group mb-0 d-flex align-items-center">
									<i data-feather="search"></i>
									<input type="search" class="form-control border-0 shadow-none" placeholder="Search here. . .">
								</div>
							</form>
						</div>
					</li>
					<li class="dropdown pc-h-item">
						<a class="pc-head-link dropdown-toggle arrow-none mr-0" data-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
							<img src="assets/images/user/avatar-2.jpg" alt="user-image" class="user-avtar">
							<span>
								<span class="user-name">Joseph William</span>
								<span class="user-desc">Administrator</span>
							</span>
						</a>
						<div class="dropdown-menu dropdown-menu-right pc-h-dropdown">
							<div class=" dropdown-header">
								<h5 class="text-overflow m-0"><span class="badge bg-light-warning">Trial</span></h5>
							</div>
							<a href="user-profile.html" class="dropdown-item">
								<i class="material-icons-two-tone">account_circle</i>
								<span>Profile</span>
							</a>

							<a href="auth-lockscreen.html" class="dropdown-item">
								<i class="material-icons-two-tone">https</i>
								<span>Lock Screen</span>
							</a>
							<a href="auth-signin-3.html" class="dropdown-item">
								<i class="material-icons-two-tone">chrome_reader_mode</i>
								<span>Logout</span>
							</a>
						</div>
					</li>
				</ul>
			</div>

		</div>
	</header>
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
                            <h5 class="m-b-10">Form Elements</h5>
                        </div>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                            <li class="breadcrumb-item"><a href="#!">Form Components</a></li>
                            <li class="breadcrumb-item">Form basic</li>
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
                <!-- Basic Inputs -->
                <div class="card">
                    <div class="card-header">
                        <h5>Basic Inputs</h5>
                    </div>
                    <div class="card-body">
                        <div class="alert alert-primary">
                            <div class="media align-items-center">
                                <i class="feather icon-alert-circle h2"></i>
                                <div class="media-body ml-3">
                                    Basic HTML form components with custom style.
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label">Email address</label>
                            <input type="email" class="form-control" placeholder="Enter email">
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                            <small>Your password must be between 8 and 30 characters.</small>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="exampleSelect1">Select</label>
                            <select class="form-control" id="exampleSelect1">
                                <option>Option 1</option>
                                <option>Option 2</option>
                                <option>Option 3</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="form-label" for="exampleSelect2">Multiple select</label>
                            <select multiple="" class="form-control" id="exampleSelect2">
                                <option>Option 1</option>
                                <option>Option 2</option>
                                <option>Option 3</option>
                            </select>
                            <small>Hold shift or press ctrl for multi select.</small>
                        </div>
                        <div class="form-group mb-0">
                            <label class="form-label" for="exampleTextarea">Textarea</label>
                            <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
                        </div>
                    </div>
                    <div class="card-footer">
                        <button class="btn btn-primary mr-2">Submit</button>
                        <button type="reset" class="btn btn-light">Reset</button>
                    </div>
                </div>
                <!-- HTML Input Types -->
                <div class="card ">
                    <div class="card-header">
                        <h5>HTML Input Types</h5>
                    </div>
                    <div class="card-body">
                        <div class="alert alert-primary">
                            <div class="media align-items-center">
                                <i class="feather icon-alert-circle h2"></i>
                                <div class="media-body ml-3">
                                    Here are the different input types you can use in HTML. Check more at <a href="https://www.w3schools.com/html/html_form_input_types.asp" rel="nofollow">W3Schools</a>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="demo-text-input" class="col-form-label">Simple Input Text</label>
                            <input class="form-control" type="text" value="John Doe" id="demo-text-input">
                        </div>
                        <div class="form-group">
                            <label for="demo-number-input" class="col-form-label">Number</label>
                            <input class="form-control" type="number" value="100" id="demo-number-input">
                        </div>
                        <div class="form-group">
                            <label for="demo-tel-input" class="col-form-label">Telephone</label>
                            <input class="form-control" type="tel" value="+918888888888" id="demo-tel-input">
                        </div>
                        <div class="form-group">
                            <label for="demo-email-input" class="col-form-label">Email</label>
                            <input class="form-control" type="email" value="demo@example.com" id="demo-email-input">
                        </div>
                        <div class="form-group">
                            <label for="demo-password-input" class="col-form-label">Password</label>
                            <input class="form-control" type="password" value="password123" id="demo-password-input">
                        </div>
                        <div class="form-group">
                            <label for="demo-input-file" class="col-form-label">File</label>
                            <input class="form-control" type="file" id="demo-input-file">
                        </div>
                        <div class="form-group">
                            <label for="demo-multi-input-file" class="col-form-label">Multi Files</label>
                            <input class="form-control" type="file" id="demo-multi-input-file" multiple>
                            <small>Try selecting more than one file when browsing for files.</small>
                        </div>
                        <div class="form-group">
                            <label for="demo-URL-input" class="col-form-label">URL</label>
                            <input class="form-control" type="url" value="https://validator.w3.org/" id="demo-URL-input">
                        </div>
                        <div class="form-group">
                            <label for="demo-search-input" class="col-form-label">Search</label>
                            <input class="form-control" type="search" value="Best Admin Template" id="demo-search-input">
                            <small>a search field behaves like a regular text field</small>
                        </div>
                        <div class="form-group">
                            <label for="demo-datetime-local" class="col-form-label">Date Time Local</label>
                            <input class="form-control" type="datetime-local" value="2021-12-31T04:03:20" id="demo-datetime-local">
                        </div>
                        <div class="form-group">
                            <label for="demo-date-only" class="col-form-label">Date only</label>
                            <input class="form-control" type="date" value="2021-12-31" id="demo-date-only">
                        </div>
                        <div class="form-group">
                            <label for="demo-time-only" class="col-form-label">Time only</label>
                            <input class="form-control" type="time" value="04:03:20" id="demo-time-only">
                        </div>
                        <div class="form-group">
                            <label for="demo-month-only" class="col-form-label">Month only</label>
                            <input class="form-control" type="month" value="2021-12" id="demo-month-only">
                        </div>
                        <div class="form-group">
                            <label for="demo-week-only" class="col-form-label">Week only</label>
                            <input class="form-control" type="week" value="2021-W41" id="demo-week-only">
                        </div>
                        <div class="form-group">
                            <label for="demo-color-input" class="col-form-label">Color</label>
                            <input class="form-control" type="color" value="#7267EF" id="demo-color-input">
                        </div>
                        <div class="form-group mb-0">
                            <label for="demo-range-input" class="col-form-label">Range</label>
                            <input class="form-range" type="range" min="0" max="50" id="demo-range-input">
                        </div>
                    </div>
                    <div class="card-footer">
                        <button class="btn btn-primary mr-2">Submit</button>
                        <button class="btn btn-secondary">Cancel</button>
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="card">
                    <div class="card-header">
                        <h5>Sizing</h5>
                    </div>
                    <div class="card-body">
                        <div class="alert alert-primary">
                            <div class="media align-items-center">
                                <i class="feather icon-alert-circle h2"></i>
                                <div class="media-body ml-3">
                                    Input sizing using <code>.form-control-lg</code> and <code>.form-control-sm</code> class.
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <input class="form-control form-control-sm" type="text" placeholder=".form-control-sm">
                            <small><code>.form-control-sm</code></small>
                        </div>
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="Default Input">
                            <small><code>.form-control</code></small>
                        </div>
                        <div class="form-group">
                            <input class="form-control form-control-lg" type="text" placeholder=".form-control-lg">
                            <small><code>.form-control-lg</code></small>
                        </div>
                        <hr>
                        <div class="form-group">
                            <label class="form-label">Large select</label>
                            <select class="form-control form-control-lg">
                                <option>Option 1</option>
                                <option>Option 2</option>
                                <option>Option 3</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="form-label">Default select</label>
                            <select class="form-control">
                                <option>Option 1</option>
                                <option>Option 2</option>
                                <option>Option 3</option>
                                <option>Option 4</option>
                            </select>
                        </div>
                        <div class="form-group mb-0">
                            <label class="form-label">Small select</label>
                            <select class="form-control form-control-sm">
                                <option>Option 1</option>
                                <option>Option 2</option>
                            </select>
                        </div>
                        <div class="card-footer">
                            <button class="btn btn-primary mr-2">Submit</button>
                            <button type="reset" class="btn btn-light">Reset</button>
                        </div>
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
                            <button class="btn btn-primary mr-2">Submit</button>
                            <button type="reset" class="btn btn-light">Reset</button>
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
