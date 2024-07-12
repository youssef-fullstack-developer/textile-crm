<?php

namespace App\Http\Controllers;

use App\Models\LoomTypes;
use Illuminate\Http\Request;

class LoomTypesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $list = LoomTypes::all();
        return view('loom_types.index', compact('list'));
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
        $data['status'] = $request->status ? 1 : 0;

        LoomTypes::create($data);
        return redirect('loom_types')->with('message', 'Loom Type created Successfully');
    }


    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $item = LoomTypes::findOrFail($id);
        return response()->json($item);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $data = $request->validate([
            'name' => 'required'
        ]);
        $data['status'] = $request->status ? 1 : 0;

        $item = LoomTypes::findOrFail($id);
        $item->update($data);
        return redirect('loom_types')->with('success', 'Loom type updated successfully');

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        LoomTypes::findOrFail($id)->delete();
        return redirect('loom_types')->with('success', 'Loom type deleted successfully');
    }
}
