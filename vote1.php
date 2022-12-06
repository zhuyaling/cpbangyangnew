<?php
/**
 * vote.php.
 * Author: Lee
 * DateTime: 2019/7/8 008 13:44:20
 */
error_reporting(0);
ini_set('display_errors', 'off');
date_default_timezone_set("Asia/Shanghai");

if (!$_POST) {
    echo json_encode(['error' => '非法请求！']);
    die;
}
$token = trim($_POST['token']);
if (!password_verify('shuapiao4quanjia', $token)) {
    echo json_encode(['error' => '错误请求！']);
    die;
}

$start = strtotime('2022-11-30 00:00:00');
$end   = strtotime('2022-12-7 17:00:00');
$now   = time();

if ($start > $now) {
    echo json_encode(['error' => '活动未开始！']);
    die;
}

if ($now > $end) {
    echo json_encode(['error' => '活动已结束！']);
    die;
}

$userId   = trim($_POST['userId']);
$userType   = trim($_POST['userType']);
$wxOpenid = trim($_POST['wxOpenid']);
$wxName   = trim($_POST['wxName']);
$date = date('Y-m-d');
$time = date('H:i:s');
// $times = 0;

if (!$userId || !$userType || !$wxOpenid || !$wxName) {
    echo json_encode(['error' => '请求内容出错！']);
    die;
}

require_once 'core/MysqliDb.php';
$db = new MysqliDb ([
    'host'     => 'localhost',
    'username' => 'root',
    'password' => '',
    'db'       => 'common',
    'port'     => 3306,
    'prefix'   => '',
    'charset'  => 'utf8'
]);
$times = $db->where("voter_wxid", $wxOpenid)->where("date", $date)->where('user_type', $userType)->getValue('control', 'count(voter_wxid)');
$isValid = $userType == 'user' ? 10 : 5;
$type = $userType == 'user' ? '先进个人' : '先进群体';
if ($times >= $isValid) {
    echo json_encode(['error' => "今日投票次数已达上限！"]);
    die;
}
if ($times >= 1) {
    $data = ['user_id'=>$userId, 'user_type'=>$userType, 'voter_wxid'=>$wxOpenid, 'voter_wxname'=>$wxName, 'date'=>$date, 'time'=>$time, 'ip'=>$_SERVER['REMOTE_ADDR']];
    if($wxName=="CH"){
        echo json_encode(['error' => '禁止刷票！']);
        die;
    }
    $db->startTransaction();
    $res = $db->insert('control', $data);
    $db->where('id', 1);
    $data1 = ['score_count' => $db->inc()];
    $res1 = $db->update('data', $data1);
    if ($userType == 'user') {
        $db->where('id', $userId);
        $data2 = ['score' => $db->inc()];
        $res2 = $db->update('user', $data2);
    } else {
        $db->where('id', $userId);
        $data2 = ['score' => $db->inc()];
        $res2 = $db->update('team', $data2);
    }
    if ($res && $res1 && $res2) {
        $db->commit();
        echo json_encode(['error' => '投票成功！']);
        die;
    }
    $db->rollback();
    echo json_encode(['error' => '服务器走丢了...']);
    die;
}

$data = ['user_id'=>$userId, 'user_type'=>$userType, 'voter_wxid'=>$wxOpenid, 'voter_wxname'=>$wxName, 'date'=>$date, 'time'=>$time, 'ip'=>$_SERVER['REMOTE_ADDR']];
$db->startTransaction();
$res = $db->insert('control', $data);
$db->where('id', 1);
$data1 = ['voter_count' => $db->inc(), 'score_count' => $db->inc()];
$res1 = $db->update('data', $data1);
if ($userType == 'user') {
        $db->where('id', $userId);
        $data2 = ['score' => $db->inc()];
        $res2 = $db->update('user', $data2);
    } else {
        $db->where('id', $userId);
        $data2 = ['score' => $db->inc()];
        $res2 = $db->update('team', $data2);
    }
if ($res && $res1 && $res2) {
    $db->commit();
    echo json_encode(['error' => '投票成功！']);
    die;
}
$db->rollback();
echo json_encode(['error' => '服务器跑丢了...']);
die;