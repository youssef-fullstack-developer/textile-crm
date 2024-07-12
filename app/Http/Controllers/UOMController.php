<?php

namespace App\Http\Controllers;

use App\Models\UOM;
use Illuminate\Http\Request;

class UOMController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $uom = UOM::all();
        return view('yarn_master.uom.index', compact('uom'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            'code' => 'required',
            'to_meter' => 'required',
            'type' => 'required',
        ]);

        $data['description'] = $request->description ? $request->description  : '';
        $data['status'] = $request->status ? 1 : 0;

        UOM::create($data);
        return redirect('uom')->with('message', 'UOM created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(UOM $uOM)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(UOM $uOM)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, UOM $uOM)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(UOM $uOM)
    {
        //
    }
}
