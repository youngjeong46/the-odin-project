$(document).ready(function() {

	var $container = $('.container');
	

	function createGrid(numSq) {
	    for (var i = 1; i <= numSq; i++) {
	      for (var j = 1; j <= numSq; j++) {
	        $container.append('<div class="box"></div>');
	        $('.box').height((960/numSq)-5);
			$('.box').width((960/numSq)-5);
	        $('.box').addClass('box_original');
	      }
	    }
	};

  	createGrid(16);

  	var $box = $('.box');

  	$("#button").click(function(){
  		$("#button").attr('value', 'RESET');
	  	var numSq = prompt("Enter a value between 1 and 40");
	  	$('.box').removeClass('box_hover');
	  	$('.box').remove();
	  	createGrid(numSq);
	});
	

	$box.hover(function() {
		$(this).addClass('box_hover');
	});

});





