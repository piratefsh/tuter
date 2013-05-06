$(document).ready(function()
{
    $("#main_tab_container").tabs({active: 2})
    $("#main_tab_container .tabs").tabs({active: 0})

    //for all links in tabs, trigger onlick when li is clicked
    $("div.tabs ul[role='tablist'] li").click(function(e)
    {
        var link = $('> a', this)

        //prevents propagation that may overflow
        //info here: http://stackoverflow.com/questions/7632125/trigger-a-click-event-on-an-inner-element
        if(e.target == link[0])
        {
            return false
        }

        link.click()

        return false
    })
});