$(document).ready(function() {

  var $container = $('.container');


  function generateGrid(){
    var numSq = prompt("Enter a value between 1 and 40");
    $('.box').removeClass('box_hover');
    $('.box').remove();
    createGrid(numSq);
  };

  function createGrid(numSq) {
    var boxDim = (960/numSq)-1;
    for (var i = 1; i <= numSq; i++) {
      for (var j = 1; j <= numSq; j++) {
        $container.append($('<div class="box"></div>').addClass('box_original').height(boxDim).width(boxDim));
      }
    }
  };

  createGrid(16);
  var $box = $('.box');
  $box.hover(function() {
    $(this).addClass('box_hover');
  });

  $("#regular_black").click(function(){
    generateGrid();
    var $box = $('.box');
    $box.hover(function() {
      $(this).addClass('box_hover');
    });
  });

  $("#colors").click(function(){
    generateGrid();
    var $box = $('.box');
    $box.hover(function() {
      var randomColor = '#'+Math.floor(Math.random()*16777215).toString(16);
      $(this).css("background-color",randomColor);
    });
  });

  $("#shade_black").click(function(){
    generateGrid();
    var $box = $('.box');
    shade_black=['#000000','#191919','#323232', '#4c4c4c','#666666', '#7f7f7f','#999999', '#b2b2b2', '#cccccc', '#e5e5e5', '#ffffff'];
    $box.hover(function(){ 
      var cur = rgb2hex($(this).css("background-color"));
      var index = $.inArray(cur, shade_black);
      if (index == -1){
        $(this).css("background-color",shade_black[9]);
      } else if (index == 0){
      } else {
        $(this).css("background-color",shade_black[index-1]);
      }
    });
  });

  function rgb2hex(rgb) {
    rgb = rgb.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
    function hex(x) {
      return ("0" + parseInt(x).toString(16)).slice(-2);
    }
    return "#" + hex(rgb[1]) + hex(rgb[2]) + hex(rgb[3]);
  }
});