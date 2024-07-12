<?php

namespace App\Http\Controllers;

use App\Models\JobworkFabricReceive;
use Illuminate\Http\Request;

class JobworkFabricReceiveController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('warehouse.jobwork_fabric_receive.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('warehouse.jobwork_fabric_receive.add');
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
    public function show(JobworkFabricReceive $jobworkFabricReceive)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(JobworkFabricReceive $jobworkFabricReceive)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, JobworkFabricReceive $jobworkFabricReceive)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(JobworkFabricReceive $jobworkFabricReceive)
    {
        //
    }
}
