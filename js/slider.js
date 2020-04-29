
var slideList = 1;
showAllSlides(slideList);

function plusSlides(n) {
  showAllSlides(slideList += n);
}

function currentSlide(n) {
  showAllSlides(slideList = n);
}

function showAllSlides(n) {
  var i;
  var slides = document.getElementsByClassName("slideshow__div");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {
    slideList = 1;
  }

  if (n < 1) {
    slide = slides.length;
  }

  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }

  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
}
  slides[slideList-1].style.display = "block";
dots[slideList-1].className += " active";
}

window.addEventListener("load",function() {
  showAllSlides(slideList);
  myTimer = setInterval(function(){plusSlides(1)}, 4000);
})


