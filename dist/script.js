
$(document).ready(function(){
	
	//awal
	

	 $('.main > div').click(function(){
	 	// get data for url
	 	data = $(this).attr('data');
	 	window.location.href="#"+data;	 	
	 	// adding class for style
	 	$(this).addClass('rotates');
	 	// load new data page
	 	$('.cover').fadeOut(2000,function(){
	 		$(this).css({'background':'url(source/bg4.jpg)'}).slideDown(2000);
	 	});
		
	 	$('.container').delay(2000).slideUp(1000,function(){	
		 		
	 		$('.container.body').load('page/page1.html').slideDown(1000);
	 	});

	 });

	 $('.submain > div > a').click(function(e){
	 	e.preventDefault();
	 	$(this).addClass('rotates');

	 	loc = $(this).attr('href');
	 	setTimeout(function(){
	 		$('.loading').fadeIn("slow" , function(){
	 			$('.container.body').hide();
		  		window.location.href = loc;
		  	});
		}, 1500);

	 });

	 $('button.imagesGallery').click(function(){
	 	setTimeout(function(){
	 		$('.loading').fadeIn("slow" , function(){
	 			$('.container.body').hide();
		  		window.location.href = "galeri-foto.html";
		  	});
		}, 500);
	 });

	 $('button.videosGallery').click(function(){
	 	setTimeout(function(){
	 		$('.loading').fadeIn("slow" , function(){
	 			$('.container.body').hide();
		  		window.location.href = "galeri-video.html";
		  	});
		}, 500);
	 });
});