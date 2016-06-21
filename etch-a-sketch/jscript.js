$(document).ready(function() {

	var $box = $('.box');
  	createGrid(16);

  	$("#button").click(function(){
  		$("button").attr('value', 'RESET');
  		$(".container").empty();
	  	var numSq = prompt("Enter a value between 1 and 40");
	  	createGrid(numSq);
	});
});

function createGrid(numSq) {
	    for (var i = 1; i <= numSq; i++) {
	      for (var j = 1; j <= numSq; j++) {
	        $('.container').append('<div class="box"></div>');
	        $('.box').height((960/numSq)-5);
			$('.box').width((960/numSq)-5);
	        $('.box').addClass('box_original');
	      }
	    }
	    
	    $('.box').hover(function(){
			$(this).addClass('box_hover');
		});
	};





