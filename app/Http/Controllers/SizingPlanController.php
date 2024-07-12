<?php

namespace App\Http\Controllers;

use App\Models\SizingPlan;
use Illuminate\Http\Request;

class SizingPlanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('planning.sizing_plan.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('planning.sizing_plan.add');
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
    public function show(SizingPlan $sizingPlan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(SizingPlan $sizingPlan)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, SizingPlan $sizingPlan)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(SizingPlan $sizingPlan)
    {
        //
    }
}
