$(document).ready(function () {
    // TODO 
    // ScrollTop functionality for changing elements at 
    // specific scroll points 

    // Initialize the pickAdate.js datepicker
    $('.datepicker').pickadate({
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 1, // Creates a dropdown of 1 year to control year
        format: 'yyyy-mm-d'
    });
    $('.timepicker').pickatime()


})