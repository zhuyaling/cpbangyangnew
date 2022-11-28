// 将页面挂在jQuery对象上
$.ACTIVITY_PAGE = {

    initTimeCountdown: function () {

        var _this = this,
            endDate = new Date(ACTIVITY_DONE_DATE),
            dateStamp = endDate.getTime(),
            nowStamp = Date.now(),
            timeStamp = dateStamp - nowStamp,
            obj = Utils.calcTime(timeStamp);

        if (nowStamp > dateStamp) {
            $('.countdown-main').html('<span>0</span>天<span>0</span>时<span>0</span>分<span>0</span>秒');
            return;
        }

        $('.countdown').html('<h4><strong>该活动剩余时间</strong></h4><p class="countdown-main"><span>' + Utils.fixNumber(obj.day) + '</span>天<span>' + Utils.fixNumber(obj.hour) + '</span>时<span>' + Utils.fixNumber(obj.minute) + '</span>分<span>' + Utils.fixNumber(obj.second) + '</span>秒</p>');

        setTimeout(_this.initTimeCountdown.bind(_this), 1000);
    },

    init: function () {

        var _this = this;

        _this.initTimeCountdown();
    }
};

/**
 * =================================================================
 *                             DOM Ready
 * =================================================================
 */
$(function () {

    $.ACTIVITY_PAGE.init();
});