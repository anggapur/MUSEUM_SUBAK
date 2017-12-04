$(document).ready(function(){
	//get id
	var url_string = window.location.href;	
	var url = new URL(url_string);
	var param = url.searchParams.get("id");
	//loading content
	loadContent(param);
	//back
	$('#back').click(function(){		
		setTimeout(function(){
	 		$('.loading').fadeIn("slow" , function(){
	 			$('.container.body').hide();
		  		window.location.href=HOST+"pulauBali.html";
		  	});
		}, 500);

	});	
	$('#toGalleryNode').click(function(){		
		setTimeout(function(){
	 		$('.loading').fadeIn("slow" , function(){
	 			$('.container.body').hide();
		  		window.location.href=HOST+"galleryNode.html?id="+param;
		  	});
		}, 500);

	});
});

function loadContent(param)
{
	$.ajax({
	    url: ADMIN+"node/"+param+"/edit",
	    type: 'GET',	        
	    async: false,
	    success: function (response) {	            	            	            	    		    	
	    	setContent(response);
	    	console.log(response);
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});	
}

function setContent(data)
{
	$('.titleTop').html(data.nama_node);
	$('.description').html(data.description);
	$('#img').attr('href',IMAGES+data.primary_image);
	$(' #img img').attr('src',IMAGES+data.primary_image);
	if(data.qr_code !== "")
	{
		qrcode = '<img src="'+IMAGES+data.qr_code+'" id="qrcode" class="img-rounded">';
		$('.images').append(qrcode);
	}
}	
