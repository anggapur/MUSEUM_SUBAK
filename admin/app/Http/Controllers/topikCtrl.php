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
     public function __construct()
    {
        $this->middleware('auth', ['except' => ['edit','childTopiks','mainTopiks']]);
    }  
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
        //cek order
        $order = topik::where('id_parent',$request->id_parent)->orderby('order','DESC');
        if(count($order->get()) > 0)
        {
            $data['order'] = $order->first()->order+1;
        }
        else {
            $data['order'] = 0;
        }
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
        $data = $request->except('_method','_token');
        $queryData = topik::where('id',$id)->first();
        //ubah order
        // ubah order sebelum dia
        if($queryData->id_parent !== $request->id_parent)
        {
            $ubahOrder = topik::where('id_parent',$queryData->id_parent)
                        ->where('order','>',$queryData->order)->decrement('order');
            //update ordernya dia
            $dataQuery = topik::where('id_parent',$request->id_parent)->orderBy('order','DESC');
            if(count($dataQuery->get()) > 0)
            {   
                $data['order'] = $dataQuery->first()->order+1;
            }
            else
            {
                $data['order'] = 0;
            }
        }
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
        $queryData = topik::where('id',$id)->first();        
        $query = topik::where('id_parent',$queryData->id_parent)
            ->where('order','>',$queryData->order)
            ->decrement('order');
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
        ->orderBy('order','ASC')
        ->get();
        return $query;
    }

    public function mainTopiks()
    {
        $data['data'] = topik::where('id_parent','0')
        ->orderBy('order','ASC')->get();
        return $data;
    }
     public function childTopiks($id)
    {
        $data['data'] = topik::where('id_parent',$id)
        ->orderBy('order','ASC')->get();
        return $data;
    }
    public function reOrderUp($id)
    {
        $query = topik::where('id',$id)->first();
        if($query->order > 0)
        {
            $update = topik::where('id',$id)->decrement('order');
            $query = topik::where('id',$id)->first();
            $update2 = topik::where('id_parent',$query->id_parent)
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
        $query = topik::where('id',$id)->first();
        $all = topik::where('id_parent',$query->id_parent)->get();
        if($query->order < count($all)-1)
        {
            $update = topik::where('id',$id)->increment('order');
            $query = topik::where('id',$id)->first();
            $update2 = topik::where('id_parent',$query->id_parent)
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
