url = (window.location.href).split('#');
	state = false;	
	if(url[1] !== undefined && state == false)
	{
		$('.cover').fadeOut(2000,function(){
	 		$(this).css({'background':'url(source/bg4-sm.jpg)'}).slideDown(0);
	 	});
		
	 	$('.container').delay(2000).slideUp(1000,function(){			 		
	 		$('.container.body').load('page/page1.html').slideDown(1000);
	 	});
	 	state = true;
	}