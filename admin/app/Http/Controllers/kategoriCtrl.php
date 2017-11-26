<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\kategori;
class kategoriCtrl extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function __construct()
    {
        $this->middleware('auth',['except'=>['getPhotoGallery','getVideoGallery']]);
    }  
    public function index()
    {
        //
        return view('kategori.index');
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
        $data['nama'] = $request->nama;
        $query = kategori::create($data);
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
        $query = kategori::where('id',$id)->first();
        return $query;
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
        $query = kategori::where('id',$id)->update($data);
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
        $query = kategori::where('id',$id)->delete();
         if($query)
            return Response("success",200);
        else
            return Response("failed",210);

    }
    public function allData()
    {        
        $data['data'] = kategori::withCount(['getPhotos','getVideos'])->get();
        return $data;
    }
    public function getPhotoGallery($id_topik)
    {
        $data = kategori::with(['getPhotos' => function($q) use ($id_topik){
            $q->where('id_topik',$id_topik);
        }])->get();
        return $data;
    }
    public function getVideoGallery($id_topik)
    {
        $data = kategori::with(['getVideos' => function($q) use ($id_topik){
            $q->where('id_topik',$id_topik);
        }])->get();
        return $data;
    }
}
