var modal = document.getElementById('id01');
var modal2 = document.getElementById('id02');
var modalLogin = document.getElementById('change-img-container');
// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
    if(event.target == modal2){
        modal2.style.display = "none";
    }
    if(event.target == modal2){
        modalLogin.style.display = "none";
    }
}