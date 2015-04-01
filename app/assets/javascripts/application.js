$(document).ready(function() {
  setTimeout(function() {
    $('.flashMessage').slideUp();
  }, 3500);

  $('.carousel').carousel({
  interval: 3000
  });

});