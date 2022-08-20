<?php

namespace App\Http\Controllers;
use App\Models\product;

class ProductController extends controller  
{
    function index(){
        $data['list_product'] = product::all();
        return view('product.index', $data);
    }
    function create(){
        return view('product.create');
    }
    function store(){
       $product = new product;
       $product->nama_product = request('nama_product');
       $product->harga = request('harga');
       $product->berat = request('berat');
       $product->deskripsi = request('deskripsi');
       $product->stok = request('stok');
         
            $product->save();
    
              
       return redirect('product')->with('success', 'Data Berhasil Ditambahkan');
    }
    function show(product $product){
        $data['product'] = $product;
       return view('product.show', $data);
    }
    function edit(product $product){
        $data['product'] = $product;
       return view('product.edit', $data);
    }
    function update(product $product){
      
        $product->nama_product = request('nama_product');
        $product->harga = request('harga');
        $product->berat = request('berat');
        $product->deskripsi = request('deskripsi');
        $product->stok = request('stok');
          
             $product->save();
             return redirect('product')->with('success', 'Data Berhasil Diedit');
    }
    function destroy(product $product){
        $product->delete();
        return redirect('product')->with('danger', 'Data Berhasil Dihapus');
    }
}