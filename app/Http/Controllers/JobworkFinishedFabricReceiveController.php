<?php

namespace App\Http\Controllers;

use App\Models\JobworkFinishedFabricReceive;
use Illuminate\Http\Request;

class JobworkFinishedFabricReceiveController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('planning.jobwork_finished_fabric_receive.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('planning.jobwork_finished_fabric_receive.add');
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
    public function show(JobworkFinishedFabricReceive $jobworkFinishedFabricReceive)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(JobworkFinishedFabricReceive $jobworkFinishedFabricReceive)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, JobworkFinishedFabricReceive $jobworkFinishedFabricReceive)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(JobworkFinishedFabricReceive $jobworkFinishedFabricReceive)
    {
        //
    }
}
