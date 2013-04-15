/**
 * Created with JetBrains RubyMine.
 * User: vikram
 * Date: 12/4/13
 * Time: 12:58 PM
 * To change this template use File | Settings | File Templates.
 */

$(document).ready(function(){

    var userType = $('#login-register');

    var initialize = function(){

        userType.on('change', '.user-type', loadCompanyForm);

    };

    var loadCompanyForm = function(){

        var userTypeVal = $(this).val();
        $.get('/users/sign_up',{user_type:userTypeVal}, function(data) {

            $('#login-register').innerHTML = "";
            $('#login-register').html(data);

        });

    };

    initialize();

});
