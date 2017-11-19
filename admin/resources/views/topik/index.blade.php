@extends('layouts.app')

@section('content')

<div class="container">
<!-- SCRITP OWN -->
    <div class="row">        
        <div class="col-md-4">
            <div class="panel panel-default" id="form">
                <div class="panel-heading">Buat Topik</div>
                <div class="panel-body">
                    <form id="form-simpan" action="{{route('topik.store')}}" method="POST" class="simpan" enctype="multipart/form-data">
                        <div class="form-group">
                            <label>Nama Topik / Subtopik</label>
                            <input type="text" id="nama" name="nama" class="form-control" placeholder="Masukan Nama Topik/Subtopik" required>
                        </div>
                        <div class="form-group">
                            <label>Bagian Dari</label>
                            <select class="form-control" id="select" name="id_parent" required>                               
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Background</label>
                            <input type="file" name="background" class="form-control" id="bg" required>
                             <img id="bg-view" src="#" alt="Background Image" class="img-responsive img-rounded" />
                        </div>
                        <div class="form-group">
                            <label>Icon</label>
                            <input type="file" name="icon" class="form-control" id="icon" required>
                            <img id="icon-view" src="#" alt="Icon Image" class="img-responsive img-rounded" />
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
                <div class="panel-heading">Topik</div>
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
        Anda Yakin Menghapus Topik?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-danger" id="btnDanger">Hapus</button>
      </div>
    </div>
  </div>
</div>
<script src="{{ asset('public/js/topik.js') }}"></script>
@endsection
