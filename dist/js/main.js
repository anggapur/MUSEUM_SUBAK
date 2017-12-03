var loc = window.location.pathname;
var dir = loc.substring(0, loc.lastIndexOf('/'));
var musik ="";
var HOST = "http://"+$(location).attr('host')+dir+"/";
var ADMIN = "http://"+$(location).attr('host')+dir+"/admin/";
var IMAGES = "http://"+$(location).attr('host')+dir+"/admin/public/images/";
var VIDEOS = "http://"+$(location).attr('host')+dir+"/admin/public/videos/";
var STATE = 0;

//
playMusikBackground();

function playMusikBackground(){
	$.ajax({
	    url: ADMIN+"/musikBackground",
	    type: 'GET',	        
	    async: false,
	    success: function (data) {	            	            	            
	        audio = ADMIN+"public/musik/"+data;	
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});		
	musik = new Audio(audio); 	
	musik.loop = true;
	musik.play();
}

function playMusikClick()
{
	$.ajax({
	    url: ADMIN+"/musikClick",
	    type: 'GET',	        
	    async: false,
	    success: function (data) {	            	            	            
	        audio = ADMIN+"public/musik/"+data;	
			musik.pause();
			new Audio(audio).play();
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});		

}
function loadSubtopik(data)
{	
	$.ajax({
	    url: ADMIN+"/childTopiks/"+data,
	    type: 'GET',	        
	    async: false,
	    success: function (data) {	            	            	            
	    	$('.main').empty();
	    	datas = data.data;
	    	$.each(datas,function(index){
	    		apen = 	'<div class="col-12 col-sm-6 col-md-3 text-center" data="'+datas[index].id+'" data-title="'+datas[index].nama+'" data-bg="'+datas[index].background+'">'+
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
}

function layoutChange(data)
{
	$.ajax({
	    url: ADMIN+"/topik/"+data+"/edit",
	    type: 'GET',	        
	    async: false,
	    success: function (data) {	            	            	            
	        console.log(data);	  
	        $('.titleTop').html(data.nama);
	        $('.cover').css({'background':'url('+IMAGES+data.background+')'}).slideDown(0);
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});
	
}
