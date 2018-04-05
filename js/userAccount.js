// change the image of the avatar

function previewFile() {
  //  var preview = document.querySelector('img');
    var preview = document.querySelector('.profil-image img');
    var preview2 = document.querySelector('.change-profile-image img');
    var file = document.querySelector('input[type=file]').files[0];
    var reader = new FileReader();

    reader.onloadend = function() {
       preview.src = reader.result; 
       preview2.src = reader.result;
    }

    if(file) {
        reader.readAsDataURL(file);
    } else {
        preview.src = "img/avatar.png";
        preview2.src = "img/avatar.png";
        
    }
}
previewFile();

//drag and drop vatar image
function allowDrop(ev) {
    ev.preventDefault();
}
function drag(ev) {
    ev.dataTransfer.setData("text", ev.target.id);
}
function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("text");
    ev.target.appendChild(document.getElementById(data));
}




// new password validation
var oldPassword = document.getElementById('old-password');
var newPassword = document.getElementById('new-password');
var confirmPassword = document.getElementById('confirm-new-password');
var passwords = [oldPassword,newPassword, confirmPassword];

function checkPassword() {
    if(passwords[0]==passwords[1]){
        alert("Stare i nowe hasła są identyczne");
    }
    if(passwords[1]!=passwords[2]){
        alert("Źle potwierdzone hasło");
    }
}