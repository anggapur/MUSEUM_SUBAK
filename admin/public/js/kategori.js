$(document).ready(function(){
	//load data	
	allData();
	deleteProses();
	editProses();
	// preview FIle
	$("#bg").change(function() {
	  readURL(this,'#bg-view');
	});
	$("#icon").change(function() {
	  readURL(this,'#icon-view');
	});

	//click form
	$("#form-simpan").submit(function(){
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
		            	$("#form-simpan")[0].reset();		            	
		            	allData();	      
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
			            $("#form-simpan")[0].reset();   			          
			            allData();	
			            $('#message').html('Edit Kategori');
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
	    url: HOST+"kategori/"+id+"/edit",
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
	$('#form .panel-heading span').html('Buat');	
	$('#form form').attr('action',HOST+'kategori');
	STATE = 0;	
}
function editForm(data,id)
{
	$('#nama').val(data.nama);
	$('#bg-view').attr('src',IMAGES+data.background);
	$('#icon-view').attr('src',IMAGES+data.icon);
	$('#form .panel-heading span').html('Edit');
	$('#bg , #icon').removeAttr('required');
	$('#form form').attr('action',HOST+'topik/'+id);
	STATE = 1;
	$('#select option[value='+data.id_parent+']').attr('selected','selected');
	
}
function deleteProses()
{
	$('.delete').click(function(){
		$('#myModal').modal('show') 
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
	        url: HOST+"kategori/"+id,
	        type: 'POST',
	        data: formData,
	        async: false,
	        success: function (data) {	            
	            if(data == "success")
	            {	            
	            	$('#item'+id).hide(300);            	
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

function allData()
{
	$('.bodyData').empty();
	$.ajax({
        url: HOST+"allDataKategori",
        type: 'GET',	        
        async: false,
        dataType : 'JSON',
        success: function (data) {
            console.log(data.data);
            datas = data.data;            
            $.each(datas, function(index) {
            	apen = "<div id='item"+datas[index].id+"' class='alert alert-info'>"+
            	"<div class='row'>"+
            		"<div class='col-md-5'>"+datas[index].nama+"</div>"+
            		"<div class='col-md-2'>"+datas[index].get_photos_count+"<i class='floatLeft fa fa-picture-o'></i></div>"+
            		"<div class='col-md-2'>"+datas[index].get_videos_count+"<i class='floatLeft fa fa-file-video-o'></i></div>"+
            		"<div class='col-md-3'>"+
		            	"<i title='Edit' class='edit fa fa-pencil-square-o' aria-hidden='true' data='"+datas[index].id+"'></i>"+
		            	"<i title='Hapus' class='delete fa fa-trash' aria-hidden='true' data='"+datas[index].id+"'></i></div>"+
		            "</div>"+
            	"</div>";
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