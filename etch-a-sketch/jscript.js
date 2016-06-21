$(document).ready(function() {
  var $container = $('.container');

  function createGrid(numSq) {
    for (var i = 1; i <= numSq; i++) {
      for (var j = 1; j <= numSq; j++) {
        $container.append('<div class="box"></div>');
        $('.box').addClass('box_original');
      }
    }
  }

  //createGrid(16);

  var $box = $('.box');

  $box.hover(function() {
    $(this).addClass('box_hover');
  });
  //{
  //var random = '#'+Math.floor(Math.random()*16777215).toString(16);
  // $(this).css("background-color",random);
  // });

});

var click_function = function() {
  $("#button").attr('value', 'Reset');
  var numSq = prompt("Enter a value between 1 and 40");
  console.log(numSq * 2);
  createGrid(numSq);
  $('.box').removeClass('box_hover');
}
