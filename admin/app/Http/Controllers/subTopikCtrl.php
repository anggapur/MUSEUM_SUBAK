<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Contracts\Filesystem\Filesystem;
use App\topik;
use App\detailTopik;
use Carbon\Carbon;
class subTopikCtrl extends Controller
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
        $data['description'] = $request->description;
        $data['id_topik'] = $request->id_topik;
        //cari order
        $order = detailTopik::where('id_topik',$data['id_topik'])->orderBy('order','DESC');
        if(count($order->get()) > 0)
        {
            $data['order'] = $order->first()->order+1;
        }
        else
        {
            $data['order'] = 0;
        }

        $image = $request->file('source');
        $imageFileName = time() .$image->getClientOriginalName();
        $data['media'] = $imageFileName;
        //cek file i
        if(in_array($image->getClientOriginalExtension(),['png','jpg','jpeg']))        
        {
            $destinationPath = 'public/images';
            $data['kategori_media'] = 'P';
        }
        else
        {
            $destinationPath = 'public/videos';
            $data['kategori_media'] = 'V';
        }
                
        $move = $image->move($destinationPath,$data['media']);
                
        $query = detailTopik::create($data);
        if($query)
            return Response('success',200);
        else
            return Response('failed',210);
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
        $data['data'] = topik::where('id',$id)->first();
        return view('subTopik.index')->with($data);
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
        $data = detailTopik::where('id',$id)->first();
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
        $data['description'] = $request->description;
        $bg = $request->file('source');
        if($bg !== NULL)
        {
            $data['media'] = Carbon::now()->format('dmYhis').$bg->getClientOriginalName();
            if(in_array($bg->getClientOriginalExtension(),['png','jpg','jpeg']))        
            {
                $destinationPath = 'public/images';
                $data['kategori_media'] = 'P';
            }
            else
            {
                $destinationPath = 'public/videos';
                $data['kategori_media'] = 'V';
            }
            $move = $bg->move($destinationPath,$data['media']);
        }
        $query = detailTopik::where('id',$id)->update($data);
        if($query)
            return Response('success',200);
        else
            return Response('failed',210);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $queryData = detailTopik::where('id',$id)->first();        
        $query = detailTopik::where('id_topik',$queryData->id_topik)
            ->where('order','>',$queryData->order)
            ->decrement('order');
        //
        $query = detailTopik::where('id',$id)->delete();
        if($query)
            return Response('success',200);
        else
            return Response('failed',210);
    }

    public function allDetailSubTopiks($id)
    {
        $data['data'] = detailTopik::where('id_topik',$id)->orderBy('order','ASC')->get();
        return Response($data,200);
    }
    public function reOrderUp($id)
    {
        $query = detailTopik::where('id',$id)->first();
        if($query->order > 0)
        {
            $update = detailTopik::where('id',$id)->decrement('order');
            $query = detailTopik::where('id',$id)->first();
            $update2 = detailTopik::where('id_topik',$query->id_topik)
                        ->where('order',$query->order)
                        ->where('id','!=',$id)
                        ->increment('order');
        }

        if($query)
            return Response("success",200);
        else
            return Response("failed",210);
    }
    public function reOrderDown($id)
    {
        $query = detailTopik::where('id',$id)->first();
        $all = detailTopik::where('id_topik',$query->id_topik)->get();
        if($query->order < count($all)-1)
        {
            $update = detailTopik::where('id',$id)->increment('order');
            $query = detailTopik::where('id',$id)->first();
            $update2 = detailTopik::where('id_topik',$query->id_topik)
                        ->where('order',$query->order)
                        ->where('id','!=',$id)
                        ->decrement('order');
        }

        if($query)
            return Response("success",200);
        else
            return Response("failed",210);
    }

    public function getDetail($id)
    {
        $data = detailTopik::where('id_topik',$id)->orderBy('order','ASC')->get();
        return $data;
    }
}
