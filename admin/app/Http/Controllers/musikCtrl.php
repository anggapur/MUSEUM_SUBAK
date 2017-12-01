<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\musik;
use Carbon\Carbon;

class musikCtrl extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        return view('musik.index');
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

        $data['nama'] = $request->nama;        
        $bg = $request->file('source');
        $data['source'] = Carbon::now()->format('dmYhis').$bg->getClientOriginalName();
        $destinationPath = 'public/musik';
        $move = $bg->move($destinationPath,$data['source']);
        $data['state'] = "";
       
        // inset
        $query = musik::create($data);

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
         $data = musik::where('id',$id)->first();
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
        unset($data['source']);
        $bg = $request->file('source');
        if($bg !== NULL)
        {
            $data['source'] = Carbon::now()->format('dmYhis').$bg->getClientOriginalName();
            $destinationPath = 'public/musik';
            $move = $bg->move($destinationPath,$data['source']);
        }

        $query = musik::where('id',$id)->update($data);
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
       
        $query = musik::where('id',$id)->delete();
        if($query)
            return Response('success',200);
        else
            return Response('failed',210);
    }
    public function allData()
    {
        $data['data'] = musik::all();
        return $data;
    }
    public function changeState($id,$state)
    {
        //change th eold to normal
        $change = musik::where('state',$state)->update(['state' => '']);
        
        $data['state'] = $state;
        $query = musik::where('id',$id)->update($data);
         if($query)
            return Response('success',200);
        else
            return Response('failed',210);
    }
    public function musikBackground()
    {

        $query = musik::where('state','background')->first();
        return $query->source;
    }
    public function musikClick()
    {

        $query = musik::where('state','click')->first();
        return $query->source;
    }
}
