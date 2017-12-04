<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\galleryVideo;
use App\topik;
use App\kategori;
use Response;
use Carbon\Carbon;
class videoCtrl extends Controller
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
        return View('video.index');
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
        if($request->description == NULL)
        {
            $data['description'] = "";
        }
        //cek order
        $order = galleryVideo::where('id_kategori',$data['id_kategori'])->orderBy('id','DESC');
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
        $destinationPath = "public/videos";
        $move = $bg->move($destinationPath,$data['source']);        
        $query = galleryVideo::create($data);
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
        $data = galleryVideo::where('id',$id)->first();
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
        if($request->description == NULL)
        {
            $data['description'] = "";
        }
        $data['id_topik'] = $request->id_topik;
        $data['id_kategori'] = $request->id_kategori;
        $bg = $request->file('source');
        if($bg !== NULL)
        {
            $data['source'] = Carbon::now()->format('dmYhis').$bg->getClientOriginalName();
            $destinationPath = 'public/videos';
            $move = $bg->move($destinationPath,$data['source']);
        }
        $query = galleryVideo::where('id',$id)->update($data);
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
        $queryData = galleryVideo::where('id',$id)->first();        
        $query = galleryVideo::where('id_kategori',$queryData->id_kategori)
            ->where('order','>',$queryData->order)
            ->decrement('order');

        $query = galleryVideo::where('id',$id)->delete();
        if($query)
            return Response("success",200);
        else
            return Response("failed",210);
    }
    public function getSubTopik()
    {
        $data['data'] = topik::where('id_parent','!=','0')->get();
        return $data;
    }
    public function getKategories()
    {
        $data['data'] = kategori::orderBy('nama','ASC')->get();
        return $data;
    }
    public function getAllPhotos()
    {
        $data['data'] = galleryVideo::all();
        return $data;
    }
     public function getPhotosByTabs($id)
    {
        $data['data'] = galleryVideo::where('id_kategori',$id)->orderBy('order','ASC')->get();
        return $data;
    }
    public function reOrderUp($id)
    {
        $query = galleryVideo::where('id',$id)->first();
        if($query->order > 0)
        {
            $update = galleryVideo::where('id',$id)->decrement('order');
            $query = galleryVideo::where('id',$id)->first();
            $update2 = galleryVideo::where('id_kategori',$query->id_kategori)
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
         $query = galleryVideo::where('id',$id)->first();
        $all = galleryVideo::where('id_kategori',$query->id_kategori)->get();
        if($query->order < count($all)-1)
        {
            $update = galleryVideo::where('id',$id)->increment('order');
            $query = galleryVideo::where('id',$id)->first();
            $update2 = galleryVideo::where('id_kategori',$query->id_kategori)
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