	$(document).ready(function(){
	//mute musik
	// musik.pause();
	//deklarasi variabel
	boxwrap = $('.vidlist');
	height = boxwrap.height();
	realHeight = boxwrap[0].scrollHeight;
	prev = $('#prev');
	next = $('#next');
	scrollValue = 100;
	STATE = 1;
	//get id i url
	var url_string = window.location.href;
	var url = new URL(url_string);
	var param = url.searchParams.get("id");
	changeLayout(param);
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
	
	loadContent(param);
	// go back
	$('#back').click(function(){

		setTimeout(function(){
	 		window.location.href=HOST+"subTopik.html?id="+param;		  		
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
	        $('.myTitle').html("Video Gallery<br>"+data.nama);
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
	    url: ADMIN+"/kategori/getVideoGallery/"+param,
	    type: 'GET',	        
	    async: false,
	    success: function (data) {	
	    	if(data.length <= 0)	            	            	            
	    	{
	    		$('#next , #prev').hide();
	    		apen = '<h4 style="width:100%;text-align:center;font-family:script MT;color:white">Maaf Video dalam Gallery Ini belum Tersedia</h4>';
	    		$('.vidlist').append(apen);	 
	    		$('.vidlist').removeClass('	col-sm-4').addClass('col-sm-12');
	    		$('.vidlist').siblings('.col-sm-8').hide();   		
	    	}
	    	else
	    	{
	    		$('.vidlist').empty();
	    	}            	            	            
	    	
	    	$.each(data,function(index){
	    		apen =  '<div class="w-100"></div>'+
	    				'<div class="row forAlert">'+
                            '<div class="alert alert-light" role="alert">'+
                                data[index].nama+
                            '</div>'+
                        '</div>';
                //cek apakah datanya 0 atau tidak
                if(data[index].get_videos.length > 0)
                	$('.vidlist').append(apen);

	    		dataChild = data[index].get_videos;
	    		$.each(dataChild,function(i){
	    			apen =  '<div class="row">'+
                                    '<div class="boxwrapping row" data-source="'+VIDEOS+dataChild[i].source+'">'+
                                        '<div class="col-sm-4 imgwrap">'+
                                            '<img class="img-fluid rounded" src="source/bg1-sm.jpg">'+
                                        '</div>'+
                                        '<div class="col-sm-8">'+
                                            '<p class="h5">'+dataChild[i].nama+'</p>'+
                                            '<p>'+
                                            dataChild[i].description+
                                            '</p>'+
                                        '</div>'+
                                        '<div class="glassboxing"></div>'+
                                   ' </div>'+
                                '</div>';
                    $('.vidlist').append(apen);
	    		});
	    	});
	    	//cek
	    	if ($('.vidlist').get(0).offsetHeight < $('.vidlist').get(0).scrollHeight) {
			    //alert('overflow');
			} else {
			    //alert('not overflow');
			    $('#next,#prev').hide();
			}
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});	

	//click
	$('.boxwrapping').unbind('click').click(function(){
		source = $(this).attr('data-source');
		$('#video video').attr('src',source);
		$('.overlay').css('display','block');
		$('.glassboxing').removeClass('glassboxingSelected');
		$('.boxwrapping .col-sm-8').removeClass('textWhite');
		$(this).find('.glassboxing').addClass('glassboxingSelected');
		$(this).find('.col-sm-8').addClass('textWhite');		
	});	
}

