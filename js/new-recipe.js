// Create a "close" button and append it to each list item
var myNodelist = document.getElementsByTagName("LI");
var i;
for (i = 0; i < myNodelist.length; i++) {
  var span = document.createElement("SPAN");
  var txt = document.createTextNode("\u00D7");
  span.className = "close";
  span.appendChild(txt);
  myNodelist[i].appendChild(span);
}

// Click on a close button to hide the current list item
var close = document.getElementsByClassName("close");
var i;
for (i = 0; i < close.length; i++) {
  close[i].onclick = function() {
    var div = this.parentElement;
    div.style.display = "none";
  }
}

// Add a "checked" symbol when clicking on a list item
var list = document.getElementById("list-of-ingridients");
list.addEventListener('click', function(ev) {
  if (ev.target.tagName === 'LI') {
    ev.target.classList.toggle('checked');
  }
}, false);

// Create a new list item when clicking on the "Add" button
function newElement() {
  var li = document.createElement("li");
  var inputValue = document.getElementById("ingridient-input").value;
  var t = document.createTextNode(inputValue);
  li.appendChild(t);

  if (inputValue === '') {
    alert("Podłeś puste pole :)");
  } else {
    document.getElementById("list-of-ingridients").appendChild(li);
  }
  document.getElementById("ingridient-input").value = "";

  var span = document.createElement("SPAN");
  var txt = document.createTextNode("\u00D7");
  span.className = "close";
  span.appendChild(txt);
  li.appendChild(span);

  for (i = 0; i < close.length; i++) {
    close[i].onclick = function() {
      var div = this.parentElement;
      div.style.display = "none";
    }
  }
}


//steps
function nextStep() {

 // var stepNumber = document.querySelector('#sample-step li');
  var listLenght = document.getElementById("sample-step").getElementsByTagName("li");
  var listCounter = listLenght.length+1;
  var li = document.createElement("li");
  li.setAttribute("contenteditable", "true");

  var inputValue = document.getElementById("step-input-area").value;
  var t = document.createTextNode("Krok "+listCounter+") "+inputValue);
  li.appendChild(t);

  if (inputValue === '') {
    alert("Podłeś puste pole :)");
  } else {
    document.getElementById("sample-step").appendChild(li);
  }
  document.getElementById("step-input-area").value = "";

  var span = document.createElement("SPAN");
  var txt = document.createTextNode("\u00D7");
  span.className = "close";
  span.appendChild(txt);
  li.appendChild(span);

  for (i = 0; i < close.length; i++) {
    close[i].onclick = function() {
      var div = this.parentElement;
      div.style.display = "none";
    }
  }
}


/*
function loadImageFiles() {
    var image1 = document.querySelector('#brows-1');
    var image2 = document.querySelector('#brows-2');
    var image3 = document.querySelector('#brows-3');
    var imgArray = [image1, image2, image3];

    var reader = new FileReader();

    for( i=0; i< imgArray.length;i++){
       var fileBrowser = document.getElementsByClassName('browser').files[i];

        reader.onload = function() {

          imgArray[i].src = reader.result[i];
        }

      if(fileBrowser[i]) {
        reader.readAsDataURL(fileBrowser[i]);
      } else {
        imgArray[i].src = "img/meal-avatar.png";
        
      }
    }


}
loadImageFiles();
*/