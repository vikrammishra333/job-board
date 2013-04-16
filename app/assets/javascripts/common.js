/**
 * Created with JetBrains RubyMine.
 * User: vikram
 * Date: 16/4/13
 * Time: 2:51 PM
 * To change this template use File | Settings | File Templates.
 */

$(document).ready(function(){

    var dataTab = $('.table-data-table');
    var companyTable = $('#company-table');
    var dTable;

    var initialize = function(){

        initializeDataTable();
        setCompanyTableOptions();

    };

    var initializeDataTable = function() {

        dTable = dataTab.dataTable({
            "oLanguage": {"sZeroRecords": "No records to display"}
        });

    };

    var setCompanyTableOptions = function(){



    };

    initialize();

});