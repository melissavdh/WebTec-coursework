var plane = null;
var planeshadow = null;
var timer = null;

function stop() {
    planeshadow.style.opacity = 0;
    clearTimeout(timer);
}

function move() {
    plane.style.left = parseInt(plane.style.left)+2+'px';
    plane.style.top = parseInt(plane.style.top)+(-1)+'px';
    planeshadow.style.left = parseInt(planeshadow.style.left)+2+'px';
    planeshadow.style.opacity = planeshadow.style.opacity*0.99;
    timer = setTimeout(move,20);

}

function start() {
	plane = document.getElementById("plane");
	plane.style.left = '0px';
	plane.style.top = '300px';
	planeshadow = document.getElementById("planeshadow");
	planeshadow.style.left = '0px';
	planeshadow.style.top = '310px';
	planeshadow.style.opacity = 1;
	move();
}

window.setTimeout("stop();",8000);
window.onload = start;
