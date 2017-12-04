<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\kabupaten;

class kabupatenCtrl extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('kabupaten.index');
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
        $data['nama_kabupaten'] = $request->nama;
        $query = kabupaten::create($data);
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
        $query = kabupaten::where('id',$id)->first();
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
          $data['nama_kabupaten'] = $request->nama;
        $query = kabupaten::where('id',$id)->update($data);
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
         $query = kabupaten::where('id',$id)->delete();
         if($query)
            return Response("success",200);
        else
            return Response("failed",210);
    }
    public function allData()
    {        
        $data['data'] = kabupaten::withCount('getNodes')->get();
        return $data;
    }
    public function allDataNode()
    {
        $data['data'] = kabupaten::with('getNodes')->get();    
        return $data;

    }
}
