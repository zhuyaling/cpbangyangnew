<?php
date_default_timezone_set('PRC');
error_reporting(0);
session_start();
require_once 'const.php';
require_once 'core/MysqliDb.php';
$db   = new MysqliDb ([
    'host'     => 'localhost',
    'username' => 'root',
    'password' => '123456',
    'db'       => 'common',
    'port'     => 3306,
    'prefix'   => '',
    'charset'  => 'utf8'
]);
$uid  = trim($_GET['id']);
$cate = trim($_GET['cate']);
if (!$uid || !$cate) die('不存在的数据！请返回上一页重新操作...');
switch ($cate) {
    case 'user':
        $user = $db->where("id", $uid)->getOne('user');
        break;
    case 'team':
        $user = $db->where("id", $uid)->getOne('team');
        break;
}
$db->query("update `data` set visitor_count = visitor_count + 1");
?>

<!doctype html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no,email=no,adress=no"/>
    <title>2022昌平榜样</title>
    <link rel="stylesheet" type="text/css" href="static/css/simplealert.css">
    <link rel="stylesheet" type="text/css" href="static/css/base.css">
    <script src="static/videojs/video.min.js"></script>
    <script src="static/videojs/videojs-flash.min.js"></script>
    <script src="static/videojs/zh-CN.js"></script>
    <script src="static/videojs/videojs-contrib-hls.min.js"></script>
    <link rel="stylesheet" href="static/videojs/video-js.min.css"/>

    <style>
        * {user-select: none;}
        .intro {
            /*position: relative;*/
            position: fixed;
            margin: 0 auto;
            left:0;
            right:0;
            top:0;
            /*padding: 10px 0;*/
            font-size: 19px;
            font-weight: bold;
            text-align: center;
            height:45px;
            line-height: 45px;
            background-image: url('static/images/tbg.jpg') !important;

    /*background: -webkit-linear-gradient(top, #F44336,#FFC107 ) !important;*/
        }
        .intro::before, .intro::after {
            position: absolute;
            /*position: fixed;*/
            top: 13px;
            content: '';
            width: 28px;
            height: 18px;
        }
                body:before {
            width: 100%;
            height: 100%;
            content: ' ';
            position: fixed;
            z-index: -1;
            top: 0;
            left: 0;
            background-image: url('static/images/bg.jpg') !important;
            background-size: cover;
        }
/*        .intro::before {
            left: 90px;
            background: url(static/images/0e03625687334c2a997b51219f1f15b8.gif);
            background-size: cover;
        }
        .intro::after {
            left: 255px;
            background: url(static/images/5fa6749950324369adc4d4dcc3618e47.gif);
            background-size: cover;
        }*/
        .content { 
            letter-spacing: 2px;
            text-align: justify;
            /*padding: 0 25px;*/
            width:94%;
            margin:20px auto;
            /*margin-top: 20px;*/
            background:url("static/images/t_b.png");
        }
        .content>p{
            /*margin-top: ;*/
            width:90%;
            margin:0 auto;
        }

        .btn {
            width: 120px;
            height: 30px;
            margin: 0 auto;
            text-align: center;
        }
        .btn div {
            margin: 20px 0 10px;
            padding: 5px 0;
            background: -webkit-linear-gradient(left, #FFC107, #F44336) !important;
            border-radius: 5px;
            color: #fff;
        }
        .btn div:last-child {
            margin-bottom: 30px;
        }
        .code {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(22, 33, 44, .7);
            display: none;
        }
        .code .img-box {
            width: 255px;
            height: 255px;
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            /*border:1px solid red;*/
        }
        .onlyOne {
            left: 51px!important;
        }
        .tit{
            font-size: 26px;
            color:white;
            width: 100%;
            height: 45px;
            display: block;
            line-height: 45px;
            text-align: center;
        }
                .video-box {
    position: relative;
    height: 255px;
    overflow: hidden;
}
.video-box .video-js {
    width: 100%;
    height: 100%;
}
.picture{
    /*margin:0 auto;*/
    margin-top: 45px;
    text-align:center;
}

    </style>

</head>
<body>
<div class="container">
<input type="hidden" name="userid" value="<?php echo $uid ?>">
<input type="hidden" name="usertype" value="<?php echo $cate ?>">
    <div class="intro"><?php echo $user['no'] ?> 号 <?php echo $user['name'] ?></div>
    <div class="picture" <?php if($user['img'] =='') echo "style='display:none'";?>>
        <img style="max-width: 96%;" src="<?php echo $user['img'] ?>" alt="">
    </div>

        <div class="video-box" <?php if($user['video'] =='') echo "style='display:none'";?> >
        <video id="my_video" class="edui-upload-video vjs-big-play-centered video-js" controls width="100%" height="100%"
               poster="">
            <source src="<?php echo $user['video'] ?>" type="video/mp4"/>
            <p class="vjs-no-js">To view this video please enable JavaScript, and consider upgrading to a web browser that
                <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a></p>
        </video>
    </div>
    <div class="content">
    <br />
    <?php echo $user['content'] ?>
    </div>
    <div class="btn">
        <div id="vote">投 TA 一票</div>
        <div class="back">返回上一页</div>
    </div>
</div>
<div class="code">
    <div class="img-box">
        <img src="static/images/code.png"  alt="" style="
    width: 250px;">
        <p class="tit">请在微信内打开投票</p>
        
    </div>
</div>
</body>
<script src="static/js/simplealert.js"></script>
<script src="static/js/jquery-3.2.1.min.js"></script>
<script>
    $(function () {
        $('#vote').click(function () {
            var useragent = navigator.userAgent;
            if (useragent.match(/MicroMessenger/i) != 'MicroMessenger') {
                $('.code').show();
            } else {
                <?php if (empty($_SESSION['user_openid']) || empty($_SESSION['user_nickname'])): ?>
                window.location.href = "<?php echo 'https://open.weixin.qq.com/connect/oauth2/authorize?appid=' . APPID . '&redirect_uri=' . urlencode(REDIRECT_URL) . '&response_type=code&scope=' . SCOPE . '&state=' . STATE . '#wechat_redirect'; ?>";
                <?php else:?>
                $.post("vote1.php", {
                    userId: $('input[name=userid]').val(),
                    userType: $('input[name=usertype]').val(),
                    wxOpenid: "<?php echo $_SESSION['user_openid']; ?>",
                    wxName: "<?php echo $_SESSION['user_nickname']; ?>",
                    token: "<?php echo password_hash('shuapiao4quanjia', PASSWORD_DEFAULT); ?>"
                }, function (res) {
                    var error = res.error;
                    var onlyChoseAlert = simpleAlert({
                        "content": error,
                        "buttons": {
                        "确   定": function () {
                                onlyChoseAlert.close();
                            }
                        }
                    });
                }, 'json');
                <?php endif?>
            }
        });

        $('.back').click(function () {
            var cate = window.location.search;
            var type = cate.substring(cate.indexOf('=') + 1, cate.lastIndexOf('&'));
            location.href = 'index.php?type=' + type;
        });
    });
</script>
</html>