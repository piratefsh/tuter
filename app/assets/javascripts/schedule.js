$(document).ready(function()
{
    var dayColHash = new Array();

    var timeSlots = $('ul#days li')
    var days = $('table.schedule th')
    var tr = $('<tr></tr>')
    var table = $('table.schedule')

    for(var i = 0; i < days.size(); i ++)
    {
        $('<td></td>').appendTo(tr)
        dayColHash[$(days[i]).html()] = i
    }

    tr.appendTo(table)
    console.log(timeSlots.size())
    for(var i = 0; i < timeSlots.size(); i++)
    {
        var t = $(timeSlots[i])
        var day = $('p.day', t).html()
        console.log(day)
        var start = $('p.start_time', t).html()
        var end = $('p.end_time', t).html()
        var link = $('p.link a', t).html()
        var thisTr = tr.clone()

        var all = $('<a></a>').html(start + " to " + end).attr('href', link)
        $($('td', thisTr).get(dayColHash[day])).html(all)

        thisTr.appendTo(table)
    }
})