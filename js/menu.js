function startTimer() {
    setInterval(displayNextImage, 5000);
}

window.onscroll = function() {myFunction()};

var navbar = document.getElementById("upperNavigation");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky");
    navbar.css({"opacity" : "0.8"});
  } else {
    navbar.classList.remove("sticky");
  }
}



//creating a tags for menu
$(document).ready(function(){
  var availableTags = [
    "włoska",
    "polska"


  ];

 // availableTags.classList.add("#tags");


  $("#navSearch").autocomplete({
    source : availableTags
  });
  availableTags.classList.add("#tags");
});

