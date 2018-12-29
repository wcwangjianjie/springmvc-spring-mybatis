<!DOCTYPE html>
<!--[if IE 8]> <html lang="zh" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="zh" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="zh">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8" />
    <title>登录</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="resources/css/google-fonts.css" rel="stylesheet" type="text/css" />
    <link href="resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="resources/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN THEME GLOBAL STYLES -->
    <link href="resources/css/components-md.css" rel="stylesheet" id="style_components" type="text/css" />
    <!-- END THEME GLOBAL STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="resources/css/login.min.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL STYLES -->
    <link rel="shortcut icon" href="../resources/favicon.ico" />
</head>
<body class="login">
<!-- BEGIN LOGO -->
<div class="logo">
    <a href="index.html">
        <img src="resources/images/logo-big.png" alt="" /> </a>
</div>
<!-- END LOGO -->
<!-- BEGIN REGISTER -->
<div class="content">
    <!-- BEGIN REGISTRATION FORM -->
    <form class="login-form" action="index.html" method="post">
        <h3>注 册</h3>
        <p> 输入您的个人信息: </p>
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">姓 名</label>
            <div class="input-icon">
                <i class="fa fa-font"></i>
                <input class="form-control placeholder-no-fix" type="text" placeholder="姓 名" name="fullname" /> </div>
        </div>
        <div class="form-group">
            <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
            <label class="control-label visible-ie8 visible-ie9">邮 箱</label>
            <div class="input-icon">
                <i class="fa fa-envelope"></i>
                <input class="form-control placeholder-no-fix" type="text" placeholder="邮 箱" name="email" /> </div>
        </div>
        <p> 输入您的账户信息: </p>
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">用户名</label>
            <div class="input-icon">
                <i class="fa fa-user"></i>
                <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="用户名" name="username" /> </div>
        </div>
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">密 码</label>
            <div class="input-icon">
                <i class="fa fa-lock"></i>
                <input class="form-control placeholder-no-fix" type="password" autocomplete="off" id="register_password" placeholder="密 码" name="password" /> </div>
        </div>
        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">确认密码</label>
            <div class="controls">
                <div class="input-icon">
                    <i class="fa fa-check"></i>
                    <input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="确认密码" name="rpassword" /> </div>
            </div>
        </div>
        <div class="form-actions">
            <button type="button" onclick="location.replace('login');" class="btn red btn-outline"> 返 回 </button>
            <button type="submit" id="register-submit-btn" class="btn green pull-right"> 注 册 </button>
        </div>
    </form>
    <!-- END REGISTRATION FORM -->
</div>
<!-- END REGISTER -->

<!-- BEGIN COPYRIGHT -->
<div class="copyright"> 2017 &copy; wjj - 后台管理系统. </div>
<!-- END COPYRIGHT -->

<!--[if lt IE 9]>
<script src="resources/plugins/respond.min.js"></script>
<script src="resources/plugins/excanvas.min.js"></script>
<![endif]-->
<!-- BEGIN CORE PLUGINS -->
<script src="resources/js/jquery.min.js" type="text/javascript"></script>
<script src="resources/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="resources/plugins/js.cookie.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="resources/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="resources/plugins/backstretch/jquery.backstretch.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="resources/js/app.min.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="resources/js/login.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
</body>
</html>