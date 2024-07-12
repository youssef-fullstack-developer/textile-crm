<?php

namespace App\Http\Controllers;

use App\Models\YarnInward;
use Illuminate\Http\Request;

class YarnInwardController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('stock.yarn_inward.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('stock.yarn_inward.add');
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
    public function show(YarnInward $yarnInward)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(YarnInward $yarnInward)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, YarnInward $yarnInward)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(YarnInward $yarnInward)
    {
        //
    }
}
