$(document).ready(function()
{
    $('#create_new').click(function()
    {
        var form = $("div#new_group")
        if(!form.is(":visible"))
            form.show();
        else
            form.hide();
    });
    $('#cancel_create').click(function(e)
    {
        e.preventDefault();
        $("div#new_group").hide();
    });
});