$(document).ready(function() {
  
  var stack1 = $('#stack1');
  
  stack1.removeClass('start');
  
  stack1.hammer().on('tap', function(event) {
    stack1.addClass('hover');
    event.stopPropagation();
  });
  
  
  $(document).hammer().on('tap', function(event) {
    stack1.removeClass('hover');
    $('.project').removeClass('hover');
  });
  
  $('.project').hammer().on('tap', function(event) {
      $('.project').removeClass('hover');
      $(this).addClass('hover');
  });
});