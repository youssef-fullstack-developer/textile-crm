<?php

namespace App\Http\Controllers;

use App\Models\JobworkProcessContractIssue;
use Illuminate\Http\Request;

class JobworkProcessContractIssueController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('planning.jobwork_process_contract_issue.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('planning.jobwork_process_contract_issue.add');
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
    public function show(JobworkProcessContractIssue $jobworkProcessContractIssue)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(JobworkProcessContractIssue $jobworkProcessContractIssue)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, JobworkProcessContractIssue $jobworkProcessContractIssue)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(JobworkProcessContractIssue $jobworkProcessContractIssue)
    {
        //
    }
}
