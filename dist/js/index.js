$(document).ready(function(){	
	$.ajax({
	    url: ADMIN+"/mainTopiks",
	    type: 'GET',	        
	    async: false,
	    success: function (data) {	            	            	            
	    	$('.main').empty();
	    	datas = data.data;
	    	$.each(datas,function(index){
	    		audio = "Bpm150_C_Gamelan_Arp.wav";
	    		apen = 	'<div id="item'+datas[index].id+'" onclick="goToSub('+datas[index].id+',`'+audio+'`)" class="col-12 col-sm-6 col-md-3 text-center" data="'+datas[index].id+'" data-title="'+datas[index].nama+'" data-bg="'+datas[index].background+'">'+
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
});


function goToSub(id,audio)
{
	audio = ADMIN+"public/musik/"+audio;	
	musik.pause();
	new Audio(audio).play(); 
	$('#item'+id).addClass('rotates');
	//href
	setTimeout(function(){
		window.location.href = HOST+"subTopik.html?id="+id;
	},1700);
	
}