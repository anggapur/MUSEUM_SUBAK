$(document).ready(function(){	
	//get id i url
	var url_string = window.location.href;
	var url = new URL(url_string);
	var param = url.searchParams.get("id");
	audio = "Bpm150_C_Gamelan_Arp.wav";
	
	//call
	$.ajax({
	    url: ADMIN+"/childTopiks/"+param,
	    type: 'GET',	        
	    async: false,
	    success: function (data) {	            	            	            
	    	$('.main').empty();
	    	datas = data.data;
	    	$.each(datas,function(index){	    		
	    		apen = 	'<div id="item'+datas[index].id+'" onclick="goToDetail('+datas[index].id+','+param+',`'+audio+'`)" class="col-12 col-sm-6 col-md-3 text-center" data="'+datas[index].id+'" data-title="'+datas[index].nama+'" data-bg="'+datas[index].background+'">'+
		                    '<img src="'+IMAGES+datas[index].icon+'" class="img-fluid-logo">'+
		                    '<p class="h4">'+datas[index].nama+'</p>'+
		                '</div>';
	    		$('.main').append(apen);
	    	});
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});	


	//change layout
	changeLayout(param);
	//click
	$('.imagesGallery').unbind('click').click(function(){
		// Musik
		audio = ADMIN+"public/musik/"+audio;
		musik.pause();		
		new Audio(audio).play(); 
		setTimeout(function(){
			window.location.href=HOST+"galeri-foto.html?id="+param;
		},1000);		
	});
	$('.videosGallery').unbind('click').click(function(){
		// Musik
		audio = ADMIN+"public/musik/"+audio;
		musik.pause();		
		new Audio(audio).play(); 
		setTimeout(function(){
			window.location.href=HOST+"galeri-video.html?id="+param;
		},1000);		
		
	});
});


function goToDetail(id,param)
{
	audio = ADMIN+"public/musik/"+audio;
	musik.pause();	
	new Audio(audio).play(); 
	$('#item'+id).addClass('rotates');
	//href
	setTimeout(function(){
		window.location.href = HOST+"detail.html?id="+id+"&prev="+param;
	},1700);
	
}

function changeLayout(id)
{
	$.ajax({
	    url: ADMIN+"topik/"+id+"/edit",
	    type: 'GET',	        
	    async: false,
	    success: function (data) {	            	            	            
	        $('.titleTop').html(data.nama);
	        $('.cover').css('background-image','url('+IMAGES+data.background+')');
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});
}