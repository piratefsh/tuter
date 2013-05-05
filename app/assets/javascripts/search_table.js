//Code from: http://blogs.digitss.com/javascript/jquery-javascript/implementing-quick-table-search-using-jquery-filter/



// When document is ready: this gets fired before body onload <img src='http://blogs.digitss.com/wp-includes/images/smilies/icon_smile.gif' alt=':)' class='wp-smiley' /> 
$(document).ready(function(){
    //Mapping of input field to table column
    var column = new Array();
    column['name'] = 2;
    column['location'] = 4;
    column['course'] = 3;
    column['rates'] = 6;

    //map all types
    var groupInputs = $('input', '#group_types');

    for(var i = 0; i < groupInputs.size(); i++)
    {
        column[$(groupInputs[i]).attr('name')] = 5;
    }

    var table = $('table#results_table')
    $("p#no_results").hide();
    // Write on keyup event of keyword input element
    $("#keyword_search").keyup(function(){
        // When value of the input is not blank
        if( $(this).val() != "")
        {
            // Show only matching TR, hide rest of them
            $("tbody>tr", table).hide();
            var matching = $("td:contains-ci('" + $(this).val() + "')", table)

            //show no matches p when no results
            if(matching.size() > 0)
            {
                matching.parent("tr").show();
                $("p#no_results").hide();
            }
            else
            {
                $("p#no_results").show();
            }
        }
        else
        {
            // When there is no input or clean again, show everything back
            $("tbody>tr", table).show();
        }
    });

    //set onClick or keyup for search fields
    for(var name in column)
    {
        $("input[name=" + name +"]").keyup(instantSearchFunction);
        $("input[name=" + name +"]").click(instantSearchFunction);
    }

    //set search function for  rates selector
    $("select[name=rates]").click(instantSearchFunction);

    //if search all field already populated, perform search
    $("input#keyword_search").trigger('keyup');

    function instantSearchFunction()
    {

        console.log($(this).val())
        var whichCol = column[$(this).attr("name")];
        if( (!$(this).is(':checkbox') && $(this).val() != "") || ($(this).is(':checkbox') && $(this).is(':checked')))
        {
            // Show only matching TR, hide rest of them
            $("tbody>tr", table).hide();

            //only find for matches in given column
            var matching = $("td:nth-child(" + whichCol + "):contains-ci('" + $(this).val() + "')", table);
            //show no matches p when no results
            if(matching.size() > 0)
            {
                matching.parent("tr").show();
                $("p#no_results").hide();
            }
            else
            {
                $("p#no_results").show();
            }
        }
        else
        {
            // When there is no input or clean again, show everything back
            $("tbody>tr", table).show();
            $("p#no_results").hide();
        }
    }
});

// jQuery expression for case-insensitive filter
$.extend($.expr[":"], 
{
    "contains-ci": function(elem, i, match, array) 
    {
        return (elem.textContent || elem.innerText || $(elem).text() || "").toLowerCase().indexOf((match[3] || "").toLowerCase()) >= 0;
    }
});