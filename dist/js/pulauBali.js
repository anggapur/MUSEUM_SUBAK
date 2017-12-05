var data = 0;
var color = ['#000000','#000080','#008000','#008080','#800000','#800080','#808000','#C0C0C0','#808080','#0000FF','#00FF00','#00FFFF','#FF0000','#FF00FF','#FFFF00']
$(document).ready(function(){
	//get id i url
	var url_string = window.location.href;
	var url = new URL(url_string);
	var param = url.searchParams.get("id");
	var back = url.searchParams.get("prev");
	loadContent();
	
	// go back
	$('#back').click(function(){
		
		setTimeout(function(){
	 		$('.loading').fadeIn("slow" , function(){
	 			$('.container.body').hide();
		  		window.location.href=HOST+"index.html";
		  	});
		}, 500);

	});	
});

function loadContent()
{
	myMaps = $('#myMaps');
	myW = myMaps.width();
	myH = myMaps.height();
	$.ajax({
	    url: ADMIN+"/allDataNode",
	    type: 'GET',	        
	    async: false,
	    success: function (response) {	            	            	            	    	
	    	data = response.data;
	    	console.log(data);
	    	//iteration variable
	    	b=0;
	    	$.each(data,function(index){
	    		apen = '<li class="list-group-item parent parent'+data[index].id+'" data-parent="'+data[index].id+'" onclick="showChild('+data[index].id+')">'+data[index].nama_kabupaten+'</li>';
	    		$('.groupList').append(apen);
	    		$.each(data[index].get_nodes,function(i){
	    			nodes = data[index].get_nodes[i];
	    			apen = '<li onclick="goToDet('+nodes.id+')" class="list-group-item node childNode'+data[index].id+'" data-id="'+nodes.id+'"><i class="fa fa-map-marker asMark" style="color:'+color[b]+'"></i>'+nodes.nama_node+'</li>';
	    			$('.groupList').append(apen);

	    			koordinat = nodes.koordinat.split(',');	
	    			koorX = koordinat[0];
	    			koorY = koordinat[1];
	    			posX = ((koorX/100)*myW)+15;
	    			posY = (koorY/100)*myH;
	    			pin = '<i style="color:'+color[b]+'" onclick="goToDet('+nodes.id+')" src="admin/public/pinmap.png" class="fa fa-map-marker pinMap" id="pin'+nodes.id+'" '+
	    					'data-kabupaten="'+data[index].id+'" > </i>';
	    			$('.maps').append(pin);
	    			//left top
	    			$('#pin'+nodes.id).css({'left':posX+'px' , 'top':posY+'px'});
	    			b++;
	    			//kembali ke 0
	    			if(b%color.length == 0)
	    			{
	    				b= 0;
	    			}	    			
	    		});
	    	});;
	    	//hilangkan nodes
	    	$('.node').hide();
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});	
}

function showChild(id){
	//hide pin map
	$('.pinMap').fadeOut(300);
	$('.pinMap[data-kabupaten="'+id+'"]').fadeIn(300);
	parentNow = $('.parent'+id);
	active = $('.active');
	if(parentNow.attr('data-parent') !== active.attr('data-parent'))
	{
		$('.node').slideUp(300);
		$('.childNode'+id).slideDown(300);
	}
	else
	{
		// $('.childNode'+id).slideUp(300);	
	}
	active.removeClass('active');
	$('.parent'+id).addClass('active');
}


function goToDet(id)
{
	
	$('#pin'+id).addClass('bounce');
	setTimeout(function(){
		window.location.href = HOST+"detailNode.html?id="+id;
	},1000);
}