$(document).ready(function()
{
    $('.create_new').click(function()
    {   console.log('click')
        var form = $("div#new_group", $(this).parent("div"))
        if(!form.is(":visible"))
            form.show();
        else
            form.hide();
    });
    $('#cancel_create').click(function(e)
    {
        var form = $("div#new_group", $(this).parent())
        e.preventDefault();
        form.hide();
    });
});