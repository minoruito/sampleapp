var Sampleapp = {};
//行毎のバリデーション追加関数
Sampleapp.addValidate = function() {
    $(".required").each(function() {
        $(this).rules('add', {
            required : true,
            messages : {
                required : '必須項目です'
            }
        });
    });
}

$(function(){	
	//日付ピッカーの日本語設定
    $.datepicker.regional['ja'] = {
        closeText: '閉じる',
        prevText: '<前',
        nextText: '次>',
        currentText: '今日',
        monthNames: ['1月','2月','3月','4月','5月','6月',
        '7月','8月','9月','10月','11月','12月'],
        monthNamesShort: ['1月','2月','3月','4月','5月','6月',
        '7月','8月','9月','10月','11月','12月'],
        dayNames: ['日曜日','月曜日','火曜日','水曜日','木曜日','金曜日','土曜日'],
        dayNamesShort: ['日','月','火','水','木','金','土'],
        dayNamesMin: ['日','月','火','水','木','金','土'],
        weekHeader: '週',
        dateFormat: 'yy/mm/dd',
        firstDay: 0,
        isRTL: false,
        showMonthAfterYear: true,
        yearSuffix: '年'};
    $.datepicker.setDefaults($.datepicker.regional['ja']);

    //マスタ取得（AJAX)
   $("input[type=button].ajax").on("click", function() {
    	var target = $(this).prop("id").slice(0,-7);
    	var val = $("#"+target).val();
    	if (val != "") {
            $.getJSON("getMasterValue", {code: val}, function(data) {
            	$("#"+target +"_value").val(data.value);
                });
    	} else {
    		$("#"+target +"_value").val("");
    	}
    });

});