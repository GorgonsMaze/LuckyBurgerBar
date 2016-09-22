$(document).ready(function () {
    // TODO 
    // ScrollTop functionality for changing elements at 
    // specific scroll points 

    // Initialize the pickAdate.js datepicker
    $('.datepicker').pickadate({
        selectMonths: true, // Creates a dropdown to control month
        selectYears: 15 // Creates a dropdown of 15 years to control year
    });
    $('.timepicker').pickatime()


})