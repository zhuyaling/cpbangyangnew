<?php
date_default_timezone_set('PRC');
error_reporting(1);
require_once 'core/MysqliDb.php';
$param = trim($_POST['search']);
if ($param) {
    require_once 'core/MysqliDb.php';

    $db = new MysqliDb ([
        'host'     => 'localhost',
        'username' => 'root',
        'password' => '123456',
        'db'       => 'common',
        'port'     => 3306,
        'prefix'   => '',
        'charset'  => 'utf8']);

    // $type = preg_match("/^[1-9]\d*$/", $param) ? 1 : 0;
    $type = preg_match("/^[1-9]\d*$/", $param) ? 1 : 0;
    switch ($type) {
        case 1:
            $user = $db->where('id', $param)->get('user');
            break;
        case 0:
            $user = $db->where('name', "%$param%", 'like')->get('user');
            if ($user) {
                $user[0]['cate'] = 'user';
                echo json_encode(['status' => 'success', 'data' => $user]);
                die;
                break;
            } else {
                $team = $db->where('name', "%$param%", 'like')->get('team');
                if ($team) {
                    $team[0]['cate'] = 'team';
                    echo json_encode(['status' => 'success', 'data' => $team]);
                    die;
                }
            }
            break;
    }

    echo json_encode(['status' => 'success', 'data' => $user]);
    die;
}
echo json_encode(['status' => 'empty']);
die;
