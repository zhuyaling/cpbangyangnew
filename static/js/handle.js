var $audioBtn = $('#audio-btn');
$audioBtn.on('click', function () {
    var audio = document.getElementById('music');
    if (audio.paused) {
        audio.play();
        $audioBtn.removeClass('off').addClass('on').find('div').addClass('rotate')
    } else {
        audio.pause();
        $audioBtn.removeClass('on').addClass('off').find('div').removeClass('rotate')
    }
});

$(window).scroll(function () {
    start();
    var top = $(window).scrollTop();
    var wh_ws = $(window).height() + $(window).scrollTop();
    var of_set = $(".hdk-empty").offset().top;
    if (top > 350) {
        $(".hdk-within").slideDown("slow")
    } else {
        $(".hdk-within").slideUp("slow")
    }
    var flag = $("input[name=hide_flag]").val();
    if (flag == 1 && of_set <= wh_ws) {
        $("input[name=hide_flag]").val(0);
        if (domain == "index.php") {
            getList()
        } else if (domain == "paimin.php") {
        }
    }
});
$('.menu').click(function () {
    $(this).addClass('menu_border');
    $('.menu').not($(this)).removeClass('menu_border');
    $(this).children("li").show();
    $('.menu').not($(this)).children("li").hide()
});
$('.menu').click(function () {
    val = $(this).children('span').html();
    $('.var').html(val)
});

function scroll_top() {
    $('html, body').animate({scrollTop: 0}, 'slow')
}

function getList(page) {
    if (typeof private_getList == 'function') {
        private_getList(page)
    } else {
        add_load();
        if (!page) {
            var l = $(".tab .hdk-picture").length
        } else {
            var l = 0
        }
        var key = $("input[name=key]").val();
        if (!key) {
            key = ""
        }
        var groupName = $("input[name=groupName]").val();
        if (!groupName || groupName == "all" || key) {
            groupName = ""
        }
        $.ajaxSettings.async = false;
        var url = "?vid=" + vid + "&up=y&key=" + key + "&groupName=" + groupName + "&sortField=" + sortField + "&sortBy=" + sortBy + "&page=" + l;
        ctjURL = url;
        setTimeout(function () {
            $.getJSON(ctjURL, function (data) {
                var Cnt = "";
                var recordCount;
                var datas;
                var page_ = 0;
                var isall = 'T';
                if (!data) {
                    recordCount = 0;
                    datas = 0
                } else {
                    recordCount = data.rsCount;
                    datas = data.data;
                    page_ = data.page_;
                    isall = data.isall
                }
                if (recordCount == 0) {
                    $(".tab").html("<a href='javascript:void(0);' class='weui-media-box weui-media-box_appmsg' style='display: block;color:#fff;text-align:center' >暂无选手！</a>")
                } else {
                    for (var i = 0; i < datas.length; i++) {
                        if (datas[i].field_status) {
                            var field_str = datas[i].field_status;
                            if (field_str.indexOf("name") > -1) {
                                datas[i].name = "***"
                            }
                            if (field_str.indexOf("content") > -1) {
                                datas[i].content = "***"
                            }
                        }
                        if (hideshow_flag3) {
                            hideshow_flag3 = "hide_num"
                        }
                        if (hideshow_flag1) {
                            hideshow_flag1 = "hide_num"
                        }
                        var movie = '';
                        if (datas[i].movie) {
                            movie = '<img src="/currency/img/play-video.png" style="position: absolute;width: 32px;">'
                        }
                        if (datas[i].img) {
                            var imgTag = '<img class="weui-media-box__thumb" src="/currency/img/loading.png" data-src="' + datas[i].img + '" onerror="this.src=\'/timg.jpg\'">'
                        } else {
                            var imgTag = ''
                        }
                        var str = '';
                        str += '<div class="hdk-picture">';
                        str += '<a onclick="href_locator(\'' + datas[i].pid + '\')">' + imgTag + movie + '</a>';
                        str += '<div class="hdk-information" >';
                        str += '<div class="box" onclick="href_locator(\'' + datas[i].pid + '\')">';
                        str += '<div class="hdk-orders ' + hideshow_flag3 + '" onclick="href_locator(\'' + datas[i].pid + '\')">';
                        str += '<p>' + datas[i].pid + '号</p>';
                        str += '</div>';
                        str += '<h5>' + datas[i].name + '</h5>';
                        str += '<p class="' + hideshow_flag1 + '">' + datas[i].votecount + '票</p>';
                        str += '</div>';
                        if (multy_locator == "F") {
                            var multy_code = '<a class="background color multyButton" onclick="add_multy_vote(this,' + datas[i].pid + ')"><span class="icon iconfont icon-default border_color"></span>选择TA</a>';
                            multy_json = getCookie("multy_json");
                            if (multy_json) {
                                var key = parseInt(datas[i].pid);
                                if (multy_json.indexOf(key) != -1) {
                                    multy_code = '<a class="p_style color multyButton" onclick="add_multy_vote(this,' + datas[i].pid + ')"><span class="icon iconfont icon-focus"></span>已选TA</a>'
                                }
                            }
                            str += multy_code
                        } else {
                            str += '<span class="iconfont icon-logon logon" onclick="href_locator(' + datas[i].pid + ')"></span>';
                            str += '<a class="background color" onclick="href_locator(' + datas[i].pid + ')">' + voteBtn + '</a>'
                        }
                        str += '</div>';
                        str += '</div>';
                        if (datas[i].voice) {
                            str = str.replace(/<audio_flag>/, "<img class='audio_img' onclick='autoPlay(this)' audio='" + datas[i].voice + "' src='/hdk_2018_1_model/images/play.png' >")
                        } else {
                            str = str.replace(/<audio_flag>/, "")
                        }
                        Cnt += str
                    }
                    if (!l) {
                        $(".tab").html(Cnt)
                    } else {
                        $(".tab").append(Cnt)
                    }
                }
                $("input[name=hide_flag]").val("1");
                if (isall == "T") {
                    $("input[name=hide_flag]").val(0);
                    jqtoast("数据加载完成", 1000)
                }
                start()
            });
            $.ajaxSettings.async = true;
            remove_load()
        }, 100)
    }
}

function getList_sort(page) {
    if (typeof private_getListSort == 'function') {
        private_getListSort(page)
    } else {
        add_load();
        if (!page) {
            var l = $("#player_list a").length;
            var page = (l / 10) + 1
        }
        var groupName = $("#select span").attr("data");
        if (!groupName || groupName == "all") {
            groupName = ""
        }
        setTimeout(function () {
            $.ajaxSettings.async = false;
            $.get("?act=sort&up=y&groupName=" + groupName + "&vid=" + vid + "&page=" + page, function (json) {
                var html = "";
                if (json) {
                    var json = JSON.parse(json);
                    if (json.result == "success") {
                        var l = $("#player_list a").length;
                        l = new Number(l);
                        if (page == 1) {
                            l = 0
                        }
                        var data = json.data;
                        var recordCount = json.rsCount;
                        var length = data.length;
                        var html = "";
                        if (length) {
                            for (var i = 0; i < length; i++) {
                                if (data[i].field_status) {
                                    var field_str = data[i].field_status;
                                    if (field_str.indexOf("name") > -1) {
                                        data[i].name = "***"
                                    }
                                }
                                var n = l + i + 1;
                                if (n == 1) {
                                    var num_style = 'style="background-color:#ff3600"'
                                } else if (n == 2) {
                                    var num_style = 'style="background-color:#fe8a00"'
                                } else if (n == 3) {
                                    var num_style = 'style="background-color:#ffd800"'
                                } else {
                                    var num_style = ''
                                }
                                if (hideshow_flag1) {
                                    hideshow_flag1 = "hide_num"
                                }
                                if (hideshow_flag3) {
                                    hideshow_flag3 = "hide_num"
                                }
                                html += '<a href="/' + data[i].pid + '" class="hdk-Player">';
                                html += '<div class="hdk-order" ' + num_style + '>';
                                html += '<p>' + n + '</p>';
                                html += '</div>';
                                html += '<div class="hdk-chart">';
                                html += '<img src="' + data[i].img + '" onerror="this.src=\'/timg.jpg\'">';
                                html += '</div>';
                                html += '<div class="fullnames">';
                                html += '<div class="fullname">';
                                html += '<span class="' + hideshow_flag3 + '">' + data[i].pid + "号  </span>" + data[i].name;
                                html += '</div></div>';
                                html += '<p class="' + hideshow_flag1 + '">' + data[i].votecount + '<span>票</span></p>';
                                html += '</a>'
                            }
                        }
                        if (length < 10) {
                            jqtoast("数据加载完成", 1000);
                            $("#loaduser").hide();
                            $("input[name=hide_flag]").val("0")
                        }
                        if (page == 1) {
                            $("#player_list").html(html)
                        } else {
                            $("#player_list").append(html)
                        }
                    }
                } else {
                    $("input[name=hide_flag]").val("0")
                }
                if (!html && json.result != "success") {
                    if (json.resume) {
                        var msg = json.resume
                    } else {
                        var msg = "网络请求超时"
                    }
                    jqtoast(msg, 1000)
                }
            });
            $.ajaxSettings.async = true;
            remove_load()
        }, 100)
    }
}

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
    $("." + cla).html("<p class='color_8a8a8a'><span>" + days + "</span> 天 <span>" + hours + "</span> 时 <span>" + minutes + "</span> 分 <span>" + seconds + "</span> 秒</p>");
    setTimeout(function () {
        TimeDown(cla, endDateStr)
    }, 1000)
}

function search_user() {
    add_load();
    var key = $("input[name=key]").val();
    if (key) {
        $(".userGroup ul  li").removeClass("active");
        $(".color").addClass("active");
        $("input[name=groupName]").val("all");
        getList(1)
    } else {
        jqtoast('请输入名称或编号搜索', 1500)
    }
    remove_load()
}



function vote(flag) {
    //
}




function slide_rule(cla) {
    var display = $(cla).css("display");
    if (display == 'block') {
        $(cla).slideUp(1500)
    } else {
        $(cla).slideDown(1500)
    }
}

start();

function start() {
    $(".weui-media-box__thumb").not("[data-isLoaded]").each(function () {
        var $node = $(this);
        if (isShow($node)) {
            loadImg($node)
        }
    })
}

function isShow($node) {
    return $node.offset().top <= $(window).height() + $(window).scrollTop()
}

function loadImg($img) {
    $img.attr("src", $img.attr("data-src"));
    $img.attr("data-isLoaded", 1)
}

function getArrIndex(arr, str) {
    if (!arr || !str) {
        return false
    }
    for (var i = 0; i < arr.length; i++) {
        if (arr[i] == str) {
            return i
        }
    }
}