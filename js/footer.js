$(document).ready(function() {

    function newsletterValidate() {
        var userInput = document.forms["newsletterForm"]["newsletterEmail"].value;

        if (userInput == "") {
            alert("Error");
            return false;
        }
    }



});