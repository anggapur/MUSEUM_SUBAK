$(document).ready(function(){
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
		            	$('#form-simpan img').attr("src","");
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
			        	$('#form-simpan img').attr("src","");
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
	    url: HOST+"topik/"+id+"/edit",
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
	$('#bg , #icon').attr('required','required');
	$('#form form').attr('action',HOST+'topik');
	STATE = 0;
	$('#select option[value=0]').attr('selected','selected');
	$('#form-simpan img').attr("src","");
	$("#form-simpan")[0].reset();
	
}
function editForm(data,id)
{
	$('#nama').val(data.nama);
	$('#bg-view').attr('src',IMAGES+data.background);
	$('#icon-view').attr('src',IMAGES+data.icon);
	$('#form .panel-heading').html('Edit Topik');
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
	        url: HOST+"topik/"+id,
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
        url: HOST+"mainTopiks",
        type: 'GET',	        
        async: false,
        dataType : 'JSON',
        success: function (data) {
            console.log(data.data);
            datas = data.data;
            $('#select').find('option').remove();
            $('#select').append("<option value='0'>Menu Utama</option>");
            $.each(datas, function(index) {
	            $('#select').append("<option value='"+datas[index].id+"'>"+datas[index].nama+"</option>");		            
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
        url: HOST+"allTopiks",
        type: 'GET',	        
        async: false,
        dataType : 'JSON',
        success: function (data) {
            console.log(data.data);
            datas = data.data;            
            $.each(datas, function(index) {
            	apen = "<div id='item"+datas[index].id+"' class='alert alert-info'>"+datas[index].nama+
            	"<i title='Turun' class='edit fa fa-chevron-down' aria-hidden='true' data='"+datas[index].id+"'></i>"+
            	"<i title='Naik' class='edit fa fa-chevron-up' aria-hidden='true' data='"+datas[index].id+"'></i>"+            	
            	"<i title='Edit' class='edit fa fa-pencil-square-o' aria-hidden='true' data='"+datas[index].id+"'></i>"+
            	"<i title='Hapus' class='delete fa fa-trash' aria-hidden='true' data='"+datas[index].id+"'></i></div>";
	            $('.bodyData').append(apen);	
	             $.each(datas[index].get_childs, function(i) {
	             	apenDeep = "<div id='item"+datas[index].get_childs[i].id+"' class='alert alert-warning' style='margin-left:50px'>"+datas[index].get_childs[i].nama+
	             	"<i title='Turun' class='edit fa fa-chevron-down' aria-hidden='true' data-parent='"+datas[index].id+"' data='"+datas[index].get_childs[i].id+"'></i>"+
	             	"<i title='Naik' class='edit fa fa-chevron-up' aria-hidden='true' data-parent='"+datas[index].id+"' data='"+datas[index].get_childs[i].id+"'></i>"+
	             	"<i title='Edit' class='edit fa fa-pencil-square-o' aria-hidden='true' data='"+datas[index].get_childs[i].id+"'></i>"+
	             	"<i title='Hapus' class='delete fa fa-trash' aria-hidden='true' data='"+datas[index].get_childs[i].id+"'></i>"+
	             	"<a href='"+HOST+"subTopik/"+datas[index].get_childs[i].id+"'> <i class='fa fa-file-text' title='Detail'> </i></a></div>";
		            $('.bodyData').append(apenDeep);		            
		        });	            

	        });

            
        },
        cache: false,
        contentType: false,
        processData: false
    });
	deleteProses();
	editProses();
}