$(document).ready(function(){
	//set modal


	//load data
	loadTopiks();
	allTopiks();
	deleteProses();
	editProses();
	
	// preview FIle
	$("#bg").change(function() {
	  readURL(this,'#bg-view');
	});
	$("#icon").change(function() {
	  readURL(this,'#icon-view');
	});
	$('#selectMap').unbind('click').click(function(){
		bigMap = $('#selectMapBig');
		$('#myModal2').modal({
		  backdrop: 'static',
		  keyboard: false
		});
		$('#myModal2').on('shown.bs.modal',function(){			
			koorVal = $('#koordinat').val();
			if(koorVal !== "")
			{
				koorVal = koorVal.split(',');	
				imgW = bigMap.width();		    
			    imgH = bigMap.height();	
				corXpercentage = koorVal[0];
			    corYpercentage = koorVal[1];
			    // alert("KoorVal : "+koorVal[0]+" "+koorVal[1]);
			    // alert("Big Map : "+imgW+" "+imgH);
			    posX = (corXpercentage/100)*imgW;
			    posY = (corYpercentage/100)*imgH;			    
			    // alert("Position : "+posX+" "+posY);
			    $('#pinmap').animate({'left':posX+'px' , 'top':posY+'px'});
			}		
		});
		//cek
		
		
		koordinatInput = $('#koordinat');	

		bigMap.unbind('click').click(function(e) {			
		    offset = $(this).offset();
		    corX = e.pageX - offset.left;
		    corY = e.pageY - offset.top;
		    imgW = bigMap.width();		    
		    imgH = bigMap.height();		    
		    corXpercentage = corX/imgW*100;
		    corYpercentage = corY/imgH*100;
		    
		    posX = (corXpercentage/100)*imgW;
		    posY = (corYpercentage/100)*imgH;
		    $('#pinmap').animate({'left':posX+'px' , 'top':posY+'px'});
		    koordinatInput.val(corXpercentage+','+corYpercentage);
		    
		  });


	});
	//click form
	$("#form-simpan").submit(function(){
		tinyMCE.triggerSave();			
	    var formData = new FormData(this);
	    if(STATE == 0)
	    {
		    $.ajax({
		        url: window.location.pathname,
		        type: 'POST',
		        data: formData,
		        async: false,
		        success: function (data) {	            
		            console.log(data);
		            if(data == "success")
		            {	            	
		            	$('#form-simpan img').not('#selectMap').attr("src","");
		            	$("#form-simpan")[0].reset();
		            	loadTopiks();
		            	allTopiks();	      
		            	$('#message').html('Simpan Topik');
		            	$('#successAlert').show().fadeOut(5000);
		            }	
		        },
		        cache: false,
		        contentType: false,
		        processData: false
		    });
		}
		else
		{						
			ids = $('form').attr('data');	
			formData.append('_method','patch');		
			$.ajax({
		        url: window.location.pathname+"/"+ids,
		        type: 'POST',
		        data: formData,
		        async: false,
		        success: function (data) {	
		        	if(data == "success")		            
		        	{

			        	$('#form-simpan img').not('#selectMap').attr("src","");
			            $("#form-simpan")[0].reset();   
			            loadTopiks();
			            allTopiks();	
			            $('#message').html('Edit Topik');
			            $('#successAlert').show().fadeOut(5000);
			            createForm(); 
			        }
		        },
		        cache: false,
		        contentType: false,
		        processData: false
		    });

		}
	    return false;
	});
	//delete
	
	// edit	
});

function editProses()
{
	$('.edit').click(function(){
		editData($(this).attr('data'));
	});
}
function editData(id)
{	
	$.ajax({
	    url: HOST+"node/"+id+"/edit",
	    type: 'GET',	        
	    async: false,
	    success: function (data) {	            	            	            
	        editForm(data,id);	            
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});
	$('form').attr('data',id);
	
}
function createForm()
{	
	$('#form .panel-heading').html('Buat Topik');
	// $('#bg , #icon').attr('required','required');
	$('#form form').attr('action',HOST+'topik');
	STATE = 0;
	$('#select').find('option').removeAttr('selected');
	$('#select option[value=0]').attr('selected','selected');
	$('#form-simpan img').not('#selectMap').attr("src","");
	$("#form-simpan")[0].reset();
	
}
function editForm(data,id)
{
	tinyMCE.activeEditor.setContent(data.description);
	$('#nama').val(data.nama_node);
	$('#bg-view').attr('src',IMAGES+data.primary_image);
	$('#icon-view').attr('src',IMAGES+data.qr_code);
	$('#form .panel-heading').html('Edit Node');
	// $('#bg , #icon').removeAttr('required');
	$('#form form').attr('action',HOST+'node/'+id);
	$('#koordinat').val(data.koordinat);
	STATE = 1;
	$('#select').find('option').removeAttr('selected');
	$('#select option[value='+data.id_kabupaten+']').attr('selected','selected');	
	
}
function deleteProses()
{
	$('.delete').click(function(){
		$('#myModal').modal('show');
		$('#btnDanger').attr('data',$(this).attr('data'));
		$('#btnDanger').click(function(){
			deleteData($(this).attr('data'));
			$('#myModal').modal('hide').removeAttr('data')
		});
	});	
}
function deleteData(id)
{
	formData = new FormData(this);
	formData.append('_method','delete');
	$.ajax({
	        url: HOST+"node/"+id,
	        type: 'POST',
	        data: formData,
	        async: false,
	        success: function (data) {	            
	            if(data == "success")
	            {
	            	loadTopiks();	
	            	$('#item'+id).hide(300);  
	            	createForm();
	            	        
	            }
	        },
	        cache: false,
	        contentType: false,
	        processData: false
	    });
	
}

function readURL(input,ids) {

  if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function(e) {
      $(ids).attr('src', e.target.result);
    }

    reader.readAsDataURL(input.files[0]);
  }
}

function loadTopiks()
{
	$.ajax({
        url: HOST+"mainKabupaten",
        type: 'GET',	        
        async: false,
        dataType : 'JSON',
        success: function (data) {
            console.log(data.data);
            datas = data.data;
            $('#select').find('option').remove();            
            $.each(datas, function(index) {
	            $('#select').append("<option value='"+datas[index].id+"'>"+datas[index].nama_kabupaten+"</option>");		            
	        });

            
        },
        cache: false,
        contentType: false,
        processData: false
    });
}

function allTopiks()
{
	$('.bodyData').empty();
	$.ajax({
        url: HOST+"allNodes",
        type: 'GET',	        
        async: false,
        dataType : 'JSON',
        success: function (data) {
            console.log(data.data);
            datas = data.data;            
            $.each(datas, function(index) {
            	apen = "<div id='item"+datas[index].id+"' class='alert alert-info'>"+
            	"<div class='row'>"+
            	"<div class='col-md-6'><b>"+datas[index].nama_node+"</b><br>"+            	
            	datas[index].description+"</div>"+
            	"<div class='col-md-2'>"+
            	"<img src='"+IMAGES+datas[index].primary_image+"' class='img-fluid img-responsive img-rounded'>"+
            	"</div>"+

            	"<div class='col-md-2'>"+
            	"<img src='"+IMAGES+datas[index].qr_code+"' class='img-fluid img-responsive img-rounded' alt='Tidak Ada QR CODE'>"+
            	"</div>"+


            	"<div class='col-md-2'>"+
            	"<i title='Edit' class='edit fa fa-pencil-square-o' aria-hidden='true' data='"+datas[index].id+"'></i>"+
            	"<i title='Hapus' class='delete fa fa-trash' aria-hidden='true' data='"+datas[index].id+"'></i>"+
            	"<a href='"+HOST+"galleryNode/"+datas[index].id+"'><i title='Gallery' class=' fa fa-picture-o' aria-hidden='true' data='"+datas[index].id+"'></i></a></div>"+
            	"</div>"+
            	"</div>"
            	;
	            $('.bodyData').append(apen);		                        
	        });

            
        },
        cache: false,
        contentType: false,
        processData: false
    });
	deleteProses();
	editProses();
}

function reOrderUp(id)
{
	$.ajax({
	    url: HOST+"topik/reOrderUp/"+id,
	    type: 'GET',	        
	    async: false,
	    success: function (data) {	            	            	            
	    	if(data == "success")
	    	{
		   		allTopiks();		   		
		   	}
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});	
}

function reOrderDown(id)
{
	$.ajax({
	    url: HOST+"topik/reOrderDown/"+id,
	    type: 'GET',	        
	    async: false,
	    success: function (data) {	            	            	            
	    	if(data == "success")
	    	{
		   		allTopiks();		   		
		   	}
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});	
}