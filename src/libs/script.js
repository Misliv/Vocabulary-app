function fill (Value) {
    $('#search').val(Value);

    $('#display').hide();
}

$(document).ready(function () {
    $("search").ready(function () {
     var woord = $('#search').val();

     if (woord == "") {
         $("#display").html("");
     }
     else {
         $.ajax({
             type: "POST",
             url: "ajax.php",
             data: {
                 search: woord
             },
             success: function (html) {
                 $("#display").html(html).show();
             }
         });
     }
    });
})