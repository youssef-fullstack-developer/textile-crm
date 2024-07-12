<?php

namespace App\Http\Controllers;

use App\Models\JobworkProcessContract;
use Illuminate\Http\Request;

class JobworkProcessContractController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('planning.jobwork_process_contract.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('planning.jobwork_process_contract.add');
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
    public function show(JobworkProcessContract $jobworkProcessContract)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(JobworkProcessContract $jobworkProcessContract)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, JobworkProcessContract $jobworkProcessContract)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(JobworkProcessContract $jobworkProcessContract)
    {
        //
    }
}
