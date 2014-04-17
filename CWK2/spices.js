var image = null;
var value_in = 1;
var value_out = 100;

function fadeOut() {
    
    if (value_out > 0) {
        image.style.opacity = image.style.opacity*(value_out/100);
        value_out = value_out - 1;
        setTimeout(fadeOut,100);
    }
    
    else {
        image.style.opacity = 0.0001;
        fadeIn();
    }
}

function fadeIn() {
    
    if (value_in < 100) {
        image.style.opacity = image.style.opacity*(value_in/5);
        value_in = value_in + 1;
        setTimeout(fadeIn,100);
    }
}

function start() {
    
    image = document.getElementById("spice");
    image.style.opacity = 1;
    fadeOut();
}

window.onload = start;
