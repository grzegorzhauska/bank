
$(window).ready(function() {

$("#ajaxform").submit(function(e){

  //alert("dupa");
    var postData = $(this).serializeArray();
    var formURL = $(this).attr("action");
    $.ajax(
    {
        url : formURL,
        type: "POST",
        data : postData,
        success:function(data, textStatus, jqXHR)
        {
          //alert("haha");
            //data: return data from server
            //console.log(data);
            //alert(data.balance);
            //alert($('#balance').html());
             $('#balance').html(data.balance);
        },
        error: function(jqXHR, textStatus, errorThrown)
        {
          //alert("hehe");
            //if fails
        }
    });
    e.preventDefault(); //STOP default action
    //e.unbind(); //unbind. to stop multiple form submit.
}
);

$( "#target" ).click(function() {
  $("#ajaxform").submit(); //Submit  the FORM
});

});