<?php

namespace App\Http\Controllers;

use App\Models\InvoiceSettings;
use Illuminate\Http\Request;

class InvoiceSettingsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $invoice_settings = InvoiceSettings::all();
        return view('invoice_settings.index', compact('invoice_settings'));
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
            'key' => 'required',
            'value' => 'required|unique:invoice_settings'
        ]);

        InvoiceSettings::create($data);
        return redirect('invoice_settings')->with('message', 'Settings created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(InvoiceSettings $invoiceSettings)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(InvoiceSettings $invoiceSettings)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, InvoiceSettings $invoiceSettings)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(InvoiceSettings $invoiceSettings)
    {
        //
    }
}
