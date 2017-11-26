<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\galleryPhoto;
use App\topik;
use App\kategori;
use Response;
use Carbon\Carbon;
class photoCtrl extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('auth');
    }  
    public function index()
    {
        //
        return View('photo.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $data = $request->all();
        //cek order
        $order = galleryPhoto::where('id_kategori',$data['id_kategori'])->orderBy('id','DESC');
        if(count($order->get()) > 0)
        {
            $data['order'] = $order->first()->order+1;
        }
        else
        {
            $data['order'] = 0;
        }
        //image
        $bg = $request->file('source');
        $data['source'] = Carbon::now()->format('dmYhis').$bg->getClientOriginalName();
        $destinationPath = "public/images";
        $move = $bg->move($destinationPath,$data['source']);        
        $query = galleryPhoto::create($data);
        if($query)
            return Response("success",200);
        else 
            return Response("failed",210);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $data = galleryPhoto::where('id',$id)->first();
        return $data;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $data['nama'] = $request->nama;
        $data['description'] = $request->description;
        $data['id_topik'] = $request->id_topik;
        $data['id_kategori'] = $request->id_kategori;
        $bg = $request->file('source');
        if($bg !== NULL)
        {
            $data['source'] = Carbon::now()->format('dmYhis').$bg->getClientOriginalName();
            $destinationPath = 'public/images';
            $move = $bg->move($destinationPath,$data['source']);
        }
        $query = galleryPhoto::where('id',$id)->update($data);
        if($query)
            return Response("success",200);
        else
            return Response("failed",210);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $queryData = galleryPhoto::where('id',$id)->first();        
        $query = galleryPhoto::where('id_kategori',$queryData->id_kategori)
            ->where('order','>',$queryData->order)
            ->decrement('order');

        $query = galleryPhoto::where('id',$id)->delete();
        if($query)
            return Response("success",200);
        else
            return Response("failed",210);
    }
    public function getSubTopik()
    {
        $data['data'] = topik::where('id_parent','0')->get();
        return $data;
    }
    public function getKategories()
    {
        $data['data'] = kategori::orderBy('nama','ASC')->get();
        return $data;
    }
    public function getAllPhotos()
    {
        $data['data'] = galleryPhoto::all();
        return $data;
    }
     public function getPhotosByTabs($id)
    {
        $data['data'] = galleryPhoto::where('id_kategori',$id)->orderBy('order','ASC')->get();
        return $data;
    }
    public function reOrderUp($id)
    {
        $query = galleryPhoto::where('id',$id)->first();
        if($query->order > 0)
        {
            $update = galleryPhoto::where('id',$id)->decrement('order');
            $query = galleryPhoto::where('id',$id)->first();
            $update2 = galleryPhoto::where('id_kategori',$query->id_kategori)
                        ->where('order',$query->order)
                        ->where('id','!=',$id)
                        ->increment('order');
        }
        if($query)
            return Response('success',200);
        else 
            return Response('failed',210);
    }
    public function reOrderDown($id)
    {
         $query = galleryPhoto::where('id',$id)->first();
        $all = galleryPhoto::where('id_kategori',$query->id_kategori)->get();
        if($query->order < count($all)-1)
        {
            $update = galleryPhoto::where('id',$id)->increment('order');
            $query = galleryPhoto::where('id',$id)->first();
            $update2 = galleryPhoto::where('id_kategori',$query->id_kategori)
                        ->where('order',$query->order)
                        ->where('id','!=',$id)
                        ->decrement('order');
        }
        if($query)
            return Response('success',200);
        else 
            return Response('failed',210);
    }

    
}
