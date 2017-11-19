<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\topik;
use Response;
use carbon\Carbon;
class topikCtrl extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $data['topik'] = topik::where('id_parent','0')->get();
        return view('topik.index')->with($data);
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
        $data['id_parent'] = $request->id_parent;
        $bg = $request->file('background');
        $data['background'] = Carbon::now()->format('dmYhis').$bg->getClientOriginalName();
        $destinationPath = 'public/images';
        $move = $bg->move($destinationPath,$data['background']);

        $icon = $request->file('icon');
        $data['icon'] = Carbon::now()->format('dmYhis').$icon->getClientOriginalName();
        $destinationPath = 'public/images';
        $move = $icon->move($destinationPath,$data['icon']);
        // inset
        $query = topik::create($data);

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
        $data = topik::where('id',$id)->first();
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
        

        //cek
        unset($data['background']);
        $bg = $request->file('background');
        if($bg !== NULL)
        {
            $data['background'] = Carbon::now()->format('dmYhis').$bg->getClientOriginalName();
            $destinationPath = 'public/images';
            $move = $bg->move($destinationPath,$data['background']);
        }

        unset($data['icon']);
        $icon = $request->file('icon');
        if($icon !== NULL)
        {
            $data['icon'] = Carbon::now()->format('dmYhis').$icon->getClientOriginalName();
            $destinationPath = 'public/images';
            $move = $icon->move($destinationPath,$data['icon']);
        }

        $query = topik::where('id',$id)->update($data);
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
        $query = topik::where('id',$id)->delete();
        if($query)
            return Response('success',200);
        else
            return Response('failed',210);
    }
    public function allTopiks()
    {
        $query['data'] = topik::with('getChilds')
        ->where('topiks.id_parent','0')
        ->get();
        return $query;
    }

    public function mainTopiks()
    {
        $data['data'] = topik::where('id_parent','0')->get();
        return $data;
    }
}
