window.onscroll = function() 
{
    myFunction()
};

var header = document.getElementById("scrollHeader");
var scroll = header.offsetTop;

function myFunction() {
if (window.pageYOffset > scroll) {
header.classList.add("scroll__header");
} else {
header.classList.remove("scroll__header");
}
}
