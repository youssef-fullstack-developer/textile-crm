<?php

namespace App\Http\Controllers;

use App\Models\JobworkWeavingContract;
use Illuminate\Http\Request;

class JobworkWeavingContractController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('planning.jobwork_weaving_contract.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('planning.jobwork_weaving_contract.add');
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
    public function show(JobworkWeavingContract $jobworkWeavingContract)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(JobworkWeavingContract $jobworkWeavingContract)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, JobworkWeavingContract $jobworkWeavingContract)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(JobworkWeavingContract $jobworkWeavingContract)
    {
        //
    }
}
