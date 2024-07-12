<?php

namespace App\Http\Controllers;

use App\Models\Qualities;
use Illuminate\Http\Request;

class QualitiesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('qualities.index');
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
    public function show(Qualities $qualities)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Qualities $qualities)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Qualities $qualities)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Qualities $qualities)
    {
        //
    }
}
