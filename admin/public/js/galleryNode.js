$(document).ready(function(){

	ids = $('#id_node').attr('data');

	loadTopiks();	
	loadAllPhotos(ids);
	deleteProses();
	editProses();
	STATE = 0;
	title = "Photo";
	// Previrew
	$("#bg").change(function() {
	  readURL(this,'#bg-view');
	});
	//allPhotos
	$('#allPhotos').click(function(){
		loadAllPhotos();
	});
	//role li click
	$('li[role="presentation"]').not('#allPhotos').click(function(e){
		e.preventDefault();
		ids = $(this).attr('data');
		loadImageByTabs(ids);
	});
	// Submit Form
	$("#form-simpan").submit(function(){

	    var formData = new FormData(this);
	    if(STATE == 0)
	    {

		    $.ajax({
		        url: HOST+"galleryNode",
		        type: 'POST',
		        data: formData,
		        async: false,
		        success: function (data) {	            
		            console.log(data);
		            if(data == "success")
		            {	            	
		            	$('#form-simpan img').attr("src","");
		            	$("#form-simpan")[0].reset();
		            	loadTopiks();
		            	$('#message').html('Simpan '+title);
		            	$('#successAlert').show().fadeOut(5000);
		            	loadAllPhotos(ids);		            	
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
		        url: HOST+"galleryNode/"+ids,
		        type: 'POST',
		        data: formData,
		        async: false,
		        success: function (data) {	
		        	if(data == "success")		            
		        	{
			        	$('#form-simpan img').attr("src","");
			            $("#form-simpan")[0].reset();   		            
			            $('#message').html('Edit '+title);
			            $('#successAlert').show().fadeOut(5000);
			            createForm(); 
			            loadAllPhotos(ids);
			        }
		        },
		        cache: false,
		        contentType: false,
		        processData: false
		    });

		}
	    return false;
	});
});
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
        url: HOST+"getSubTopik",
        type: 'GET',	        
        async: false,
        dataType : 'JSON',
        success: function (data) {
            console.log(data.data);
            datas = data.data;
            $('#select1').find('option').remove();
            //$('#select1').append("<option value='0'>Menu Utama</option>");
            $.each(datas, function(index) {
	            $('#select1').append("<option value='"+datas[index].id+"'>"+datas[index].nama+"</option>");		            
	        });

            
        },
        cache: false,
        contentType: false,
        processData: false
    });
}
function loadKategories()
{
	$.ajax({
        url: HOST+"getKategories",
        type: 'GET',	        
        async: false,
        dataType : 'JSON',
        success: function (data) {
            console.log(data.data);
            datas = data.data;
            $('#select2').find('option').remove();
            // $('#select').append("<option value='0'>Menu Utama</option>");
            $.each(datas, function(index) {
	            $('#select2').append("<option value='"+datas[index].id+"'>"+datas[index].nama+"</option>");		            
	        });

            
        },
        cache: false,
        contentType: false,
        processData: false
    });
}
function loadKategoriesTab()
{
	$.ajax({
        url: HOST+"getKategories",
        type: 'GET',	        
        async: false,
        dataType : 'JSON',
        success: function (data) {
            console.log(data.data);
            datas = data.data;            
            // $('#select').append("<option value='0'>Menu Utama</option>");
            $.each(datas, function(index) {
	            $('#navTabs').append('<li role="presentation" data="'+datas[index].id+'"><a href="#home" aria-controls="home" role="tab" data-toggle="tab" >'+datas[index].nama+'</a></li>');		            
	        });

            
        },
        cache: false,
        contentType: false,
        processData: false
    });
}
function loadAllPhotos($id)
{	
	$.ajax({
        url: HOST+"allGalleryNode/"+$id,
        type: 'GET',	        
        async: false,
        dataType : 'JSON',
        success: function (data) {
            console.log(data.data);
            datas = data.data;            
            $('.bodyData').html("");
            $.each(datas, function(index) {
            	apen = '<div class="col-md-3" id="item'+datas[index].id+'">'+
            			'<i title="Edit" class="edit photoTool fa fa-pencil-square-o" aria-hidden="true" data="'+datas[index].id+'"></i>'+
            			'<i title="Hapus" class="delete photoTool fa fa-trash" aria-hidden="true" data="'+datas[index].id+'"></i>'+
            			'<a class="boxfancy" href="'+IMAGES+datas[index].source+'" data-fancybox="gallery" data-caption="'+datas[index].nama+' - '+datas[index].description+'">'+
            				'<img src="'+IMAGES+datas[index].source+'" class="img-rounded img-responsive photos">'+
            			'</a>'+
            			'</div>';
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

function loadImageByTabs(ids)
{
	$.ajax({
        url: HOST+"getPhotosByTabs/"+ids,
        type: 'GET',	        
        async: false,
        dataType : 'JSON',
        success: function (data) {
            console.log(data.data);
            datas = data.data;            
            $('.bodyData').html("");
            $.each(datas, function(index) {
            	apen = '<div class="col-md-3" id="item'+datas[index].id+'">'+
            			'<i title="Edit" class="edit photoTool fa fa-pencil-square-o" aria-hidden="true" data="'+datas[index].id+'"></i>'+
            			'<i title="Hapus" class="delete photoTool fa fa-trash" aria-hidden="true" data="'+datas[index].id+'"></i>'+
            			'<a class="boxfancy" href="'+IMAGES+datas[index].source+'" data-fancybox="gallery" data-caption="'+datas[index].nama+' - '+datas[index].description+'">'+
            				'<img src="'+IMAGES+datas[index].source+'" class="img-rounded img-responsive photos">'+
            			'</a>'+
            			'</div>';
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
function deleteProses()
{
	$('.delete').unbind('click').click(function(){
		$('#myModal').modal('show') 
		$('#btnDanger').attr('data',$(this).attr('data'));
		$('#btnDanger').unbind('click').click(function(){
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
	        url: HOST+"galleryNode/"+id,
	        type: 'POST',
	        data: formData,
	        async: false,
	        success: function (data) {	            
	            if(data == "success")
	            {
	            	loadAllPhotos(ids);
	            	$('#item'+id).hide(300);   
	            	createForm();         	
	            }
	        },
	        cache: false,
	        contentType: false,
	        processData: false
	    });
	
}

function cekActiveTabs()
{
	ids = $('li[role="presentation"].active').attr('data');
	if(ids == "" || ids == null)
	{
		loadAllPhotos();
	}
	else
	{
		loadImageByTabs(ids);
	}
}

function editProses()
{
	$('.edit').click(function(){
		editData($(this).attr('data'));		
	});
}
function editData(id)
{	
	$.ajax({
	    url: HOST+"galleryNode/"+id+"/edit",
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
function editForm(data,id)
{
	$('#nama').val(data.nama);
	$('#bg-view').attr('src',IMAGES+data.source);
	$('#description').val(data.description);
	$('#form .panel-heading span').html('Edit');
	$('#bg').removeAttr('required');
	$('#form form').attr('action',HOST+'photo/'+id);
	STATE = 1;
	$('#select1 , #select2').find('option').removeAttr('selected');
	$('#select1 option[value='+data.id_topik+']').attr('selected','selected');
	$('#select2 option[value='+data.id_kategori+']').attr('selected','selected');
	
}
function createForm()
{	
	$('#form .panel-heading span').html('Buat');
	$('#bg').attr('required','required');
	$('#form form').attr('action',HOST+'photo');
	$('#description , #nama').val("");
	STATE = 0;
	$('#select1 option[value=0]').attr('selected','selected');
	$('#select2 option[value=0]').attr('selected','selected');
	$('#bg-view').attr("src","");
	
}
function reOrderUp(id,id_kategori)
{
	$.ajax({
	    url: HOST+"photo/reOrderUp/"+id,
	    type: 'GET',	        
	    async: false,
	    success: function (data) {	            	            	            
	    	if(data == "success")
	    	{
		   		loadImageByTabs(id_kategori);	
		   	}
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});	
}

function reOrderDown(id,id_kategori)
{
	$.ajax({
	    url: HOST+"photo/reOrderDown/"+id,
	    type: 'GET',	        
	    async: false,
	    success: function (data) {	            	            	            
	    	if(data == "success")
	    	{
		   		loadImageByTabs(id_kategori);	
		   	}
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});	
}