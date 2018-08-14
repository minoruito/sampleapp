$(function(){	
	//ポップアップ１（メッセージのみ）
	$("#popup1").dialog({
		autoOpen: false,
		modal: true,
		buttons: [{
			text:"OK",
			click: function() {
				$(this).dialog('close');
			}
		}]
	})
	//ポップアップ１ボタンクリック時ハンドラー
	$("#popup1_button").on("click", function() {
		$("#popup1").dialog('open');
	});
	
	//ポップアップ２（テキスト反映）
	$("#popup2").dialog({
		autoOpen: false,
		modal: true,
		buttons: [
			{
				text:"OK",
				click: function() {
					$("#popup2_result").val($("#popup2_input").val());
					$(this).dialog('close');
				}
			},
			{
				text:"CANCEL",
				click: function() {
					$(this).dialog('close');
				}
			}
		]
	});

	//ポップアップ２ボタンクリック時ハンドラー
	$("#popup2_button").on("click", function() {
		$("#popup2").dialog('open');
	});	
	
	//ポップアップ２ヒント表示
	$(".hint_div").tooltip({
		open: function (event, ui) {
			ui.tooltip.css("min-width", "400px");
		}
    });
	
	//ポップアップ３（検索）
	$("#popup3").dialog({
		autoOpen: false,
		modal: true,
		width:500,
	});
	
	//ポップアップ３ボタンクリック時ハンドラー
	$("#popup3_button").on("click", function() {
		$("#popup3").dialog('open');
	});
	
	//ポップアップ３ 検索ボタンクリック時ハンドラー
	$("#popup3_form").on("submit", function() {
    	var val = $("#popup3_input").val();
	    $.getJSON("searchMasterValue", {value: val}, function(data) {
	    	 $("#popup3_search_result").children().remove();
	        for(var i in data){
	        	$("#popup3_search_result").append("<ul><li><a href='' class='popup3_search_result_row' data-row='"+data[i].value+"'>"+data[i].code+"</a></li><li>"+data[i].value+"</li></ul>")
	        }
	        
	    });		
		return false;
	});

	//検索結果行選択時イベントハンドラー
	$(document).on("click", ".popup3_search_result_row", function() {
		var row = $(this).data('row');
		$("#popup3_result").val(row);
		$("#popup3").dialog('close');
		return false;
	});
});