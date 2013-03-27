//Code from: http://blogs.digitss.com/javascript/jquery-javascript/implementing-quick-table-search-using-jquery-filter/


// When document is ready: this gets fired before body onload <img src='http://blogs.digitss.com/wp-includes/images/smilies/icon_smile.gif' alt=':)' class='wp-smiley' /> 
$(document).ready(function(){

    var table = $('table#results_table')
    // Write on keyup event of keyword input element
    $("#keyword_search").keyup(function(){
        // When value of the input is not blank
        if( $(this).val() != "")
        {
            // Show only matching TR, hide rest of them
            $("tbody>tr", table).hide();
            $("td:contains-ci('" + $(this).val() + "')", table).parent("tr").show();
        }
        else
        {
            // When there is no input or clean again, show everything back
            $("tbody>tr", table).show();
        }
    });
});
// jQuery expression for case-insensitive filter
$.extend($.expr[":"], 
{
    "contains-ci": function(elem, i, match, array) 
    {
        return (elem.textContent || elem.innerText || $(elem).text() || "").toLowerCase().indexOf((match[3] || "").toLowerCase()) >= 0;
    }
});