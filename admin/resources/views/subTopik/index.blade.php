@extends('layouts.app')

@section('content')

<div class="container">
<!-- SCRITP OWN -->
    <div class="row">        
        <div class="col-md-4">
            <div class="panel panel-default" id="form">
                <div class="panel-heading"><span>Buat</span> Detail - {{$data->nama}}</div>
                <div class="panel-body">
                    <form id="form-simpan" action="{{route('subTopik.store')}}" method="POST" class="simpan" enctype="multipart/form-data">
                        <div class="form-group">
                            <label>Deskripsi</label>
                            <textarea id="description" class="form-control" name="description" placeholder="Masukan Deskripsi" rows="5"></textarea>

                        </div>                        
                        <div class="form-group">
                            <label>Gambar / Video</label>                        
                            <input type="file" name="source" class="form-control" id="source">
                             <img id="source-view" src="#" alt="" class="img-responsive img-rounded" />
                             <video id="source-view-video" width="400" class="img-responsive" controls>
                              <source src="" id="video_here">
                                Your browser does not support HTML5 video.
                            </video>
                            <i class="fa fa-trash hapusMedia">Hapus Media</i>
                        </div>                       
                        <div class="form-group">
                            <input type="hidden" name="id_topik" value="{{$data->id}}">
                            <input type="submit" name="submit" value="Simpan" id="simpan" class="btn btn-success" >
                            {{csrf_field()}}
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="panel panel-default">
                <div class="panel-heading">Detail Sub Topik {{$data->nama}}</div>
                <div class="panel-body bodyData">

                </div>
            </div>
        </div>
    </div>
</div>
<!-- Alert -->
<div class="alert alert-warning alert-dismissible" role="alert" id="successAlert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <strong>Sukses</strong> <span id="message">Simpan Topik</span>
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
        Anda Yakin Menghapus Sub Topik?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-danger" id="btnDanger">Hapus</button>
      </div>
    </div>
  </div>
</div>
<script src="{{ asset('public/js/subTopik.js') }}"></script>
@endsection
