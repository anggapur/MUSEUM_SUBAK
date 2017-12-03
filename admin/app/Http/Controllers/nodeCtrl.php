<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\kabupaten;
use Carbon\Carbon;
use App\node;
class nodeCtrl extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('node.index');
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
        $data['nama_node'] = $request->nama;
        $data['id_kabupaten'] = $request->id_kabupaten;
        $data['description'] = $request->description;
        $bg = $request->file('primary_image');
        $data['primary_image'] = Carbon::now()->format('dmYhis').$bg->getClientOriginalName();
        $destinationPath = 'public/images';
        $move = $bg->move($destinationPath,$data['primary_image']);

        $icon = $request->file('qr_code');
        $data['qr_code'] = "";
        if($icon != NULL)
        {
            $data['qr_code'] = Carbon::now()->format('dmYhis').$icon->getClientOriginalName();
            $destinationPath = 'public/images';
            $move = $icon->move($destinationPath,$data['qr_code']);
        }
        // inset
        $query = node::create($data);

        if($query)
            return Response('success',200);
        else
            return Response('error',210);
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
         $data = node::where('id',$id)->first();
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
        $data = $request->except('_method','_token');
       $data['nama_node'] = $data['nama'];
       unset($data['nama']);
       unset($data['primary_image']);
        $bg = $request->file('primary_image');
        if($bg !== NULL)
        {
            $data['primary_image'] = Carbon::now()->format('dmYhis').$bg->getClientOriginalName();
            $destinationPath = 'public/images';
            $move = $bg->move($destinationPath,$data['primary_image']);
        }

        unset($data['qr_code']);
        $icon = $request->file('qr_code');
        if($icon !== NULL)
        {
            $data['qr_code'] = Carbon::now()->format('dmYhis').$icon->getClientOriginalName();
            $destinationPath = 'public/images';
            $move = $icon->move($destinationPath,$data['qr_code']);
        }

        $query = node::where('id',$id)->update($data);
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
        $query = node::where('id',$id)->delete();
        if($query)
            return Response('success',200);
        else
            return Response('failed',210);
    }
    public function mainKabupaten()
    {
         $data['data'] = kabupaten::all();
        return $data;
    }
    public function allNodes()
    {
        $query['data'] = node::all();
        return $query;
    }
}
