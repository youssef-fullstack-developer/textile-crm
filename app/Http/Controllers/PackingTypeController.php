<?php

namespace App\Http\Controllers;

use App\Models\PackingType;
use Illuminate\Http\Request;

class PackingTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('packing_type.index');
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
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(PackingType $packingType)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(PackingType $packingType)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, PackingType $packingType)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(PackingType $packingType)
    {
        //
    }
}
