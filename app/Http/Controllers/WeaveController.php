<?php

namespace App\Http\Controllers;

use App\Models\Weave;
use Illuminate\Http\Request;

class WeaveController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $weave = Weave::all();
        return view('weave.index', compact('weave'));
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
            'name' => 'required'
        ]);

        $data['no_of_heald_frame'] = $request->no_of_heald_frame ? $request->no_of_heald_frame : '';
        Weave::create($data);
        return redirect()->back()->with('message', 'Weave created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(Weave $weave)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Weave $weave)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Weave $weave)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Weave $weave)
    {
        //
    }
}
