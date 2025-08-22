<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Product;
use Illuminate\Http\Request;

class OrderController
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return response()->json(Order::all());
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'items' => 'required|array|min:1',
            'items.*.product_id' => 'required|exists:products,id',
            'items.*.quantity' => 'required|integer|min:1',
        ]);

        $user = $request->user(); // récupère automatiquement l'utilisateur connecté

        $order = Order::create([
            'user_id' => $user->id,
            'total' => 0,
            'num' => Order::generateOrderNumber()
        ]);

        $total = 0;

        foreach ($request->items as $item) {
            $product = Product::find($item['product_id']);

            $order->products()->attach([
                $product->id => ['quantity' => $item['quantity']]
            ]);

            $total += $product->price * $item['quantity'];
        }

        $order->update(['total' => $total]);

        return response()->json([
            'message' => 'Commande enregistrée !',
            'order_id' => $order->id,
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
