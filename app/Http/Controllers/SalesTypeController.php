<?php

namespace App\Http\Controllers;

use App\Models\SalesType;
use Illuminate\Http\Request;

class SalesTypeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $sales_types = SalesType::all();
        return view('sales_type.index', compact('sales_types'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            'name' => 'required',
            'account_group' => 'required',
            'status' => 'required',
        ]);

        SalesType::create($data);
        return redirect()->back()->with('message', 'Sales type created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(SalesType $salesType)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(SalesType $salesType)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, SalesType $salesType)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(SalesType $salesType)
    {
        //
    }
}
