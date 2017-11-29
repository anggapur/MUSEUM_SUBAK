$(document).ready(function(){
	//source path
	// source_path = "source/";
	// data = [
	// 	{ desc: 'Subak adalah organisasi kemasyarakatan yang khusus mengatur sistem pengairan sawah yang digunakan dalam cocok tanam padi di Bali, Indonesia. Subak ini biasanya memiliki pura yang dinamakan Pura Uluncarik, atau Pura Bedugul, yang khusus dibangun oleh para pemilik lahan dan petani yang diperuntukkan bagi dewi kemakmuran dan kesuburan dewi Sri. Sistem pengairan ini diatur oleh seorang pemuka adat yang juga adalah seorang petani di Bali.',images:'bg1-sm.jpg'},
	// 	{ desc: 'Halo Bali 2',images:'bg2-sm.jpg'},
	// 	{ desc: 'Halo Bali 3',images:'bg3-sm.jpg'},
	// 	{ desc: 'Halo Bali 4',images:'bg4-sm.jpg'}
	// ];

	//get id i url
	var url_string = window.location.href;
	var url = new URL(url_string);
	var param = url.searchParams.get("id");
	var back = url.searchParams.get("prev");

	changeLayout(param);
	var data = 0;
	$.ajax({
	    url: ADMIN+"/subTopik/getDetail/"+param,
	    type: 'GET',	        
	    async: false,
	    success: function (response) {	            	            	            	    	
	    	data = response;
	    	console.log(data);
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});	

	//set first
	$('.description').html(data[0]['description']);
	cetakMedia(data[0]['kategori_media'],data[0]['media']);
	

	// go prev
	$('#prev').click(function(){
		$('#next').removeAttr('disabled');
		id_data = parseInt($('.row.button-navigation').attr('data'));		
		now = id_data-1;
		if(now == 0)
		{
			$(this).attr('disabled','disabled');
		}

		if(now <= data.length)
		{
			console.log(data[now]);
			// set data
			$('.boxwrap').animate({'left':'110%'},1500,function(){
				$('.description').html(data[now]['description']);
				cetakMedia(data[now]['kategori_media'],data[now]['media']);
				$('.row.button-navigation').attr('data',now);
				$('.boxwrap').animate({'left':'-100%'},0,function(){
					$('.boxwrap').animate({'left':'0'},1500);
				});
			});
		}
	});

	//go next
	$('#next').click(function(){
		$('#prev').removeAttr('disabled');
		id_data = parseInt($('.row.button-navigation').attr('data'));		
		now = id_data+1;
		// animate

		if(now == data.length-1)
		{
			$(this).attr('disabled','disabled');
		}

		if(now <= data.length)
		{
			console.log(data[now]);
			// set data
			$('.boxwrap').animate({'left':'-110%'},1500,function(){
				$('.description').html(data[now]['description']);
				cetakMedia(data[now]['kategori_media'],data[now]['media']);
				$('.row.button-navigation').attr('data',now);
				$('.boxwrap').animate({'left':'100%'},0,function(){
					$('.boxwrap').animate({'left':'0'},1500);
				});
			});
			
		}
		
	});

	// go back
	$('#back').click(function(){
		setTimeout(function(){
	 		$('.loading').fadeIn("slow" , function(){
	 			$('.container.body').hide();
		  		window.location.href=HOST+"subTopik.html?id="+back;
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
	        $('.titleTop').html(data.nama);
	        $('.cover').css('background-image','url('+IMAGES+data.background+')');
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});
}

function cetakMedia(jenis, source)
{
	if(jenis !== "")
	{
		$('.description').attr('class','description col-12 col-md-8');
		$('.images').show();

		$('.images > a#img > img , .images > a#vid > video').hide();
		$('.images > a#vid > video').each(function(){
			this.pause();
		});

		if(jenis == "P")
		{
			$('.images > a#img > img').attr('src',IMAGES+source).show(); //
			$('.images > a#img').attr('href',IMAGES+source);
		}
		else
		{
			$('.images > a#vid > video').attr('src',VIDEOS+source).show(); //	
			$('.images > a#vid > video').unbind('click').click(function(){
				$('.fancybox').attr('href',VIDEOS+source).click();			
			});
		}
	}
	else
	{
		$('.description').attr('class','description col-12 col-md-12');
		$('.images').hide();
	}

		
	if ($('.description').prop('scrollHeight') > $('.description').prop('clientHeight')) {
	    // your element have overflow		
		$('.description').css({
			'overflow-y':'scroll',
			'height':'calc(100% - 50px)'
		});
	} else {
	    // your element doesn't have overflow	    
	    $('.description').css({
			'overflow-y':'hidden',
			'height':'calc(100%)'
		});
	}
}
