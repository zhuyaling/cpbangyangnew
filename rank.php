<?php
date_default_timezone_set('PRC');
error_reporting(0);
require_once 'core/MysqliDb.php';
$db    = new MysqliDb ([
    'host'     => 'localhost',
    'username' => 'root',
    'password' => '',
    'db'       => 'common',
    'port'     => 3306,
    'prefix'   => '',
    'charset'  => 'utf8'
]);
$users = $db->orderBy('score', 'desc')->get('user');
$teams = $db->orderBy('score', 'desc')->get('team');
$db->query("update `data` set visitor_count = visitor_count + 1");
?>

<!doctype html>
<html lang="zh" style="touch-action:none;touch-action:pan-y;">
<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no,email=no,adress=no"/>
    <title>2020昌平榜样</title>
    <link rel="stylesheet" type="text/css" href="static/css/simplealert.css">
    <link rel="stylesheet" type="text/css" href="static/css/index_bak.css">
    <link rel="stylesheet" type="text/css" href="static/css/base.css">
    <link rel="stylesheet" href="static/css/font_1135575_6k7r9tvtgwj.css">
    <link rel="stylesheet" href="static/css/iconfont.css">
    <style>
        .simpleAlertBtn1 {
            display: none;
        }

        .simpleAlertBtn2 {
            width: 90%;
        }

        body:before {
            width: 100%;
            height: 100%;
            content: ' ';
            position: fixed;
            z-index: -1;
            top: 0;
            left: 0;
            background-image: url(static/images/bg.jpg) !important;
            background-size: cover
        }

        .background {
            background: -webkit-linear-gradient(left, #FFC107, #F44336) !important
        }

        .background_revers {
            background: #F6FBFF !important
        }

        .color {
            color: #F6FBFF !important
        }

        .color_revers {
            color: -webkit-linear-gradient(left, #61B4F9, #A343F9) !important
        }

        .border_color {
            border-color: #F6FBFF !important
        }

        .border_color_info {
            border-color: #F6FBFF !important
        }
        .hdk-skin > img {
            width: 50%;
        }
        .cate-bar {
            display: flex;
            justify-content: space-around;
        }
        .cate-bar a {
            display: block;
            width: 33%;
            padding: 5px 20px;
            background: -webkit-linear-gradient(left, #FFC107, #F44336);
            border-radius: 5px;
            color: #fff;
        }
        .cate-bar a:first-child {
            color: #f00;
            font-weight: bold;
        }
        .team-rank {
            display: none;
        }
        .hdk-chart {
            background: url(static/images/no.jpg) no-repeat center center;
            -webkit-background-clip: text;
            -moz-background-clip: text;
            background-clip: text;
            font-size: 26px;
            font-family: "Simplified Arabic";
            font-weight: bold;
            color: transparent;
            text-align: center;
        }
        .rule {
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
            top: 4%;
            z-index: 99;
        }
        .hdk-lower-skin {
            z-index: 9999;
        }
        .hdk-order1{
            position:absolute;left:15px;margin:14px 1%;width:35px;height:50px;
            background: url(static/images/aaa.png) no-repeat center center;
        }
    </style>
</head>
<body class="color no-bar">
<div class="hdk-skin"><img  style="width:100%" src="static/images/cover.jpg">
    <!-- <p>- 排行榜 -</p> -->
<!--     <div class="cate-bar">
        <a href="javascript:" id="user-rank">个人</a>
        <a href="javascript:" id="team-rank">团队</a>
    </div> -->
<div class="rank-box user-rank">
        <?php for ($i = 0; $i < count($users); $i++):?>
            <?php  if ($i%2==0): ?>
            <a href="show.php?cate=user&id=<?php echo $users[$i]['id']; ?>" style="background:#FFF3E3" class="hdk-Player">
                <?php else: ?>
                  <a href="show.php?cate=user&id=<?php echo $users[$i]['id']; ?>" style="background:#FFFFFF" class="hdk-Player">  
                  <?php endif; ?>
                <?php if ($i+1 <= 3): ?>
                <div class="hdk-order1" >
                <!-- <div class="hdk-order" style="background-color:#FF3600"> -->
                    <?php else: ?>
                    <div class="hdk-order" style="background-color:#E00024">
                        <?php endif; ?>
                        <p><?php echo $i+1; ?></p></div>
                    <div class="hdk-chart"><?php echo $users[$i]['no']; ?></div>
                    <div class="fullnames">
                        <div class="fullname">
                        <!-- <span class=""><?php //echo $users[$i]['no']; ?>号&nbsp;&nbsp;</span> -->
                                <?php echo $users[$i]['name']; ?></div>
                    </div>
                    <!-- <p class="hide_num"><span><?php //echo $users[$i]['score']; ?>票</span></p> -->
                    <p class="hide_nu"><span><?php echo $users[$i]['score']; ?>票</span></p>
            </a>
        <?php endfor; ?>
    </div>



    <div class="rank-box team-rank">
        <?php for ($i = 0; $i < count($teams); $i++): ?>
            <a href="show.php?cate=team&id=<?php echo $teams[$i]['id']; ?>" class="hdk-Player">
                <?php if ($i+1 <= 3): ?>
                <div class="hdk-order" style="background-color:#FF3600">
                    <?php else: ?>
                    <div class="hdk-order" style="background-color:#ccc">
                        <?php endif; ?>
                        <p><?php echo $i+1; ?></p></div>
                    <div class="hdk-chart"><?php echo $teams[$i]['no']; ?></div>
                    <div class="fullnames">
                        <div class="fullname"><span class=""><?php echo $teams[$i]['no']; ?>
                                号&nbsp;&nbsp;</span><?php echo $teams[$i]['name']; ?></div>
                    </div>
                    <p class="hide_num"><span>票</span></p>
            </a>
        <?php endfor; ?>
    </div>
    <!-- <div class="hdk-clicks" id="loaduser" onclick="getList_sort()"><a>查看更多...</a></div> -->
    <div class="hdk-lower-skin">
        <div class="hdk-lower">
            <a href="index.php">
                <div class="hdk-menu"><span class="iconfont icon-home iconfont_footer"></span>
                    <p>首页</p></div>
            </a>
            <a href="javascript:">
                <div class="hdk-menu"><span class="iconfont icon-rule iconfont_footer"></span>
                    <p>规则</p></div>
            </a>
            <a href="rank.php">
                <div class="hdk-menu"><span class="iconfont icon-sort1 iconfont_footer"></span>
                    <p>排行榜</p></div>
            </a>
        </div>
    </div>
    <!-- <div class="center" style="text-align: center;"><a class="hdk-copyright color border_color" href="//user.hudongku.cn">技术支持：昌平融媒体中心</a></div> -->
    <div class="hdk-empty" style="height: 60px;"></div>
</div>

        <div class="rule" style="display: none;color: #000">
            <p style="padding: 0; text-align: center; font-family: &quot;Helvetica Neue&quot; Helvetica &quot;PingFang SC&quot; &quot;Microsoft YaHei&quot; Tahoma Arial sans-serif; font-size: 14px; margin-top: 0; margin-bottom: 10px; white-space: normal;">
                <strong style="margin: 0; padding: 0;">
                    <strong style="margin: 0; padding: 0;">
                        <img width="28" title="cd1705afbef2906.png" alt="left.png"
                             src="static/images/0e03625687334c2a997b51219f1f15b8.gif"/>
                        <span style="margin: 0; padding: 0;">&nbsp;<span
                                    style="margin: 0; padding: 0; font-size: 18px;">活动介绍</span>
                        </span>
                        &nbsp;
                        <img width="28" title="d3a6b1ad6996d5c.png" alt="right.png"
                             src="static/images/5fa6749950324369adc4d4dcc3618e47.gif"/>
                    </strong>
                </strong>
                <br/>
            </p>
            <p style="font-size: 14px;margin-top: 0;margin-bottom: 10px;white-space: normal;color: #333;text-align: justify;padding: 5px;text-indent: 2rem;line-height: 25px;">平凡力量，德润昌平。2022年，由昌平区委宣传部（区文明办）主办的“昌平榜样”主题活动共评审产生30组榜样人物作为年度候选人。根据“2022昌平榜样”主题活动工作安排，区委宣传部（区文明办）在全区统一开展“为榜样点赞”网络互动活动，为“2022昌平榜样”年度候选人点赞，传播崇德向善、见贤思齐的文明风尚。</p>

            <p style=";text-indent: 38px;line-height: 150%">
                <span style="font-family: arial helvetica sans-serif; font-size: 14px;">
                    <span style="font-family: arial helvetica sans-serif; letter-spacing: 0;"></span>
                </span>
            </p>
               <p style=";text-indent: 38px;line-height: 150%">
                <span style="font-family: arial helvetica sans-serif; font-size: 14px;">
                    <span style="font-family: arial helvetica sans-serif; letter-spacing: 0;">
                        <br/>
                    </span>
                </span>
            </p>
<p style="padding: 0; font-size: 14px; margin-top: 0; margin-bottom: 10px; white-space: normal; text-align: center;">
    <span style="margin: 0; padding: 0;">
        <strong style="margin: 0; padding: 0;">
            <img width="28" src="static/images/0e03625687334c2a997b51219f1f15b8.gif"/>
            <span style="margin: 0; padding: 0;">&nbsp;
                <span style="margin: 0; padding: 0; font-size: 18px;">活动规则</span>
            </span>&nbsp;
            <img width="28" src="static/images/5fa6749950324369adc4d4dcc3618e47.gif"/>
        </strong>
    </span>
</p>
<p style="font-size: 14px;margin-top: 0;white-space: normal;color: #333;text-align: justify;padding: 5px;text-indent: 2rem;line-height: 25px;">每个ID每天限投十票，系统将按照得票高低进行实时排名，禁止违规刷票行为。
<p style="font-size: 14px;margin-top:-10px;margin-bottom: 10px;white-space: normal;color: #333;text-align: justify;padding: 5px;text-indent: 2rem;line-height: 25px;">为确保公平公正，组委会将对投票进行实时监测，如果出现刷票行为，我们将对票数进行核减，请大家严格遵守投票规则。   
</p>
        
          <p style=";text-indent: 38px;line-height: 150%">
                <span style="font-family: arial helvetica sans-serif; font-size: 14px;">
                    <span style="font-family: arial helvetica sans-serif; letter-spacing: 0;">
                        <br/>
                    </span>
                </span>
            </p>

            <p style="margin: 0pt; white-space: normal; text-align: center;">
    &nbsp;&nbsp;<strong style="text-indent: 43px; font-size: 14px; margin: 0; padding: 0;">
        <img width="28" title="cd1705afbef2906.png" alt="left.png"
             src="static/images/0e03625687334c2a997b51219f1f15b8.gif"/>
        <span style="margin: 0; padding: 0;">&nbsp;
        <span style="margin: 0; padding: 0; font-size: 18px;">活动组织</span>
    </span>
        &nbsp;
        <img width="28" title="d3a6b1ad6996d5c.png" alt="right.png"
             src="static/images/5fa6749950324369adc4d4dcc3618e47.gif"/>
    </strong>
    <strong style="text-indent: 43px; font-size: 14px; margin: 0; padding: 0;">&nbsp;</strong>
</p>
<p style="text-indent: 2em;">
    <span style="font-size: 14px;">主办单位：中共北京市昌平区委宣传部（昌平区精神文明建设委员会办公室）</span>
</p>

<p style="text-indent: 2em;">
    <span style="font-size: 14px;">承办单位：北京永安城影视传媒中心</span>
</p>
<p style="text-indent: 2em;">
    <span style="font-size: 14px;">协办单位：昌平区融媒体中心</span>
</p>
<p>
    <br/>
</p>

            <p style="margin: 0pt; white-space: normal;"><span
                        style="font-family: &quot;arial helvetica sans-serif&quot;; font-size: 14px; text-indent: 43px;"><br/></span>
            </p>
         <p style=";text-indent: 38px;line-height: 150%">
                <span style="font-family: arial helvetica sans-serif; font-size: 14px;">
                    <span style="font-family: arial helvetica sans-serif; letter-spacing: 0;">
                        <br/>
                    </span>
                </span>
            </p>
                        <p style=";text-indent: 38px;line-height: 150%">
                <span style="font-family: arial helvetica sans-serif; font-size: 14px;">
                    <span style="font-family: arial helvetica sans-serif; letter-spacing: 0;">
                        <br/>
                    </span>
                </span>
            </p>
        </div>

<script src="static/js/jquery-3.2.1.min.js"></script>
<script>
    $(function () {
        $('.hdk-introduces').click(function () {
            $('.rule').toggle(500);
            $('.user-rank').toggle(500);
        });
        $('.hdk-lower a:nth-child(2)').click(function () {
            $('.rule').toggle(500);
            $('.user-rank').toggle(500);
        });

        $('#user-rank').click(function () {
            $('#team-rank').css({'color': '#FFF', 'fontWeight': 'normal'});
            $(this).css({'color': '#F00', 'fontWeight': 'bold'});
            $('.user-rank').show();
            $('.team-rank').hide();
        });
        $('#team-rank').click(function () {
            $('#user-rank').css({'color': '#FFF', 'fontWeight': 'normal'});
            $('.user-rank').hide();
            $(this).css({'color': '#F00', 'fontWeight': 'bold'});
            $('.team-rank').show();
        });
    })
</script>
<div class="hdk-Return-skin">
    <div class="hdk-Return">
        <div class="hdk-within" onclick="scroll_top()"><a href="javascript:;" class="top_a_sty"><span
                        class="iconfont icon-up"></span></a></div>
    </div>
</div>
</body>
</html>