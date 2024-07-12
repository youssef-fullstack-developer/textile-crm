<?php

namespace App\Http\Controllers;

use App\Models\VendorGroups;
use Illuminate\Http\Request;

class VendorGroupsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $vendor_groups = VendorGroups::all();
        return view('vendor_groups.index', compact('vendor_groups'));
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
        $data = $request->validate([
            'group' => 'required',
            'group_type' => 'required',
            'code' => 'required',
        ]);

        $data['is_internal'] = $request["is_internal"] ? "1" : "0";
        $data['status'] = $request["status"] ? "1" : "0";

        VendorGroups::create($data);
        return redirect('vendor_groups')->with('message', 'Vendor Group created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(VendorGroups $vendorGroups)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(VendorGroups $vendorGroups)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, VendorGroups $vendorGroups)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(VendorGroups $vendorGroups)
    {
        //
    }
}
