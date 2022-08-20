@extends('template.base')

@section('content')
    <div class="container"> 
        <div class="row">
            <div class="col-md-12 mt-5">
                <div class="card">
                    <div class="card-header">
                        Tambah Data Produk
                       
                    </div>
                    <div class="card-body">
                        <form action="{{url('product')}}" method="POST"  >
                            @csrf
                            <div class="form-group">
                                <label class="control-label">Nama Produk</label>
                                 <input type="text" class = "form-control" name="nama_product">
                             </div>
                             <div class="row">
                                 <div class="col-md-6">
                                     <div class="form-group">
                                         <label class="control-label">Harga</label>
                                          <input type="text" class = "form-control" name="harga">
                                      </div>
                                 </div>
                                 <div class="col-md-3">
                                     <div class="form-group">
                                         <label class="control-label">Berat</label>
                                          <input type="text" class = "form-control" name="berat">
                                      </div>
                                 </div>
                                 <div class="col-md-3">
                                     <div class="form-group">
                                         <label class="control-label">Stok</label>
                                          <input type="text" class = "form-control" name="stok">
                                      </div>
                                 </div>
                             </div>
                             
                              
                              
                              <div class="form-group">
                                 <label class="control-label">Deskripsi</label>
                                 <textarea name="deskripsi" class = "form-control" ></textarea>
                                 
                              </div>
                              <button class="btn btn-dark  float-right"><i class="fa fa-save"></i> Simpan</button>
                         </div>
     
                        </form>
                        
                </div>
            </div>
        </div>
    </div>
   
@endsection
