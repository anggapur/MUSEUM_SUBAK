$(document).ready(function(){
	//load data
	
	allData();
	deleteProses();
	editProses();
	$("#source").change(function() {
	  readURL(this,'#musik-view');
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
		            	//$('#form-simpan img').attr("src","");
		            	$("#form-simpan")[0].reset();		            	
		            	allData();	      
		            	$('#message').html('Simpan Musik');
		            	$('#successAlert').show().fadeOut(5000);
		            	$('#musik-view').attr('src','');
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
			            
			            allData();	
			            $('#message').html('Edit Musik');
			            $('#successAlert').show().fadeOut(5000);
			            createForm(); 
			            $('#musik-view').attr('src','');
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
	    url: HOST+"musik/"+id+"/edit",
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
	$('#form .panel-heading').html('Buat Musik');
	$('#source').attr('required','required');
	$('#form form').attr('action',HOST+'musik');
	STATE = 0;
	$('#select').find('option').removeAttr('selected');
	$('#select option[value=0]').attr('selected','selected');
	$('#form-simpan img').attr("src","");
	$("#form-simpan")[0].reset();
	
}
function editForm(data,id)
{
	$('#nama').val(data.nama);
	$('#musik-view').attr('src',MUSIK+data.source);	
	$('#form .panel-heading').html('Edit Musik');
	$('#source').removeAttr('required');
	$('#form form').attr('action',HOST+'musik/'+id);
	STATE = 1;
	
	
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

function selectAs(id)
{
	$('#myModal2').modal('show');
	$('#btnKlik').attr('data',id).click(function(){
		changeState(id,"click");
	});
	$('#btnBg').attr('data',id).click(function(){
		changeState(id,"background");
	});

}
function deleteData(id)
{
	formData = new FormData(this);
	formData.append('_method','delete');
	$.ajax({
	        url: HOST+"musik/"+id,
	        type: 'POST',
	        data: formData,
	        async: false,
	        success: function (data) {	            
	            if(data == "success")
	            {
	            	
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



function allData()
{
	$('.bodyData').empty();
	$.ajax({
        url: HOST+"allDataMusik",
        type: 'GET',	        
        async: false,
        dataType : 'JSON',
        success: function (data) {
            console.log(data.data);
            datas = data.data;            
            $.each(datas, function(index) {
            	alert = "info";
            	state = "";
            	if(datas[index].state == "click")
            	{
            		alert = "warning";
            		state = " <b>(Musik Click)</b>";
            	}
            	else if(datas[index].state == "background")
            	{
            		alert = "success"
            		state = " <b>(Musik Background)</b>";
            	}

            	apen = "<div id='item"+datas[index].id+"' class='alert alert-"+alert+"'>"+datas[index].nama+state+
            	"<i title='Pilih Sebagai Musik Background atau Klik' onclick='selectAs("+datas[index].id+")' class='fa fa-certificate' aria-hidden='true' data='"+datas[index].id+"'></i>"+            	
            	"<i title='Edit' class='edit fa fa-pencil-square-o' aria-hidden='true' data='"+datas[index].id+"'></i>"+
            	"<i title='Hapus' class='delete fa fa-trash' aria-hidden='true' data='"+datas[index].id+"'></i></div>";
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
		   		allData();		   		
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
		   		allData();		   		
		   	}
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});	
}

function changeState(id,state)
{
	$.ajax({
	    url: HOST+"musik/changeState/"+id+"/"+state,
	    type: 'GET',	        
	    async: false,
	    success: function (data) {	            	            	            
	    	if(data == "success")
	    	{
		   		allData();		
		   		$('#myModal2').modal('hide');   		
		   	}
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});	
}