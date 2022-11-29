<?php
date_default_timezone_set('PRC');
error_reporting(0);
require_once 'const.php';
require_once 'core/MysqliDb.php';
$db = new MysqliDb ([
    'host'     => 'localhost',
    'username' => 'root',
    'password' => '123456',
    'db'       => 'common',
    'port'     => 3306,
    'prefix'   => '',
    'charset'  => 'utf8'
]);

// 选手列表
$users = $db->get('user');
$teams = $db->get('team');

// 访问量
$db->query("update `data` set visitor_count = visitor_count + 1");
$visitorCount = $db->getValue('data', 'visitor_count');
$visitorCount = ceil($visitorCount/2);
// 参与人数
// $voter = $db->getValue('vote_ctrl', "count(id)");
$voterCount = $db->getValue('data', 'voter_count');

// 投票总数
$scoreCount = $db->getValue('data', "score_count");

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
    <title>2022昌平榜样</title>
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
        .tab {
            display: none;
        }

        body:before {
            width: 100%;
            height: 100%;
            content: ' ';
            position: fixed;
            z-index: -1;
            top: 0;
            left: 0;
            background-image: url('static/images/bg1.jpg') !important;
            background-size: cover;
        }

        .background {
            background: -webkit-linear-gradient(top, #FFC107, #F44336) !important
        }

        .background_revers {
            background: #F6FBFF !important
        }

        .color {
            color: #F6FBFF 
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

        .hdk-picture {
            float: left;
            width: 47%;
            background: #FFF;
            margin: 5px 1.266%;
            border-radius: 0 0 5px 5px;
            position: relative;
        }

        .hdk-picture > a > .no {
            width: auto;
            height: auto;
            max-width: 90%;
            max-height: 90%;
            background: url(static/images/no.jpg) no-repeat center center;
            -webkit-background-clip: text;
            -moz-background-clip: text;
            background-clip: text;
            font-size: 88px;
            font-family: "Simplified Arabic";
            font-weight: bold;
            color: transparent;
            text-align: center;
            /*margin-bottom: 10px;*/
        }

        .hdk-picture > a {
            height: 120px;
        }

        .hdk-information > img {
            top: 53px;
            left: 13%;
        }

        .hdk-information > .box {
            width: 100%;
        }

        .hdk-information > .box > h5 {
            float: none;
            display: block;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        .hdk-information > .box > p {
            float: none;
        }

        .hdk-orders {
            background: #8A8A8A;
            position: absolute;
            top: -120px;
            left: 0;
            opacity: 0.8;
            border-radius: 0 0 5px 0;
            width: 50px;
            height: 20px;
            margin: 0;
        }

        .hdk-orders > p {
            color: #FFF;
            line-height: 20px;
        }
        .cate-bar {
            display: flex;
            justify-content: space-around;
        }
        .cate-bar a {
            display: block;
            width: 153px;
            height: 56px;
            line-height: 52px;
            background: url(static/images/btn.png) no-repeat;
            background-size: contain;
            color: #fff;
            font-size: 18px;
            font-weight: normal;
            filter: grayscale(50%);
        }
        .rule {
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
            top: 43%;
            z-index: 99;
        }
        .hdk-lower-skin {
            z-index: 9999;
        }
        .cate-bar a.active {
            color: #F00;
            font-weight: bold;
            filter: grayscale(0);
        }
    </style>
</head>
<body class="color no-bar">
<div class="hdk-skin">
    <div class="container">
      <!--   <div class="head-move">
            <marquee direction="left">2月8日-2月15日可进行网络投票，详情请点击“活动介绍”</marquee>
        </div> -->
        <div class="row">
            <div class="col-md-12">
                <img style="width:100%" src="static/images/banner.jpg"/>
            </div>
        </div>
    </div>
    <div class="hdk-Total">
        <li>
            <span class="color"><?php echo $voterCount?$voterCount:0 ?></span>
            <p class="color">参与数</p>
        </li>
        <li style="border-left: 1px solid #BFBFBF;">
            <span class="color"><?php echo $scoreCount?$scoreCount:0; ?></span>
            <p class="color">总投票</p>
        </li>
        <li style="border-left: 1px solid #BFBFBF;">
            <span class="color"><?php echo $visitorCount?$visitorCount:0 ?></span>
            <p class="color">访问量</p>
        </li>
    </div>
    <div class="hdk-time">
        <div class="hdk-search">
            <input type="text" name="key" value="" placeholder="请输入作品名称进行搜索..."/>
            <button>
                <span onclick="searchUser()" class="iconfont icon-search color_8a8a8a"></span>
            </button>
        </div>
        <div class="hdk-activity">
            <a>
                <div class="hdk-introduces">
                    <span class="iconfont icon-click iconfont_footer color_8a8a8a"
                          style="font-size: 30px;margin-top: 16px;"></span>
                    <p class="color_8a8a8a">活动介绍</p>
                </div>
            </a>
            <div class="hdk-End">
                <span class="iconfont icon-waiting"></span>
                <p class="color_8a8a8a">距离活动结束还有</p>
            </div>
            <div class="hdk-day">
                <p id="timecount" class="color_8a8a8a">
                    <span>0</span> 天 <span>0</span> 时 <span>0</span> 分 <span>0</span> 秒
                </p>
              
            </div>
        </div>
    <div class="hdk-time">   
    <p style=";text-indent: 38px;line-height: 150%">
        <span style="font-family: arial helvetica sans-serif; font-size: 14px;">
            <span style="font-family: arial helvetica sans-serif; letter-spacing: 0;"></span>
        </span>
    </p>
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
            <p style="font-size: 14px;margin-top: 0;margin-bottom: 10px;white-space: normal;color: #333;text-align: justify;padding: 5px;text-indent: 2rem;line-height: 25px;">为进一步加强培育和践行社会主义核心价值观，发挥“昌平榜样”在创建全国文明城区、“作风建设年”主题活动等工作中的典型引领作用，大力引导市民群众见贤思齐，立足岗位践行榜样精神，在全区形成学习榜样、推崇榜样、争当榜样的浓厚氛围，昌平区委宣传部（区文明办）继续开展2022年“昌平榜样”选树活动。活动启动以来，全区各镇街、企事业单位积极响应，推荐报送一大批先进典型人物事迹，经区委宣传部（区文明办）协同区教委、 区卫健委、团区委、区经信局等部门组织评选，今年共有30名先进典型进入年榜评选。即日起，组委会将开展为期一周的线上展示及点赞投票活动，最终综合网民投票情况及评委会意见，评选出年度“昌平榜样”。诚邀广大市民积极参与，为榜样点赞加油！</p>

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
<p style="padding: 0; font-size: 14px; margin-top: 0; margin-bottom: 10px; white-space: normal; text-align: center;">
    <span style="margin: 0; padding: 0;">
        <strong style="margin: 0; padding: 0;">
            <img width="28" src="static/images/0e03625687334c2a997b51219f1f15b8.gif"/>
            <span style="margin: 0; padding: 0;">&nbsp;
                <span style="margin: 0; padding: 0; font-size: 18px;">活动组织</span>
            </span>&nbsp;
            <img width="28" src="static/images/5fa6749950324369adc4d4dcc3618e47.gif"/>
        </strong>
    </span>
</p>

<p style="text-align: left; margin-top: 5px; text-indent: 2em;">
    <span style="font-size: 14px;">主办单位：中共北京市昌平区委宣传部（昌平区精神文明建设委员会办公室）</span>
</p>

<p style="text-align: left; margin-top: 5px; text-indent: 2em;">
    <span style="font-size: 14px;">承办单位：北京永安城影视传媒有限责任公司</span>
</p>
<p style="text-align: left; margin-top: 5px; text-indent: 2em;">
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
                    <span style="font-family: arial helvetica sans-serif; letter-spacing: 0px;">
                        <br/>
                    </span>
                </span>
            </p>
                        <p style=";text-indent: 38px;line-height: 150%">
                <span style="font-family: arial helvetica sans-serif; font-size: 14px;">
                    <span style="font-family: arial helvetica sans-serif; letter-spacing: 0px;">
                        <br/>
                    </span>
                </span>
            </p>
        </div>
    </div>
    </div>
    <div class="hdk-index-Player">
        <div class="tab user-box" id="cnt">
            <?php foreach ($users as $user): ?>
                <div class="hdk-picture">
                    <a href="show.php?cate=user&id=<?php echo $user['id']; ?>">
                    <img  src="<?php echo $user['picture']; ?>" >
                    </a>
                    <div class="hdk-information">
                        <div class="box">
                            <div class="hdk-orders"><p><?php echo $user['id']; ?>号</p></div>
                            <h5><?php echo $user['name']; ?></h5>
                            <p class="hide_num">票</p>
                        </div>
                        <span class="iconfont icon-logon logon"></span>
                        <a class="background color" href="show.php?cate=user&id=<?php echo $user['id']; ?>">投票</a>
                    </div>
                </div> 
            <?php endforeach; ?>
        </div>
        <div class="tab team-box" id="cnt">
            <?php foreach ($teams as $team): ?>
                <div class="hdk-picture">
                    <a href="show.php?cate=team&id=<?php echo $team['id']; ?>"><span class="no"><img src="<?php echo $team['picture']; ?>" > </span></a>
                    <div class="hdk-information">
                        <div class="box">
                            <div class="hdk-orders"><p><?php echo $team['id']; ?>号</p></div>
                            <h5><?php echo $team['name']; ?></h5>
                            <p class="hide_num">票</p></div>
                        <span class="iconfont icon-logon logon"></span>
                        <a class="background color" href="show.php?cate=team&id=<?php echo $user['id']; ?>">投票</a>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
        <p id="clear_p"></p></div>
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
    <div class="hdk-empty" style="height: 60px;"></div>
</div>
<div class="hdk-Return-skin">
    <div class="hdk-Return">
        <div class="hdk-within" onclick="scroll_top()">
            <a href="javascript:;" class="top_a_sty">
                <span class="iconfont icon-up"></span>
            </a>
        </div>
    </div>
</div>
</body>
<script src="static/js/jquery-3.2.1.min.js"></script>
<script src="static/js/simplealert.js"></script>
<script type="text/javascript">
    var endDateStr = "1670317200";
    var cla = 'hdk-day .color_8a8a8a';

    function TimeDown(cla, endDateStr) {
        var endDate = endDateStr * 1000;
        var nowDate = new Date();
        var totalSeconds = parseInt((endDate - nowDate) / 1000);

        var days = Math.floor(totalSeconds / (60 * 60 * 24));
        var modulo = totalSeconds % (60 * 60 * 24);
        var hours = Math.floor(modulo / (60 * 60));
        modulo = modulo % (60 * 60);
        var minutes = Math.floor(modulo / 60);
        var seconds = modulo % 60;
        var str = "<span>"+days+"</span> 天 <span>"+hours+"</span> 时 <span>"+minutes+"</span> 分 <span>"+seconds+"</span> 秒";
        $("#timecount").html(str);
        setTimeout(function () {
            TimeDown(cla, endDateStr)
        }, 1000)
        
    };
    $(function () {
        TimeDown(cla, endDateStr);
    })
</script>
<script>
    $(function () {
        var uri = window.location.search;
        var flag = uri != '' ? /type=(\w+)/.exec(uri) : null;
        var type = flag != null ? flag[1] : 'user';
        var showType = type != '' ? ('show-' + type) : 'show-user';
        $('.' + type + '-box').show();
        $('#show-' + type).addClass('active').siblings().removeClass('active');

        $('.hdk-introduces').click(function () {
            $('.rule').toggle(500);
            $('.hdk-index-Player').toggle(500);
        });
        $('.hdk-lower a:nth-child(2)').click(function () {
            $('.rule').toggle(500);
            $('.hdk-index-Player').toggle(500);
        });

        $('#show-user').click(function () {
            $(this).addClass('active').siblings().removeClass('active');
            $('.user-box').show();
            $('.team-box').hide();
        });
        $('#show-team').click(function () {
            $(this).addClass('active').siblings().removeClass('active');
            $('.user-box').hide();
            $('.team-box').show();
        });
    });

    function searchUser() {
        var key = $.trim($("input[name=key]").val());
        var showUrl = 'show.php';
        console.log(key);
        $.ajax({
            url: 'search.php',
            type: 'POST',
            dataType: 'json',
            data: {search: key}
        })
            .done(function (res) {
                console.log(res);
                var html = '';
                if (res.status == 'success' && res.data.length > 0) {
                    for (var i = 0; i < res.data.length; i++) {
                        html += '<div class="hdk-picture">';
                        // html += '<a href="' + showUrl + '?cate=' + res.data[i]['cate'] + '&id=' + res.data[i]['id'] + '"><img src="' + res.data[i]['picture'] + '"></a>';
                        html += '<a href="' + showUrl + '?cate=' + 'user' + '&id=' + res.data[i]['id'] + '"><img src="' + res.data[i]['picture'] + '"></a>';
                        html += '<div class="hdk-information">';
                        html += '<div class="box">';
                        html += '<div class="hdk-orders"><p>' + res.data[i]['no'] + '号</p></div>';
                        html += '<h5>' + res.data[i]['name'] + '</h5>';
                        html += '<p class="hide_num">票</p></div>';
                        html += '<span class="iconfont icon-logon logon"></span>';
                        // html += '<a class="background color" href="show.php?cate=' + res.data[i]['cate'] + '&id=' + res.data[i]['id'] + '">投票</a>';
                        html += '<a class="background color" href="show.php?cate=' + 'user' + '&id=' + res.data[i]['id'] + '">投票</a>';
                        html += '</div></div>';
                    }
                }
                $('.tab').html(html);
            })
            .fail(function () {
                console.log('搜索结果出错！');
            });
    }
</script>
</html>