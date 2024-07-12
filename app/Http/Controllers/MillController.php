<?php

namespace App\Http\Controllers;

use App\Models\Mill;
use Illuminate\Http\Request;

class MillController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $mills = Mill::all();
        return view('mill.index', compact('mills'));
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
        ]);

        Mill::create($data);
        return redirect()->back()->with('message', 'Mill created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(Mill $mill)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Mill $mill)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Mill $mill)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Mill $mill)
    {
        //
    }
}
