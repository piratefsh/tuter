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

// Conversion to CoffeeScript: http://js2coffee.org/
// $(document).ready ->
  // table = $("table#results_table")
  // table.tablesorter()
  // allTh = $("th")
  // i = 0
// 
  // while i < allTh.size()
    // currTh = allTh.get(i)
    // console.log $(currTh).html()
    // $(currTh).click ->
//       
      // #get column that th is in
      // col = $("th").index($(this))
      // $(table).tablesorter sortList: [[col, 0]]
// 
    // i++