@extends('layouts.app')

@section('content')

<div class="container">
<!-- SCRITP OWN -->
    <div class="row">        
        <div class="col-md-4">
            <div class="panel panel-default" id="form">
                <div class="panel-heading">Buat Node</div>
                <div class="panel-body">
                    <form id="form-simpan" action="{{route('topik.store')}}" method="POST" class="simpan" enctype="multipart/form-data">
                        <div class="form-group">
                            <label>Nama Node</label>
                            <input type="text" id="nama" name="nama" class="form-control" placeholder="Masukan Nama Node" required>
                        </div>
                        <div class="form-group">
                            <label>Kabupaten</label>
                            <select class="form-control" id="select" name="id_kabupaten" required>                               
                            </select>
                        </div>
                         <div class="form-group">
                            <label>Description</label>
                            <textarea id="description" name="description" class="form-control" placeholder="Masukan Description"></textarea>
                        </div>    
                        <div class="form-group">
                            <label>Gambar Utama</label>
                            <input type="file" name="primary_image" class="form-control" id="bg" required>
                             <img id="bg-view" src="#" alt="Gambar Utama" class="img-responsive img-rounded" />
                        </div>
                        <div class="form-group">
                            <label>QR Code</label>
                            <input type="file" name="qr_code" class="form-control" id="icon">
                            <img id="icon-view" src="#" alt="QR Code" class="img-responsive img-rounded" />
                        </div>
                        <div class="form-group">
                            <label>Pilih Lokasi</label>
                            <img src="{{asset('public/peta-bali.jpg')}}" alt="Map Bali" id="selectMap" class="img-responsive img-rounded">
                            <input type="hidden" name="koordinat" value="" id="koordinat">
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
                <div class="panel-heading">Daftar Node</div>
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
        Anda Yakin Menghapus Node?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-danger" id="btnDanger">Hapus</button>
      </div>
    </div>
  </div>
</div>
<!-- Second Modal -->

<div class="modal fade bd-example-modal-lg" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Pin Map</h4>
      </div>
      <div class="modal-body">
        <img src="{{asset('public/peta-bali.jpg')}}" id="selectMapBig" class="img-responsive img-rounded" alt="Map">
        <img src="{{asset('public/pinmap.png')}}" id="pinmap">
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-success" data-dismiss="modal">Simpan Map</button>
        
      </div>
    </div>
  </div>
</div>
<script src="{{ asset('public/js/node.js') }}"></script>
@endsection
