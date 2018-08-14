$(function(){	

	//バリデーション
	$('form').validate({
		error: function(label) {
			     $(this).addClass("error");
			   },
		rules: {
			valid_text: {required: true}
		},
       messages: {
    	   valid_text: {
    		   required: '必須項目です'
            }
        }
	});
	
	//カレンダー
    $("#datepicker").datepicker();

    //オートコンプリート（部分一致)
    var availableTags = [ "ActionScript", "BASIC", "C", "C++",
       "COBOL", "Erlang", "Fortran", "Groovy", "Haskell",
       "Java", "JavaScript", "Lisp", "Perl", "PHP",
       "Python", "Ruby", "Scala", "Scheme" ];

    $("#tags1").autocomplete({
        source: availableTags
     });

    //オートコンプリート（前方一致)
   $("#tags2").autocomplete({
        source: function(request, response) {
            var filteredArray = $.map(availableTags, function(item) {
                if( item.toLowerCase().indexOf(request.term.toLowerCase()) == 0 ){
                    return item;
                } else{
                    return null;
                  }
              });
            response(filteredArray);
        }
   }).autocomplete('option', 'minLength', 1);
    
   //オートコンプリート（AJAX)
    var aJaxAvailableTags = [];
    $.getJSON("getMasterValueList", function(data) {
        for(var i in data){
        	aJaxAvailableTags.push(data[i].value);
        }
    });
    $("#tags-ajax").autocomplete({
        source: aJaxAvailableTags
     });

});