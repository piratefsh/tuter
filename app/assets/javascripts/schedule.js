$(document).ready(function()
{
    var dayColHash = new Array();
    var timeRows = new Array();
    var colorCode = new Array();
    colorCode['true'] = 'busy'
    colorCode['false'] = 'free'

    var timeSlots = $('ul#days li')
    var days = $('table.schedule th')
    var tr = $('<tr></tr>')
    var table = $('table.schedule')

    for(var i = 0; i < days.size(); i ++)
    {
        $('<td></td>').appendTo(tr)
        dayColHash[$(days[i]).html()] = i
    }

    var numHours = 24
    //add time rows
    for(var i = 0; i < numHours; i++)
    {
        var row = tr.clone();
        var humanizedHour
        var hr = i
        if(i == 0 || i == 12) hr = 12

        if(i < 12)
        {
            humanizedHour = hr + " AM"
        }
        else 
        {
            var hr2 = (hr - 12 == 0)? 12 : hr -12
            humanizedHour = hr2 + " PM"
        }

        $($('td', row).get(0)).html(humanizedHour)
        if(i >= 12) $(row).attr('class', 'pm_row')
        table.append(row)

        timeRows[i] = row
    }
    for(var i = 0; i < timeSlots.size(); i++)
    {
        var t = $(timeSlots[i])
        var day = $('p.day', t).html()
        var start = $('p.start_time', t).html()
        var end = $('p.end_time', t).html()
        var busy = $('p.busy', t).html()
        var link = $('p.link a', t).html()

        var startHour = parseInt(start.substring(0, 2))
        var endHour = parseInt(end.substring(0, 2))
        var hourDiff = endHour - startHour

        var thisTr = timeRows[startHour]
        var timeIn12Hr = convert24Hrto12Hr(start) + " to " + convert24Hrto12Hr(end)
        var all = $('<a></a>').html(timeIn12Hr).attr('href', link)

        $($('td', thisTr).get(dayColHash[day])).html(all).attr('rowspan', hourDiff).attr('class', colorCode[busy])
 
   }
})

//for format HH:MM AP
function convert24Hrto12Hr(time)
{
    var hour = parseInt(time.substring(0, 2))
    var newHour = hour
    if(hour > 12)
        newHour = hour - 12

    return "" + newHour + time.substring(2)

}