$(document).ready(function(){
	//deklarasi variabel
	boxwrap = $('.boxwrap');
	height = boxwrap.height();
	realHeight = boxwrap[0].scrollHeight;
	prev = $('#prev');
	next = $('#next');
	scrollValue = 100;

	//aciton
	next.click(function(){
		prev.removeAttr('disabled');
		boxwrap.animate({'scrollTop':'+='+scrollValue},300,function(){
			totalScroll = parseInt(boxwrap.scrollTop())+parseInt(height);
			if(totalScroll>=realHeight)
				next.attr('disabled','disabled');
		});		
	});

	prev.click(function(){
		next.removeAttr('disabled');
		boxwrap.animate({'scrollTop':'-='+scrollValue},300,function(){
			totalScroll = parseInt(boxwrap.scrollTop())+parseInt(height);
			if(totalScroll<=height)
				prev.attr('disabled','disabled');
		});		
	});
});