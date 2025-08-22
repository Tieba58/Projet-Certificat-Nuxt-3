<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return response()->json(Category::get(['id', 'name']));
    }

    public function indexCategory(string $slug)
    {
        $slug = urldecode($slug); // décode le slug
        $name = str_replace(['-', '_'], [' ', "'"], $slug);
        $category = Category::where('name', $name)->first();

        if (!$category) {
            return response()->json(['message' => 'Catégorie non trouvée'], 404);
        }

        // Charger les produits liés
        $products = $category->products; // assure-toi que la relation est définie dans le modèle

        return response()->json([
            'category' => [
                'id' => $category->id,
                'name' => $category->name,
            ],
            'products' => $products
        ]);
    }


    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|unique:categories,name',
            'description' => 'nullable|string',
        ]);

        $category = Category::create($validated);
        return response()->json($category, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Category $category)
    {
        return response()->json($category);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Category $category)
    {
        $validated = $request->validate([
            'name' => 'required|string|unique:categories,name,' . $category->id,
            'description' => 'nullable|string',
        ]);

        $category->update($validated);
        return response()->json($category);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Category $category)
    {
        $category->delete();
        return response()->json(['message' => 'Catégorie supprimée.']);
    }
}
