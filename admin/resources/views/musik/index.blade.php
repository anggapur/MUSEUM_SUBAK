@extends('layouts.app')

@section('content')

<div class="container">
<!-- SCRITP OWN -->
    <div class="row">        
        <div class="col-md-4">
            <div class="panel panel-default" id="form">
                <div class="panel-heading">Buat Lagu</div>
                <div class="panel-body">
                    <form id="form-simpan" action="{{route('musik.store')}}" method="POST" class="simpan" enctype="multipart/form-data">
                        <div class="form-group">
                            <label>Nama Lagu</label>
                            <input type="text" id="nama" name="nama" class="form-control" placeholder="Masukan Nama Lagu" required>
                        </div>                                               
                        <div class="form-group">
                            <label>Musik</label>
                            <input type="file" name="source" class="form-control" id="source" required>
                            <audio id="musik-view" controls>
                                <source src="" type="audio/ogg">
                                <source src="" type="audio/mpeg">
                                Your browser does not support the audio element.
                            </audio>                            
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
                <div class="panel-heading">Musik</div>
                <div class="panel-body bodyData">

                </div>
            </div>
        </div>
    </div>
</div>
<!-- Alert -->
<div class="alert alert-warning alert-dismissible" role="alert" id="successAlert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <strong>Sukses</strong> <span id="message">Simpan Musik</span>
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
        Anda Yakin Menghapus Musik?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-danger" id="btnDanger">Hapus</button>
      </div>
    </div>
  </div>
</div>
<!-- Modal 2 -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Pilih Musik Sebagai</h4>
      </div>
      <div class="modal-body">
        Pilih Musik Ini Sebagai
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-success" id="btnBg">Musik Background</button>
        <button type="button" class="btn btn-warning" id="btnKlik">Musik Klik</button>
      </div>
    </div>
  </div>
</div>
<script src="{{ asset('public/js/musik.js') }}"></script>
@endsection
