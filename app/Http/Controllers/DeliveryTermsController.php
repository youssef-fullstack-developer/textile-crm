<?php

namespace App\Http\Controllers;

use App\Models\DeliveryTerms;
use Illuminate\Http\Request;

class DeliveryTermsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $delivery_terms = DeliveryTerms::all();
        return view('master.delivery_terms.index' , compact('delivery_terms'));
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
            'name' => 'required',
            'description' => 'required',
            'delivery_for' => 'required',
            'status' => 'required',
        ]);

        DeliveryTerms::create($data);
        return redirect()->back()->with('message', 'Delivery Terms created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(DeliveryTerms $deliveryTerms)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(DeliveryTerms $deliveryTerms)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, DeliveryTerms $deliveryTerms)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(DeliveryTerms $deliveryTerms)
    {
        //
    }
}
