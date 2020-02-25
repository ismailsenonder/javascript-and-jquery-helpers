$(document).ready(function() {	

		var id = '#dialog';
	
		//Get the screen height and width
		var maskHeight = $(document).height();
		var maskWidth = $(window).width();
	
		//Set heigth and width to popupmask to fill up the whole screen
		$('#popupmask').css({'width':maskWidth,'height':maskHeight});
		
		//transition effect		
		$('#popupmask').fadeIn(500);	
		$('#popupmask').fadeTo("slow",0.9);	
	
		//Get the window height and width
		var winH = $(window).height();
		var winW = $(window).width();
              
		//Set the popup window to center
		$(id).css('top',  winH/2-$(id).height()/2);
		$(id).css('left', winW/2-$(id).width()/2);
	
		//transition effect
		$(id).fadeIn(2000); 	
	
	//if close button is clicked
	$('.window .close').click(function (e) {
		//Cancel the link behavior
		e.preventDefault();
		
		$('#popupmask').hide();
		$('.window').hide();
	});		
	
	//if mask is clicked
	$('#popupmask').click(function () {
		$(this).hide();
		$('.window').hide();
	});		
	
});