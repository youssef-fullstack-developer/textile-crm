<?php

namespace App\Http\Controllers;

use App\Models\City;
use App\Models\Port;
use App\Models\State;
use Illuminate\Http\Request;

class PortController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $ports = Port::all();
        return view('port.index', compact('ports'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $states = State::all();
        $cities = City::all();
        return view('port.add', compact('states', 'cities'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            'code' => 'required',
            'state' => 'required',
            'name' => 'required',
        ]);

        $data['description'] = $request->description ? $request->description : '';
        $data['pin'] = $request->pin ? $request->pin : '';
        $data['city'] = $request->city ? $request->city : '';
        $data['status'] = $request->status ? 1 : 0;

        Port::create($data);
        return redirect('port')->with('message', 'Port created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(Port $port)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Port $port)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Port $port)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Port $port)
    {
        //
    }
}
