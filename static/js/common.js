var ACTIVITY_DONE_DATE = endtime; // 活动结束日期

var Utils = {}; // 工具方法

// 格式化数字为2位
Utils.fixNumber = function (num) {

    return ('0' + num).slice(-2);
};

// 返回时间段对象
Utils.calcTime = function (timestamp) {

    var dayStamp = 24 * 60 * 60 * 1000, // 每天毫秒数
        hourStamp = 60 * 60 * 1000, // 每小时毫秒数
        minuteStamp = 60 * 1000; // 每分钟毫秒数

    var hourMill = timestamp % dayStamp, // 除去所有整日的毫秒数
        minuteMill = hourMill % hourStamp, // 除去所有整小时的毫秒数
        secondMill = minuteMill % minuteStamp; // 除去所有整分钟的毫秒数

    var obj = {};

    obj.day = Math.floor(timestamp / dayStamp);
    obj.hour = Math.floor(hourMill / hourStamp);
    obj.minute = Math.floor(minuteMill / minuteStamp);
    obj.second = Math.floor(secondMill / 1000);

    return obj;
};