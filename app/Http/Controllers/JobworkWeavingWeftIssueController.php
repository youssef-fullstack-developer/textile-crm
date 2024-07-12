<?php

namespace App\Http\Controllers;

use App\Models\JobworkWeavingWeftIssue;
use Illuminate\Http\Request;

class JobworkWeavingWeftIssueController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('planning.jobwork_weaving_weft_issue.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('planning.jobwork_weaving_weft_issue.add');
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
    public function show(JobworkWeavingWeftIssue $jobworkWeavingWeftIssue)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(JobworkWeavingWeftIssue $jobworkWeavingWeftIssue)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, JobworkWeavingWeftIssue $jobworkWeavingWeftIssue)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(JobworkWeavingWeftIssue $jobworkWeavingWeftIssue)
    {
        //
    }
}
