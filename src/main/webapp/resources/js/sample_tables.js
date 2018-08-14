$(function() {
    $("#table_add_button").on("click", function() {
        //空き番号を検索
        var max_number = 0;
        $(".input_code").each(function(index, elm) {
            var match = $(elm).prop("id").match(/^rows(\d+)\.code/);
            if (max_number < Number(match[1])) {
                max_number = Number(match[1]);
            }
            
        });
        max_number = max_number + 1;

        //行を追加
        $("#table").append(
            "<tr><td><input id='rows"+max_number+".code' type='text' value='' class='required input_code' name='rows["+max_number+"].code'/></td></td><td><input id='rows"+max_number+".value' type='text' value='' class='required' name='rows["+max_number+"].value'/></td><td><a class='table_del_button' href='#'>削除<a></td></tr>");

          //行毎のバリデーションを追加
         Sampleapp.addValidate();
    });

    $(document).on("click", ".table_del_button", function() {
        $(this).closest('tr').remove();
        return false;
    });

    //バリデーション
    $("form").validate();
    
    //行毎のバリデーションを追加
    Sampleapp.addValidate();
});