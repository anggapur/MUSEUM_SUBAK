$(document).ready(function(){
	//source path
	source_path = "source/";
	data = [
		{ desc: 'Subak adalah organisasi kemasyarakatan yang khusus mengatur sistem pengairan sawah yang digunakan dalam cocok tanam padi di Bali, Indonesia. Subak ini biasanya memiliki pura yang dinamakan Pura Uluncarik, atau Pura Bedugul, yang khusus dibangun oleh para pemilik lahan dan petani yang diperuntukkan bagi dewi kemakmuran dan kesuburan dewi Sri. Sistem pengairan ini diatur oleh seorang pemuka adat yang juga adalah seorang petani di Bali.',images:'bg1-sm.jpg'},
		{ desc: 'Halo Bali 2',images:'bg2-sm.jpg'},
		{ desc: 'Halo Bali 3',images:'bg3-sm.jpg'},
		{ desc: 'Halo Bali 4',images:'bg4-sm.jpg'}
	];
	//set first
	$('.description').html(data[0]['desc']);
	$('.images > img').attr('src',source_path+data[0]['images']);

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
				$('.description').html(data[now]['desc']);
				$('.images > img').attr('src',source_path+data[now]['images']);
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
				$('.description').html(data[now]['desc']);
				$('.images > img').attr('src',source_path+data[now]['images']);
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
		  		window.history.back();
		  	});
		}, 1500);

	});
});