<!DOCTYPE html>
<html lang="en">
<head>

    <link rel="icon" href="assets/images/favicon.svg" type="image/x-icon">

    <!-- font css -->
    <link rel="stylesheet" href="assets/fonts/feather.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome.css">
    <link rel="stylesheet" href="assets/fonts/material.css">

    <!-- vendor css -->
    <link rel="stylesheet" href="assets/css/style.css" id="main-style-link">
    <script src="js/main.js" type="module"></script>
</head>
<nav class="pc-sidebar ">
    <div class="navbar-wrapper">
        <div class="m-header">
            <a href="/" class="b-brand">
                <!-- ========   change your logo hear   ============ -->
                <h2><b><span class="pc-mtext"><font color="white">&nbsp;Molecule Play</font></span></b></h2>
                <%--<img src="assets/images/logo.svg" alt="" class="logo logo-lg">test
                <img src="assets/images/logo-sm.svg" alt="" class="logo logo-sm">--%>
            </a>
        </div>
        <div class="navbar-content">
            <ul class="pc-navbar">
                <li class="pc-item pc-caption">
                    <label>Navigation</label>
                </li>
                <li class="pc-item">
                    <a href="index" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">home</i></span><span class="pc-mtext">Dashboard</span></a>
                </li>
                <li class="pc-item"><a href="cookie-page" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">storefront</i></span><span class="pc-mtext">Cookie page</span></a></li>
                <li class="pc-item pc-caption">
                    <label>Elements</label>
                    <span>UI Components</span>
                </li>
                <li class="pc-item pc-hasmenu">
                    <a href="#!" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">business_center</i></span><span class="pc-mtext">Scheduler</span><span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
                    <ul class="pc-submenu">
                        <li class="pc-item"><a class="pc-link" href="job-manager">Job Manager</a></li>
                        <li class="pc-item"><a class="pc-link" href="task-manager">Task Manager</a></li>
                    </ul>
                </li>
                <li class="pc-item pc-hasmenu">
                    <a href="#!" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">business_center</i></span><span class="pc-mtext">Basic</span><span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
                    <ul class="pc-submenu">
                        <li class="pc-item"><a class="pc-link" href="bc_alert">Alert</a></li>
                        <li class="pc-item"><a class="pc-link" href="bc_button">Button</a></li>
                        <li class="pc-item"><a class="pc-link" href="bc_badges">Badges</a></li>
                        <li class="pc-item"><a class="pc-link" href="bc_breadcrumb-pagination">Breadcrumb & paggination</a></li>
                        <li class="pc-item"><a class="pc-link" href="bc_card">Cards</a></li>
                        <li class="pc-item"><a class="pc-link" href="bc_collapse">Collapse</a></li>
                        <li class="pc-item"><a class="pc-link" href="bc_carousel">Carousel</a></li>
                        <li class="pc-item"><a class="pc-link" href="bc_progress">Progress</a></li>
                        <li class="pc-item"><a class="pc-link" href="bc_modal">Modal</a></li>

                        <li class="pc-item"><a class="pc-link" href="bc_typography">Typography</a></li>
                    </ul>
                </li>
                <li class="pc-item">
                    <a href="icon-feather" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">history_edu</i></span><span class="pc-mtext">Icons</span></a>
                </li>
                <li class="pc-item pc-caption">
                    <label>Forms</label>
                </li>
                <li class="pc-item pc-hasmenu">
                    <a href="#!" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">edit</i></span><span class="pc-mtext">Forms Elements</span><span class="pc-arrow"><i data-feather="chevron-right"></i></span></a>
                    <ul class="pc-submenu">
                        <li class="pc-item"><a class="pc-link" href="form_elements">Form Basic</a></li>
                        <li class="pc-item"><a class="pc-link" href="form2_input_group">Input Groups</a></li>
                        <li class="pc-item"><a class="pc-link" href="form2_checkbox">Checkbox</a></li>
                        <li class="pc-item"><a class="pc-link" href="form2_radio">Radio</a></li>
                    </ul>
                </li>
                <li class="pc-item pc-caption">
                    <label>table</label>
                </li>
                <li class="pc-item">
                    <a href="tbl_bootstrap" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">table_rows</i></span><span class="pc-mtext">Bootstrap table</span></a>
                </li>
                <li class="pc-item pc-caption">
                    <label>Chart & Maps</label>
                    <span>Tones of readymade charts</span>
                </li>
                <li class="pc-item">
                    <a href="chart-apex" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">bubble_chart</i></span><span class="pc-mtext">Chart</span></a>
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
                        <li class="pc-item"><a class="pc-link" href="auth-signup" target="_blank">Sign up</a></li>
                        <li class="pc-item"><a class="pc-link" href="auth-signinßßß" target="_blank">Sign in</a></li>
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
                <li class="pc-item"><a href="sample-page2" class="pc-link "><span class="pc-micon"><i class="material-icons-two-tone">storefront</i></span><span class="pc-mtext">Sample page</span></a></li>

            </ul>
        </div>
    </div>
</nav>