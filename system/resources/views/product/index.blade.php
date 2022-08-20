@extends('template.base')

@section('content')
    <div class="container"> 
        <div class="row">
            <div class="col-md-12 mt-5">
                <div class="card">
                    <div class="card-header">
                        Data Produk
                        <a href="{{url('product/create')}}" class="btn btn-dark float-right"><i class="fa fa-plus"></i> Tambah Data</a>
                    </div>
                    <div class="card-body">
                        <table class="table">
                            <thead>
                                <th>No</th>
                                <th>Aksi</th>
                                <th>Nama Produk</th>
                                <th>Harga</th>
                                <th>Stok</th>
                            </thead>
                            <tbody>
                                @foreach ($list_product as $product)
                                <tr>
                                    <td>{{$loop->iteration}}</td>
                                    <td>
                                        <div class="btn-group">
                                        <a href="{{url('product',$product->id)}}" class="btn btn-dark"><i class="fa fa-info"></i></a>
                                        <a href="{{url('product',$product->id)}}/edit" class="btn btn-warning"><i class="fa fa-edit"></i></a>
                                             @include('template.utils.delete', ['url' => url('product', $product->id)])
                                        </div>
                                        
                                    </td>
                                    <td>{{$product->nama_product}}</td>
                                    <td>{{$product->harga}}</td>
                                    <td>{{$product->stok}}</td>
                                    
                                </tr>
                                @endforeach
                                
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
   
@endsection
