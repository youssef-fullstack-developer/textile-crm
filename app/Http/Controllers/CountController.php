<?php

namespace App\Http\Controllers;

use App\Models\Count;
use Illuminate\Http\Request;

class CountController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $count = Count::all();
        return view('count.index', compact('count'));
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
            'count' => 'required',
        ]);

        $data['status'] = $request->status ? 1 : 0;

        Count::create($data);
        return redirect('count')->with('message', 'Count created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(Count $count)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Count $count)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Count $count)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Count $count)
    {
        //
    }
}
