<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\CustomerStorageRequest;
use App\Http\Requests\CustomerUpdateRequest;
use App\Models\Customer;
use Illuminate\Http\Request;

class CustomerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $customers = Customer::with('state', 'city');

        if(isset($request->cpf) && !is_null($request->cpf)){
            $customers = $customers->where('cpf','LIKE',"%{$request->cpf}%");
        }  

        if(isset($request->name) && !is_null($request->name)){
            $customers = $customers->where('name','LIKE',"%{$request->name}%");
        }  

        if(isset($request->gender) && !is_null($request->gender) && $request->gender !== "INPUT"){
            $customers = $customers->where('gender','LIKE',"%{$request->gender}%");
        } 

        if(isset($request->state_id) && !is_null($request->state_id)){
            $customers = $customers->whereStateId($request->state_id);
        } 

        if(isset($request->city_id) && !is_null($request->city_id)){
            $customers = $customers->whereCityId($request->city_id);
        } 

        $customers = $customers->paginate(5);

        return response()->json($customers);   
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CustomerStorageRequest $request)
    {
        $customer = Customer::create($request->all());

        return response()->json(null, 201);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, CustomerUpdateRequest $customer)
    {
        $customer = $customer->update($request->all());

        return response()->json($customer);
    }

    /**
     * Remo e the specified resource from storage.
     */
    public function destroy(Customer $customer)
    {
        $customer->delete();

        return response()->json(null, 204);
    }

    /**
     * Return all representatives who can assist you.
     */
    public function representatives(Customer $customer)
    {
        // dd(Customer::with('representatives')->whereId($customer->id)->get());
        return response()->json(Customer::with(['representatives', 'representatives.city'])->whereId($customer->id)->first());
    }
}
