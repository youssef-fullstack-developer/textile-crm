<?php

namespace App\Http\Controllers;

use App\Models\GST;
use Illuminate\Http\Request;

class GSTController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $gsts = GST::all();
        return view('gst.index', compact('gsts'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('gst.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
         $request->validate([
            'gst_type' => 'required',
            'status' => 'required'
        ]);

         $data = $request->all();

        if ($request->gst_type == 1){
            $data['sgst'] = '0.00';
            $data['cgst'] = '0.00';
        }elseif($request->gst_type == 2){
            $data['igst'] = '0.00';
        }

        GST::create($data);
        return redirect()->route('gst.index')->with('message', 'GST created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(GST $gST)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(GST $gST)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, GST $gST)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(GST $gST)
    {
        //
    }
}
