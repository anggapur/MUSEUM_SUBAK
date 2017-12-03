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
		  		window.location.href=HOST+"subTopik.html?id="+param;
		  	});
		}, 500);

	});	
});

function changeLayout(id)
{
	
	$.ajax({
	    url: ADMIN+"topik/"+id+"/edit",
	    type: 'GET',	        
	    async: false,
	    success: function (data) {	            	            	            
	        $('.myTitle').html("Image Gallery<br>"+data.nama);
	        $('.cover').css('background-image','url('+IMAGES+data.background+')');
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});
}

function loadContent(param)
{
	$.ajax({
	    url: ADMIN+"/kategori/getPhotoGallery/"+param,
	    type: 'GET',	        
	    async: false,
	    success: function (data) {	            	            	            
	    	$('.boxwrap').empty();
	    	$.each(data,function(index){
	    		apen =  '<div class="w-100"></div>'+
	    				'<div class="col-12">'+
                            '<div class="alert alert-light" role="alert">'+
                                data[index].nama+
                            '</div>'+
                        '</div>';
                //cek apakah datanya 0 atau tidak
                if(data[index].get_photos.length > 0)
                	$('.boxwrap').append(apen);

	    		dataChild = data[index].get_photos;
	    		$.each(dataChild,function(i){
	    			apen =  '<div class="col-sm-2">'+
                                '<div class="boxglass">'+
                                	'<a href="'+IMAGES+dataChild[i].source+'" data-fancybox="gallery" data-caption="'+dataChild[i].description+'">'+
                                    	'<img src="'+IMAGES+dataChild[i].source+'" class="rounded img-fluid" alt="...">'+
                                    '</a>'+
                                    '<p class="h6 text-center title">'+dataChild[i].nama+'</p>'+
                                    '<div class="blurry"></div>'+
                                '</div>'+
                            '</div>';
                    $('.boxwrap').append(apen);
	    		});
	    	});
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});	

}