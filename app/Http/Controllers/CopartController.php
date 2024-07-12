<?php

namespace App\Http\Controllers;

use App\Models\Copart;
use Illuminate\Http\Request;

class CopartController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $coparts = Copart::all();
        return view('copart.index', compact('coparts'));
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
        Copart::create($request->all());
        return redirect()->back()->with('message', 'Certification created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(Copart $copart)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Copart $copart)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Copart $copart)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Copart $copart)
    {
        //
    }
}
