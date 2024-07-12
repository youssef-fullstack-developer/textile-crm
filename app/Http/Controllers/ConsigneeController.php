<?php

namespace App\Http\Controllers;

use App\Models\City;
use App\Models\Consignee;
use App\Models\State;
use Illuminate\Http\Request;

class ConsigneeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $consignee = Consignee::all();
        return view('consignee.index', compact('consignee'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $cities = City::where('status' , 1)->get();
        $states = State::where('status' , 1)->get();
        return view('consignee.add', compact('states', 'cities'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->validate([
            'name' => 'required',
            'state_id' => 'required',
            'city_id' => 'required',
            'address' => 'required',
            'gstn' => 'required',
            'pin' => 'required',
            'contact' => 'required',
            'pan' => 'required',
            'active' => 'required',
        ]);

        Consignee::create($data);
        return redirect()->route('consignee.index')->with('message', 'Consignee created successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(Consignee $consignee)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Consignee $consignee)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Consignee $consignee)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Consignee $consignee)
    {
        //
    }
}
