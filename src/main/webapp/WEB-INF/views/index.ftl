<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!--> <html lang="zh"> <!--<![endif]-->
<head>
    <meta charset="utf-8"/>
    <title>后台管理</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Cache-Control" content="no-siteapp">
    <meta name="description" content="template">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <link rel="shortcut icon" href="favicon.ico">
    <link href="key_logo_re.png" rel="apple-touch-icon-precomposed">
    <meta name="apple-mobile-web-app-title" content="">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <!-- load css start -->
    <link href="resources/css/google-fonts.css" rel="stylesheet" type="text/css">
    <link href="resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="resources/plugins/jquery-dataTables/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
    <link href="resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="resources/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
    <link href="resources/css/components-md.css" rel="stylesheet" id="style_components" type="text/css"/>
    <link href="resources/css/plugins-md.min.css" rel="stylesheet" type="text/css"/>
    <link href="resources/css/layout.min.css" rel="stylesheet" type="text/css"/>
    <link href="resources/css/themes/blue.min.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="resources/css/repair.css" rel="stylesheet">
    <!-- load css end -->
</head>

<body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white page-md">
<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top">
    <!-- BEGIN HEADER INNER -->
    <div class="page-header-inner ">
        <!-- BEGIN LOGO -->
        <div class="page-logo">
            <a href="index.html">
                <img src="resources/images/logo.png" alt="logo" class="logo-default"/> </a>
            <div class="menu-toggler sidebar-toggler"> </div>
        </div>
        <!-- END LOGO -->
        <!-- BEGIN RESPONSIVE MENU TOGGLER -->
        <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"> </a>
        <!-- END RESPONSIVE MENU TOGGLER -->
        <!-- BEGIN TOP NAVIGATION MENU -->
        <div class="top-menu">
            <ul class="nav navbar-nav pull-right">
                <!-- BEGIN USER LOGIN DROPDOWN -->
                <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                <li class="dropdown dropdown-user">
                    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                        <img alt="" class="img-circle" src="resources/images/avatar.png" />
                        <span class="username username-hide-on-mobile">${user.nickname} </span>
                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-default">
                        <li>
                            <a href="page_user_profile_1.html">
                                <i class="icon-user"></i> 个人信息 </a>
                        </li>
                        <li>
                            <a href="page_user_login_1.html">
                                <i class="icon-logout"></i> 退出 </a>
                        </li>
                    </ul>
                </li>
                <!-- END USER LOGIN DROPDOWN -->
            </ul>
        </div>
        <!-- END TOP NAVIGATION MENU -->
    </div>
    <!-- END HEADER INNER -->
</div>
<!-- END HEADER -->
<!-- BEGIN HEADER & CONTENT DIVIDER -->
<div class="clearfix"> </div>
<!-- END HEADER & CONTENT DIVIDER -->
<!-- BEGIN CONTAINER -->
<div class="page-container">
    <!-- BEGIN SIDEBAR -->
    <div class="page-sidebar-wrapper">
        <!-- BEGIN SIDEBAR -->
        <div id="pageSidebar" class="page-sidebar navbar-collapse collapse">
            <!-- BEGIN SIDEBAR MENU -->
            <ul class="page-sidebar-menu  page-header-fixed " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200" style="padding-top: 20px">
                <!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
                <li class="sidebar-toggler-wrapper hide">
                    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
                    <div class="sidebar-toggler"> </div>
                    <!-- END SIDEBAR TOGGLER BUTTON -->
                </li>
                <li class="sidebar-search-wrapper">
                    <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
                    <form class="sidebar-search" action="page_general_search_3.html" method="POST">
                        <a href="javascript:;" class="remove">
                            <i class="icon-close"></i>
                        </a>
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                    <a href="javascript:;" class="btn submit">
                      <i class="icon-magnifier"></i>
                    </a>
                  </span>
                        </div>
                    </form>
                    <!-- END RESPONSIVE QUICK SEARCH FORM -->
                </li>
                <li class="nav-item" v-for="lv1 in nav">
                    <a href="javascript:;" @click="" class="nav-link" :class="{'nav-toggle': lv1.child}">
                        <i class="{{lv1.icon}}"></i>
                        <span class="title" v-html="lv1.name"></span>
                        <span class="selected"></span>
                        <span class="arrow" v-if="lv1.child"></span>
                    </a>
                    <ul class="sub-menu" v-if="lv1.child">
                        <li class="nav-item" v-for="lv2 in lv1.child" :class="{active: activeName==lv2.name}">
                            <a href="javascript:;" @click="loadpage(lv2)" class="nav-link" :class="{'nav-toggle': lv2.child}">
                                <i class="{{lv2.icon}}"></i>
                                <span class="title" v-html="lv2.name"></span>
                                <span class="selected"></span>
                                <span class="arrow" v-if="lv2.child"></span>
                            </a>
                            <ul class="sub-menu" v-if="lv2.child">
                                <li class="nav-item" v-for="lv3 in lv2.child">
                                    <a href="javascript:;" @click="loadpage(lv3)" class="nav-link">
                                        <i class="{{lv3.icon}}"></i>
                                        <span class="title" v-html="lv3.name"></span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- END SIDEBAR MENU -->
        </div>
        <!-- END SIDEBAR -->
    </div>
    <!-- END SIDEBAR -->
    <!-- BEGIN CONTENT -->
    <div id="pageContentWrapper" class="page-content-wrapper">
        <!-- BEGIN CONTENT BODY -->
        <div class="page-content">
            <!-- BEGIN PAGE HEADER-->
            <!-- BEGIN PAGE BAR -->
            <div id="pageBar" class="page-bar">
                <ul class="page-breadcrumb">
                    <li>
                        <a href="index.html">Home</a>
                        <i class="fa fa-circle"></i>
                    </li>
                    <li>
                        <span>Dashboard</span>
                    </li>
                </ul>
            </div>

            <iframe id="iframeContent" src="https://www.baidu.com" frameborder="0" scrolling="yes" width="100%"></iframe>

            <!-- END PAGE BAR -->
            <!-- END PAGE HEADER-->

        </div>
        <!-- END CONTENT BODY -->
    </div>
    <!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
    <div class="page-footer-inner"> 2016 &copy; wjj. </div>
    <div class="scroll-to-top">
        <i class="icon-arrow-up"></i>
    </div>
</div>
<!-- END FOOTER -->

<!-- load js start -->
<script src="resources/js/jquery.min.js"></script>
<script src="resources/plugins/jquery-dataTables/jquery.dataTables.min.js"></script>
<!--[if lt IE 9]>
<script src="resources/plugins/respond.min.js"></script>
<script src="resources/plugins/excanvas.min.js"></script>
<script src="resources/js/if-lt-ie9.js"></script>
<![endif]-->
<script src="resources/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="resources/js/jquery.slimscroll.min.js"></script>
<script src="resources/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="resources/js/app.min.js" type="text/javascript"></script>
<script src="resources/plugins/layout.min.js" type="text/javascript"></script>
<script src="resources/js/demo.js" type="text/javascript"></script>
<script src="resources/plugins/quick-sidebar.min.js" type="text/javascript"></script>
<script src="resources/js/common.js"></script>
<script>
    //加载DOM完成之后，计算iframe的高度
    $(document).ready(function() {
        iframeHeight();
    });
</script>
<!-- load js end -->
</body>

</html>