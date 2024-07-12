<?php

namespace App\Http\Controllers;

use App\Models\Ply;
use Illuminate\Http\Request;

class PlyController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $ply = Ply::all();
        return view('ply.index', compact('ply'));
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
            'ply' => 'required',
        ]);

        $data['status'] = $request->status ? 1 : 0;

        Ply::create($data);
        return redirect('ply')->with('message', 'Ply created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(Ply $ply)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Ply $ply)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Ply $ply)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Ply $ply)
    {
        //
    }
}
