<?php

namespace App\Http\Controllers;

use App\Models\Agent;
use App\Models\Bank;
use App\Models\Buyers;
use App\Models\City;
use App\Models\ContainerSize;
use App\Models\Contracts;
use App\Models\Countries;
use App\Models\InspectionType;
use App\Models\InvoiceSettings;
use App\Models\PaperTubeSize;
use App\Models\PaymentTerms;
use App\Models\SalesCoOrdinator;
use App\Models\SalesOrder;
use App\Models\SalesOrderDetail;
use App\Models\SalesOrderSubDetail;
use App\Models\SalesOrderYarnCertification;
use App\Models\Selvedge;
use App\Models\ShippingTerm;
use App\Models\Sort;
use App\Models\SoType;
use App\Models\SourcingExecutive;
use App\Models\TermsCondition;
use App\Models\Unit;
use App\Models\User;
use App\Models\Vendors;
use App\Models\Weave;
use App\Models\YarnCertificationType;
use Illuminate\Http\Request;

class SalesOrderController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $list = SalesOrder::with('sales_order_details', 'buyer')->get();
        return view('sales_order.index', compact('list'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $invoice_types = InvoiceSettings::where("status", 1)->get();
        $contract_types = Contracts::all();
        $cities = City::where("status", 1)->get();
        $buyers = Buyers::all();
        $sourcing_executives = SourcingExecutive::where("status", 1)->get();
        $countries = Countries::where("status", 1)->get();
        $agents = Agent::where("status", 1)->get();
        $shipping_terms = ShippingTerm::where("status", 1)->get();
        $banks = Bank::where("status", 1)->get();
        $container_sizes = ContainerSize::where("status", 1)->get();
        $payment_terms = PaymentTerms::where("status", 1)->get();
        $terms_conditions = TermsCondition::where("status", 1)->get();
        $users = User::all();
        $sales_co_ordinators = SalesCoOrdinator::where("status", 1)->get();
        $so_types = SoType::where("status", 1)->get();
        $sorts = Sort::where("status", 1)->get();
        $weave_types = Weave::where("status", 1)->get();
        $selvedges = Selvedge::where("status", 1)->get();
        $units = Unit::where("status", 1)->get();
        $inspection_types = InspectionType::where("status", 1)->get();
        $paper_tube_sizes = PaperTubeSize::where("status", 1)->get();
        $vendors = Vendors::where("status", 1)->get();
        $yarn_certification_types = YarnCertificationType::where("status", 1)->get();

        return view('sales_order.add', compact('invoice_types','vendors', 'contract_types', 'cities', 'buyers', 'sourcing_executives', 'countries', 'agents', 'shipping_terms', 'banks', 'container_sizes', 'payment_terms', 'terms_conditions', 'users', 'sales_co_ordinators', 'so_types', 'sorts', 'weave_types', 'sorts', 'selvedges', 'units', 'inspection_types', 'paper_tube_sizes', 'yarn_certification_types'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $data = $request->all();
        $order = SalesOrder::create($data);
        $order->order_no = "HST/EX01/".$order->id;
        $order->save();
        $i = 0;
        foreach ($data["order_details"] as $key => $order_details) {
            $det = array();
            $det["sales_order_id"] = $order->id;
            $det["finished_quality_id"] = $order_details["finished_quality_id"];
            $det["weave_type_id"] = $order_details["weave_type_id"];
            $det["first_quality_id"] = $order_details["first_quality_id"];
            $det["selvedge_id"] = $order_details["selvedge_id"];
            $det["unit_id"] = $order_details["unit_id"];
            $det["inspection_type_id"] = $order_details["inspection_type_id"];
            $det["paper_tube_size_id"] = $order_details["paper_tube_size_id"];
            $det["costing_number"] = $order_details["costing_number"];
            $det["hsn_code"] = $order_details["hsn_code"];
            $det["quantity"] = $order_details["quantity"];
            $det["rate_per_unit"] = $order_details["rate_per_unit"];
            $det["val"] = $order_details["val"];
            $det["frieght_charge"] = $order_details["frieght_charge"];
            $det["surcharge"] = $order_details["surcharge"];
            $det["exchange_rate"] = $order_details["exchange_rate"];
            $det["inr_rate"] = $order_details["inr_rate"];
            $det["piece_length"] = $order_details["piece_length"];
            $det["variation"] = $order_details["variation"];
            $det["fold"] = $order_details["fold"];
            $det["yarn_det"] = $order_details["yarn_det"];
            $det["packing_type"] = $order_details["packing_type"];
            $det["buyer_sort"] = $order_details["buyer_sort"];
            $det["sort_code"] = $order_details["sort_code"];
            $det["instruction_factory"] = $order_details["instruction_factory"];
            $det["description"] = $order_details["description"];
            $det["fabric_type"] = $order_details["fabric_type"];
            $det["currency"] = $order_details["currency"];

            $detail = SalesOrderDetail::create($det);
            $i++;
            $j = 0;
            foreach ($order_details["fcl"] as $row) {
                $sub_det = array();
                $sub_det["sales_order_detail_id"] = $detail->id;
                $sub_det["fcl"] = $order_details["fcl"][$j];
                $sub_det["po_lds"] = $order_details["po_lds"][$j];
                $sub_det["ex_factory_date"] = $order_details["ex_factory_date"][$j];
                $sub_det["actual_ex_factory_date"] = $order_details["actual_ex_factory_date"][$j];
                $sub_det["lc_expire_date"] = $order_details["lc_expire_date"][$j];
                $sub_det["office_remark"] = $order_details["office_remark"][$j];
                $sub_det["factory_remark"] = $order_details["factory_remark"][$j];
                $sub_det["lc_no"] = $order_details["lc_no"][$j];
                $sub_det["lds_date"] = $order_details["lds_date"][$j];
                $sub_det["line"] = $order_details["line"][$j];
                $sub_det["etd"] = $order_details["etd"][$j];
                $sub_det["eta"] = $order_details["eta"][$j];

                SalesOrderSubDetail::create($sub_det);
                $j++;
            }

            foreach ($order_details["yarn_certification_type_id"] as $row) {
                $sub_det = array();
                $sub_det["sales_order_detail_id"] = $detail->id;
                $sub_det["yarn_certification_type_id"] = $row;
                SalesOrderYarnCertification::create($sub_det);
            }
        }


        return redirect('sales_order')->with('message', "Sale added successfully...");
    }

    /**
     * Display the specified resource.
     */
    public function show(SalesOrder $salesOrder)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $invoice_types = InvoiceSettings::where("status", 1)->get();
        $contract_types = Contracts::all();
        $cities = City::where("status", 1)->get();
        $buyers = Buyers::all();
        $sourcing_executives = SourcingExecutive::where("status", 1)->get();
        $countries = Countries::where("status", 1)->get();
        $agents = Agent::where("status", 1)->get();
        $shipping_terms = ShippingTerm::where("status", 1)->get();
        $banks = Bank::where("status", 1)->get();
        $container_sizes = ContainerSize::where("status", 1)->get();
        $payment_terms = PaymentTerms::where("status", 1)->get();
        $terms_conditions = TermsCondition::where("status", 1)->get();
        $users = User::all();
        $sales_co_ordinators = SalesCoOrdinator::where("status", 1)->get();
        $so_types = SoType::where("status", 1)->get();
        $sorts = Sort::where("status", 1)->get();
        $weave_types = Weave::where("status", 1)->get();
        $selvedges = Selvedge::where("status", 1)->get();
        $units = Unit::where("status", 1)->get();
        $inspection_types = InspectionType::where("status", 1)->get();
        $paper_tube_sizes = PaperTubeSize::where("status", 1)->get();
        $yarn_certification_types = YarnCertificationType::where("status", 1)->get();
        $item = SalesOrder::findOrFail($id);
        return view('sales_order.add', compact('item','invoice_types', 'contract_types', 'cities', 'buyers', 'sourcing_executives', 'countries', 'agents', 'shipping_terms', 'banks', 'container_sizes', 'payment_terms', 'terms_conditions', 'users', 'sales_co_ordinators', 'so_types', 'sorts', 'weave_types', 'sorts', 'selvedges', 'units', 'inspection_types', 'paper_tube_sizes', 'yarn_certification_types'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $data = $request->all();
        $order = SalesOrder::findOrFail($id);
        $i = 0;
        foreach ($data["order_details"] as $key => $order_details) {
            $det = array();

            $det["finished_quality_id"] = $order_details["finished_quality_id"];
            $det["weave_type_id"] = $order_details["weave_type_id"];
            $det["first_quality_id"] = $order_details["first_quality_id"];
            $det["selvedge_id"] = $order_details["selvedge_id"];
            $det["unit_id"] = $order_details["unit_id"];
            $det["inspection_type_id"] = $order_details["inspection_type_id"];
            $det["paper_tube_size_id"] = $order_details["paper_tube_size_id"];
            $det["costing_number"] = $order_details["costing_number"];
            $det["hsn_code"] = $order_details["hsn_code"];
            $det["quantity"] = $order_details["quantity"];
            $det["rate_per_unit"] = $order_details["rate_per_unit"];
            $det["val"] = $order_details["val"];
            $det["frieght_charge"] = $order_details["frieght_charge"];
            $det["surcharge"] = $order_details["surcharge"];
            $det["exchange_rate"] = $order_details["exchange_rate"];
            $det["inr_rate"] = $order_details["inr_rate"];
            $det["piece_length"] = $order_details["piece_length"];
            $det["variation"] = $order_details["variation"];
            $det["fold"] = $order_details["fold"];
            $det["yarn_det"] = $order_details["yarn_det"];
            $det["packing_type"] = $order_details["packing_type"];
            $det["buyer_sort"] = $order_details["buyer_sort"];
            $det["sort_code"] = $order_details["sort_code"];
            $det["instruction_factory"] = $order_details["instruction_factory"];
            $det["description"] = $order_details["description"];
            $det["fabric_type"] = $order_details["fabric_type"];
            $det["currency"] = $order_details["currency"];
            if (!empty($order_details["sales_order_detail_id"][$i]) && $order_details["sales_order_detail_id"][$i] > 0){
                $detail = SalesOrderDetail::findOrFail($order_details["sales_order_detail_id"][$i]);
                $detail->update($det);
            }else{
                $det["sales_order_id"] = $order->id;
                $detail = SalesOrderDetail::create($det);
            }
            $i++;
            $j = 0;
            foreach ($order_details["fcl"] as $row) {
                $sub_det = array();

                $sub_det["fcl"] = $order_details["fcl"][$j];
                $sub_det["po_lds"] = $order_details["po_lds"][$j];
                $sub_det["ex_factory_date"] = $order_details["ex_factory_date"][$j];
                $sub_det["actual_ex_factory_date"] = $order_details["actual_ex_factory_date"][$j];
                $sub_det["lc_expire_date"] = $order_details["lc_expire_date"][$j];
                $sub_det["office_remark"] = $order_details["office_remark"][$j];
                $sub_det["factory_remark"] = $order_details["factory_remark"][$j];
                $sub_det["lc_no"] = $order_details["lc_no"][$j];
                $sub_det["lds_date"] = $order_details["lds_date"][$j];
                $sub_det["line"] = $order_details["line"][$j];
                $sub_det["etd"] = $order_details["etd"][$j];
                $sub_det["eta"] = $order_details["eta"][$j];

                if (!empty($order_details["sales_order_sub_detail_id"][$j]) && $order_details["sales_order_sub_detail_id"][$j] > 0){
                    SalesOrderSubDetail::findOrFail($order_details["sales_order_sub_detail_id"][$j])->update($sub_det);
                }else{
                    $sub_det["sales_order_detail_id"] = $detail->id;
                    SalesOrderSubDetail::create($sub_det);
                }
                $j++;
            }

            $detail->yarn_certification_types()->delete();
            foreach ($order_details["yarn_certification_type_id"] as $row) {
                $sub_det = array();
                $sub_det["sales_order_detail_id"] = $detail->id;
                $sub_det["yarn_certification_type_id"] = $row;
                SalesOrderYarnCertification::create($sub_det);
            }
        }
        return redirect('sales_order')->with('message', "Sale updated successfully...");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        SalesOrder::findOrFail($id)->delete();
        return redirect('sales_order')->with('success', 'Sale deleted successfully');
    }
}
