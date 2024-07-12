<?php

namespace App\Http\Controllers;

use App\Models\PreCarriage;
use Illuminate\Http\Request;

class PreCarriageController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $pres = PreCarriage::all();
        return view('pre_carriage.index', compact('pres'));
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
        PreCarriage::create($request->all());
        return redirect()->back()->with('message', 'Pre Carriage created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(PreCarriage $preCarriage)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(PreCarriage $preCarriage)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, PreCarriage $preCarriage)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(PreCarriage $preCarriage)
    {
        //
    }
}
