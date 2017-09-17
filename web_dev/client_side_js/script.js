console.log("The script is running");



function addPinkBorder(event){
	event.target.style.border = "5px solid pink";
}

var head = document.getElementsByTagName("h1");
var h1 = head[0];
h1.addEventListener("click",addPinkBorder);

function border_color(){
     document.getElementById("secondhead").style.borderColor = "red";
     setTimeout(border_color, 1500);
}

function border_color2(){
     document.getElementById("secondhead").style.borderColor = "green";
     setTimeout(border_color2, 1000);
}

border_color();
border_color2();

function changeBackground(event){
	event.target.style.backgroundColor = "red";
}

var rackets = document.getElementsByTagName("ol");
var racket = rackets[0];
racket.addEventListener("mouseover", changeBackground);

var para = document.createElement("li");
var node = document.createTextNode("Dunlop")
para.appendChild(node);

var elements = document.getElementsByTagName("ol");
var element = elements[0]
element.appendChild(para);

var h3 = document.getElementsByTagName('h3')[0]
h3.style.fontFamily = "Comic Sans MS"

// var link = document.createElement("a");
// link.setAttribute('href', "http://www.dunloptennis.us/")