var navbar = document.querySelector(".navbar");

navbar.style.backdropFilter = "blur(3px)";

navbar.querySelectorAll(".navbar-brand, .navbar-nav").forEach(function(element) {
  element.style.filter = "none";
});


