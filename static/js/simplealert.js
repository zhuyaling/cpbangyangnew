var simpleAlert=function(opts){var opt={"closeAll":false,"title":"提示","content":"","buttons":{}}
var option=$.extend(opt,opts);var dialog={}
var $simpleAlert=$('<div class="simpleAlert">');var $shelter=$('<div class="simpleAlertShelter">');var $simpleAlertBody=$('<div class="simpleAlertBody">');var $simpleAlertBodyClose=$('<div class="simpleAlertBodyClose">✕</div>');var $simpleAlertBodyTitle=$('<p class="simpleAlertBodyTitle">'+option.title+'</p>');var $simpleAlertBodyContent=$('<p class="simpleAlertBodyContent">'+option.content+'</p>');dialog.init=function(){$simpleAlertBody.append($simpleAlertBodyClose).append($simpleAlertBodyContent).append($simpleAlertBodyTitle);var num=0;var only=false;var onlyArr=[];for(var i=0;i<2;i++){for(var key in option.buttons){switch(i){case 0:onlyArr.push(key);break;case 1:if(onlyArr.length<=1){only=true;}else{only=false;}
num++;var $btn=$('<button class="simpleAlertBtn simpleAlertBtn'+num+'">'+key+'</button>')
$btn.bind("click",option.buttons[key]);if(only){$btn.addClass("onlyOne")}
$simpleAlertBody.append($btn);break;}}}
$simpleAlert.append($shelter).append($simpleAlertBody);$("body").append($simpleAlert);$simpleAlertBody.show().animate({"marginTop":"-128px","opacity":"1"},300);}
$simpleAlertBodyClose.bind("click",function(){option.closeAll=false;dialog.close();})
dialog.close=function(){if(option.closeAll){$(".simpleAlertBody").animate({"marginTop":"-188px","opacity":"0"},200,function(){$(".simpleAlert").remove()});$(".simpleAlertShelter").animate({"opacity":"0"},200);}else{$simpleAlertBody.animate({"marginTop":"-188px","opacity":"0"},200,function(){$(".simpleAlert").last().remove()});$shelter.animate({"opacity":"0"},200);}}
dialog.init();return dialog;}