<?php

namespace App\Http\Controllers;

use App\Models\GodownLocations;
use App\Models\VendorGroups;
use Illuminate\Http\Request;

class GodownLocationsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $godowns = GodownLocations::all();
        return view('godown.index', compact('godowns'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $vendor_groups = VendorGroups::all();
        return view('godown.add', compact('vendor_groups'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            'name' => 'required',
            'description' => 'required',
            'location' => 'required',
            'code' => 'required',
            'vendor_group_id' => 'required',
            'type' => 'required',
            'zone' => 'required',
            'status' => 'required',
            'is_default' => 'required'
        ]);

        GodownLocations::create($data);
        return redirect()->route('godown.index')->with('message', 'Godown location created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(GodownLocations $godownLocations)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(GodownLocations $godownLocations)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, GodownLocations $godownLocations)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(GodownLocations $godownLocations)
    {
        //
    }
}
