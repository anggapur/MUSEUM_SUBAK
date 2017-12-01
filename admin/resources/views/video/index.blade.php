@extends('layouts.app')

@section('content')

<div class="container">
<!-- SCRITP OWN -->
    <div class="row">        
        <div class="col-md-4">
            <div class="panel panel-default" id="form">
                <div class="panel-heading"><span>Buat</span> Video</div>
                <div class="panel-body">
                    <form id="form-simpan" action="{{route('video.store')}}" method="POST" class="simpan" enctype="multipart/form-data">
                        <div class="form-group">
                            <label>Nama</label>
                            <input type="text" id="nama" name="nama" class="form-control" placeholder="Masukan Nama Photos" required>
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <textarea id="description" name="description" class="form-control" placeholder="Masukan Description" required></textarea>
                        </div>                        
                        <div class="form-group">
                            <label>Bagian Dari Subtopik</label>
                            <select class="form-control" id="select1" name="id_topik" required>                               
                            </select>
                        </div>
                        <div class="form-group">
                             <label>Kategori</label>
                            <select class="form-control" id="select2" name="id_kategori" required>                               
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Video</label>
                            <input type="file" name="source" class="form-control" id="bg" required>
                             
                        </div>                      
                        <div class="form-group">
                            <input type="submit" name="submit" value="Simpan" id="simpan" class="btn btn-success" >
                            {{csrf_field()}}
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="panel panel-default">
                <div class="panel-heading">Video</div>
                    <div>
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist" id="navTabs">
                        <li role="presentation" class="active" id="allPhotos"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Semua</a></li>                       
                        </ul>
                    </div>
                <div class="panel-body bodyData">

                </div>
            </div>
        </div>
    </div>
</div>
<!-- Alert -->
<div class="alert alert-warning alert-dismissible" role="alert" id="successAlert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <strong>Sukses</strong> <span id="message">Simpan Video</span>
</div>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Hapus Data</h4>
      </div>
      <div class="modal-body">
        Anda Yakin Menghapus Video?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-danger" id="btnDanger">Hapus</button>
      </div>
    </div>
  </div>
</div>
<script src="{{ asset('public/js/video.js') }}"></script>
@endsection
