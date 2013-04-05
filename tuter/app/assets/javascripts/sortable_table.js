$(document).ready(function()
{
    var table = $('table#results_table');
    table.tablesorter();

    var allTh = $('th');
    for( var i = 0; i < allTh.size(); i++)
    {
        var currTh = allTh.get(i);
        console.log($(currTh).html())
        $(currTh).click(function(){
            //get column that th is in
            var col = $('th').index($(this));
            $(table).tablesorter( {
                sortList: [[col,0]]
            }); 
        });
    }
});