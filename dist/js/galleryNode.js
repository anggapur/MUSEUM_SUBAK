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

	$('.boxglass video').unbind('click').click(function(){
		$('#myModal').modal('show');		
		source = VIDEOS+$(this).attr('data-video');		
		$('#videoPlayer').attr('src',source);
		nama = $(this).attr('data-title');		
		$('h4#myModalLabel').html(nama);
	});

	$('#myModal').on('hidden.bs.modal', function (e) {
		$('#videoPlayer').get(0).pause();
	})
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
	    	//cek
	    	if(dataChild.length <=0)
	    	{
	    		$('#next , #prev').hide();
	    		$('.boxwrap').append("<h4 style='text-align:center;width:100%;color:white;'>Maaf Photo Belum Tersedia</h4>");
	    	}

	    	$.each(dataChild,function(i){

	    		src = dataChild[i].source;
	    		ext = (src.split('.')[1]); 
	    			
            	if(ext == 'jpg' || ext == 'jpeg' || ext == 'png')
            	{
            		src = '<a href="'+IMAGES+dataChild[i].source+'" data-fancybox="gallery" data-caption="'+dataChild[i].nama+'">'+
                                	'<img src="'+IMAGES+dataChild[i].source+'" class="rounded img-fluid" alt="...">'+
                                '</a>';
            	}
            	else
            	{
            		src =  '<video class="img-responsive" style="z-index:99999;position:relative;" data-title="'+dataChild[i].nama+'" data-video="'+dataChild[i].source+'">'+            		
							'<source src="'+HOST+"admin/public/videos/"+dataChild[i].source+'" id="video_here">'+
                                'Your browser does not support HTML5 video.'+
                            '</video>';
                            

            	}

    			apen =  '<div class="col-12 col-sm-4 col-md-2">'+
                            '<div class="boxglass">'+
                            	src+
                                '<p class="h6 text-center title">'+dataChild[i].nama+'</p>'+
                                '<div class="blurry"></div>'+
                            '</div>'+
                        '</div>';
                $('.boxwrap').append(apen);
    		});

    		if ($('.boxwrap').get(0).offsetHeight < $('.boxwrap').get(0).scrollHeight) {
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

}

function makeVid(param)
{
	alert(param);
}