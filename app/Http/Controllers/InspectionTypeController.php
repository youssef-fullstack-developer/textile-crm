<?php

namespace App\Http\Controllers;

use App\Models\InspectionType;
use Illuminate\Http\Request;

class InspectionTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $inspections = InspectionType::all();
        return view('inspection.index', compact('inspections'));
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
        InspectionType::create($request->all());
        return redirect()->back()->with('message', 'Inspection Type created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(InspectionType $inspectionType)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(InspectionType $inspectionType)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, InspectionType $inspectionType)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(InspectionType $inspectionType)
    {
        //
    }
}
