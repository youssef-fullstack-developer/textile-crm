<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PlanningController extends Controller
{
    public function orders() {
        return view('planning.orders.index');
    }

    public function sizing_yarn_issue() {
        return view('planning.sizing_yarn_issue.index');
    }

    public function beam_inward() {
        return view('planning.beam_inward.index');
    }

    public function beam_outward() {
        return view('planning.beam_outward.index');
    }
}
