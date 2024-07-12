<?php

namespace App\Http\Controllers;

use App\Models\Transportations;
use Illuminate\Http\Request;

class TransportationsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $transportations = Transportations::all();
        return view('transportation.index', compact('transportations'));
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
        Transportations::create($request->all());
        return redirect()->back()->with('message', 'Transportations created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(Transportations $transportations)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Transportations $transportations)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Transportations $transportations)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Transportations $transportations)
    {
        //
    }
}
