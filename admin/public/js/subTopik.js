var IDS = $('input[name=id_topik]').val();
$(document).ready(function(){
	//init
	allTopiks(IDS);
	deleteProses();
	editProses();
	reorderProses();
	//when change
	$("#source").change(function() {
	  
	  // get the file name, possibly with path (depends on browser)
        var filename = $(this).val();

        // Use a regular expression to trim everything before final dot
        var extension = filename.replace(/^.*\./, '');

        // Iff there is no dot anywhere in filename, we would have extension == filename,
        // so we account for this possibility now
        if (extension == filename) {
            extension = '';
        } else {
            // if there is an extension, we convert to lower case
            // (N.B. this conversion will not effect the value of the extension
            // on the file upload.)
            extension = extension.toLowerCase();
        }

        switch (extension) {
            case 'jpg':
            case 'jpeg':
            case 'png':
                // alert("it's got an extension which suggests it's a PNG or JPG image (but N.B. that's only its name, so let's be sure that we, say, check the mime-type server-side!)");
                readURL(this,'#source-view');
                $('#source-view').show();
                $('#source-view-video').hide();
                break;
            // uncomment the next line to allow the form to submitted in this case:
//          break;

            case 'mp4':
            case 'mkv':                
                alert('Untuk Video Tidak Ditampilkan Preview');
                // readURL(this,'#source-view-video');
                $('#source-view').hide();
                // $('#source-view-video').show();
                break;
        }
	});

	//submit to save
	$('#form-simpan').submit(function(){
		var formData = new FormData(this);
		if(STATE == 0)
	    {
		    $.ajax({
		        url: HOST+'subTopik',
		        type: 'POST',
		        data: formData,
		        async: false,
		        success: function (data) {	            
		            console.log(data);
		            if(data == "success")
		            {	            	
		            	$('#form-simpan img').attr("src","");
		            	$("#form-simpan")[0].reset();		            	
		            	allTopiks(IDS);	      
		            	$('#message').html('Simpan Detail SubTopik');
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
		        url: HOST+"subTopik/"+ids,
		        type: 'POST',
		        data: formData,
		        async: false,
		        success: function (data) {	
		        	if(data == "success")		            
		        	{
			        	$('#form-simpan img , #form-simpan video').attr("src","");
			            $("#form-simpan")[0].reset();   			            
			            allTopiks(IDS);	
			            $('#message').html('Edit Detail Subtopik');
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
});

//fungsi real time image
function readURL(input,ids) {

  if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function(e) {
      $(ids).attr('src', e.target.result);      
    }

    reader.readAsDataURL(input.files[0]);
  }
}

function allTopiks(IDS)
{

	$('.bodyData').empty();
	$.ajax({
        url: HOST+"allDetailSubTopiks/"+IDS,
        type: 'GET',	        
        async: false,
        dataType : 'JSON',
        success: function (data) {
            console.log(data.data);
            datas = data.data;            
            $.each(datas, function(index) {
            	if(datas[index].kategori_media == 'P')
            	{
            		media = "<img src='"+HOST+"public/images/"+datas[index].media+"' class='img-responsive img-rounded'> ";
            	}
            	else
            	{
            		media = '<video class="img-responsive" width="400" controls>'+            		
'                              <source src="'+HOST+"public/videos/"+datas[index].media+'" id="video_here">'+
                                'Your browser does not support HTML5 video.'+
                            '</video>';
            	}

            	apen = "<div id='item"+datas[index].id+"' class='alert alert-info'>"+
            				"<div class='row'>"+
				            	"<div class='col-md-7'>"+datas[index].description+"</div>"+
				            	"<div class='col-md-4'>"+media+"</div>"+
				            	"<div class='col-md-1'>"+
					            	"<i title='Edit' class='edit fa fa-pencil-square-o' aria-hidden='true' data='"+datas[index].id+"'></i>"+
					            	"<i title='Hapus' class='delete fa fa-trash' aria-hidden='true' data='"+datas[index].id+"'></i>"+
					            	"<i title='Naik' data-order='up' class='reOrder fa fa-chevron-up' aria-hidden='true' data='"+datas[index].id+"'></i>"+
					            	"<i title='Turun' data-order='down' class='reOrder fa fa-chevron-down' aria-hidden='true' data='"+datas[index].id+"'></i>"+
					            "</div>"+
					        "</div>"+
				        "</div>";

	            $('.bodyData').append(apen);		                       
	        });

            deleteProses();
			editProses();
			reorderProses();
        },
        cache: false,
        contentType: false,
        processData: false
    });
	
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
        url: HOST+"subTopik/"+id,
        type: 'POST',
        data: formData,
        async: false,
        success: function (data) {	            
            if(data == "success")
            {            	
            	$('#item'+id).hide(300);            	
            	allTopiks(IDS);
            }
        },
        cache: false,
        contentType: false,
        processData: false
    });
	
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
	    url: HOST+"subTopik/"+id+"/edit",
	    type: 'GET',	        
	    async: false,
	    success: function (data) {	            	            	            
	        editForm(data,id);	  
	        console.log(data);          
	    },
	    cache: false,
	    contentType: false,
	    processData: false
	});
	$('form').attr('data',id);
	
}
function editForm(data,id)
{
	$('#description').val(data.description);
	$('#form .panel-heading span').html('Edit');

	if(data.kategori_media == "P")
	{
		$('#source-view').attr('src',IMAGES+data.media).show();
		$('#source-view-video').hide();
	}
	else
	{
		$('#source-view-video').attr('src',VIDEOS+data.media).show();
		$('#source-view').hide();
	}

	
	
	$('#source').removeAttr('required');
	$('#form form').attr('action',HOST+'subTopik/'+id);
	STATE = 1;
	
	
}

function createForm()
{	
	$('#form .panel-heading span').html('Buat');
	$('#source').attr('required','required');
	$('#form form').attr('action',HOST+'subTopik');
	$('#source-view-video').hide();
	STATE = 0;		
}

function reorderProses(){
	$('.reOrder').unbind('click').click(function(){
		kind = $(this).attr('data-order');
		idOrder = $(this).attr('data');
		if(kind == 'up')
			urls = HOST+"subTopik/reOrderUp/"+idOrder;
		else if(kind == 'down')
			urls = HOST+"subTopik/reOrderDown/"+idOrder;
		
		$.ajax({
		    url: urls,
		    type: 'POST',	        
		    async: false,
		    success: function (data) {	            	            	            
		        allTopiks(IDS);         		        
		    },
		    cache: false,
		    contentType: false,
		    processData: false
		});		
	});
}