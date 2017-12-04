$(document).ready(function(){

	//deklarasi variabel
	boxwrap = $('.boxwrap');
	height = boxwrap.height();
	realHeight = boxwrap[0].scrollHeight;
	prev = $('#prev');
	next = $('#next');
	scrollValue = 100;	
	//get id i url
	var url_string = window.location.href;
	var url = new URL(url_string);
	var param = url.searchParams.get("id");
	//aciton
	changeLayout(param);
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

	loadContent(param);
	// go back
	$('#back').click(function(){
		setTimeout(function(){
	 		$('.loading').fadeIn("slow" , function(){
	 			$('.container.body').hide();
		  		window.location.href=HOST+"detailNode.html?id="+param;
		  	});
		}, 500);

	});	
});

function changeLayout(id)
{
	
	$.ajax({
	    url: ADMIN+"node/"+id+"/edit",
	    type: 'GET',	        
	    async: false,
	    success: function (data) {	            	            	            
	        $('.myTitle').html("Image Gallery<br>"+data.nama_node);	        
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});
}

function loadContent(param)
{
	$.ajax({
	    url: ADMIN+"/allGalleryNode/"+param,
	    type: 'GET',	        
	    async: false,
	    success: function (data) {	            	            	            
	    	$('.boxwrap').empty();
	    	dataChild = data.data;
	    	$.each(dataChild,function(i){
    			apen =  '<div class="col-12 col-sm-4 col-md-2">'+
                            '<div class="boxglass">'+
                            	'<a href="'+IMAGES+dataChild[i].source+'" data-fancybox="gallery" data-caption="'+dataChild[i].nama+'">'+
                                	'<img src="'+IMAGES+dataChild[i].source+'" class="rounded img-fluid" alt="...">'+
                                '</a>'+
                                '<p class="h6 text-center title">'+dataChild[i].nama+'</p>'+
                                '<div class="blurry"></div>'+
                            '</div>'+
                        '</div>';
                $('.boxwrap').append(apen);
    		});
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});	

}