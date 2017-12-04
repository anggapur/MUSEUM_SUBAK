$(document).ready(function(){	
	$.ajax({
	    url: ADMIN+"/mainTopiks",
	    type: 'GET',	        
	    async: false,
	    success: function (data) {	            	            	            
	    	$('.main').empty();
	    	datas = data.data;

	    	//insert pulau bali
	    	pulauBali = '<div id="item01"  class="col-12 col-sm-6 col-md-3 text-center" data="01" data-title="Pulau Bali" data-bg="">'+
		                    '<img onclick="goToPulauBali()"src="'+IMAGES+'02122017094603farmer.png" class="img-fluid-logo">'+
		                    '<p onclick="goToPulauBali()" class="h4">Pulau Bali</p>'+
		                '</div>';
		    $('.main').append(pulauBali);

		    //insert topiks
	    	$.each(datas,function(index){
	    		
	    		apen = 	'<div id="item'+datas[index].id+'"  class="col-12 col-sm-6 col-md-3 text-center" data="'+datas[index].id+'" data-title="'+datas[index].nama+'" data-bg="'+datas[index].background+'">'+
		                    '<img onclick="goToSub('+datas[index].id+')"src="'+IMAGES+datas[index].icon+'" class="img-fluid-logo">'+
		                    '<p onclick="goToSub('+datas[index].id+')" class="h4">'+datas[index].nama+'</p>'+
		                '</div>';
	    		$('.main').append(apen);
	    	});
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});	
});


function goToSub(id)
{
	playMusikClick(); 
	$('#item'+id).addClass('rotates');
	//href
	setTimeout(function(){
		window.location.href = HOST+"subTopik.html?id="+id;
	},1700);
	
}

function goToPulauBali()
{
	playMusikClick(); 
	$('#item01').addClass('rotates');
	//href
	setTimeout(function(){
		window.location.href = HOST+"pulauBali.html";
	},1700);
	
}