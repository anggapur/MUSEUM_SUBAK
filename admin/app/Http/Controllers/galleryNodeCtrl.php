<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\galleryNode;
use App\node;
use Carbon\Carbon;
class galleryNodeCtrl extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
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
         $data['id_node'] = $request->id_node;
       
        //image
        $bg = $request->file('source');
        $data['source'] = Carbon::now()->format('dmYhis').$bg->getClientOriginalName();        
        if(in_array($bg->getClientOriginalExtension(),['png','jpg','jpeg']))        
        {
            $destinationPath = 'public/images';            
        }
        else
        {
            $destinationPath = 'public/videos';            
        }
        
        $move = $bg->move($destinationPath,$data['source']);        
        $query = galleryNode::create($data);
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
        $data['data'] = node::where('id',$id)->first();    
        return view('galleryNode.index')->with($data);
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
         $data = galleryNode::where('id',$id)->first();
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
        $data['id_node'] = $request->id_node;
        
        $bg = $request->file('source');
        if($bg !== NULL)
        {
            $data['source'] = Carbon::now()->format('dmYhis').$bg->getClientOriginalName();
            if(in_array($bg->getClientOriginalExtension(),['png','jpg','jpeg']))        
            {
                $destinationPath = 'public/images';            
            }
            else
            {
                $destinationPath = 'public/videos';            
            }
            $move = $bg->move($destinationPath,$data['source']);
        }
        $query = galleryNode::where('id',$id)->update($data);
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
        $query = galleryNode::where('id',$id)->delete();
        if($query)
            return Response("success",200);
        else
            return Response("failed",210);
    }
    public function allGalleryNode($id)
    {
        $data['data'] = galleryNode::where('id_node',$id)->get();
        return $data;
    }
}
