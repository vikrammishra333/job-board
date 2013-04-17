// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function(){

    var minExpYr = $('#job-min-exp-req');
    var maxExpYr = $('#job-max-exp-req');

    var initialize = function(){

        maxExpYr.on('change', validateExpReq);

    };

    var validateExpReq = function(){

        minExpYrVal = minExpYr.val();
        maxExpYrVal = $(this).val();

        if(minExpYrVal == "") {

            alert("Please select minimum years of experience required");
            return false;

        }
        else if(maxExpYrVal == "") {

            alert("Please select maximum years of experience required");
            return false;

        }
        else if(minExpYrVal > maxExpYrVal) {

            alert("Maximum years of experience required should be greater than that of minimum");
            return false;

        }

    };

    initialize();

});
