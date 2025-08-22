<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

class UserController
{
    public function register(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:8',
            'role'     => 'in:0,1',

        ]);

        $user = new User();
        $user->name = $validated['name'];
        $user->email = $validated['email'];
        $user->role = $validated['role'] ?? 0;
        $user->password = bcrypt($validated['password']);
        $user->save();

        return response()->json([
            'message' => 'Utilisateur enregistré avec succès',
            'user' => $user,
        ]);
    }




    public function login(Request $request)
    {
        $credentials = $request->only('email', 'password');

        if (!Auth::attempt($credentials)) {
            return response()->json(['message' => 'Identifiants invalides'], 401);
        }

        $user = Auth::user();
        $token = $user->createToken($request->token_name)->plainTextToken;

        return response()->json([
            'message' => 'Connexion réussie',
            'user' => $user,
            'token' => $token,
        ]);
    }


    public function logout(Request $request)
    {
        $user = $request->user();

        // Révoquer le token actuel
        $user->currentAccessToken()->delete();

        return response()->json(['message' => 'Déconnecté avec succès']);
    }



    // Infos de l'utilisateur connecté
    public function me(Request $request)
    {
        return response()->json($request->user());
    }

    // Liste des utilisateurs (admin uniquement)
    public function index()
    {
        $this->authorizeAdmin();

        return response()->json(User::all());
    }

    // Mettre à jour un utilisateur
    public function update(Request $request, $id)
    {
        $user = User::findOrFail($id);

        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:8',
            'name'     => 'sometimes|string',
            'email'    => 'nu|email|unique:users,email,' . $id,
            'role'     => 'in:0,1',
        ]);

        $user->update([
            'name'     => $request->name ?? $user->name,
            'email'    => $request->email ?? $user->email,
            'password' => $request->filled('password') ? Hash::make($request->password) : $user->password,
            'role'     => $request->role ?? $user->role,
        ]);

        return response()->json($user);
    }

    // Supprimer un utilisateur
    public function destroy($id)
    {
        $this->authorizeAdmin();

        $user = User::findOrFail($id);
        $user->delete();

        return response()->json(['message' => 'Utilisateur supprimé']);
    }

    // Helper : Vérifie si l'utilisateur connecté est admin
    protected function authorizeAdmin()
    {
        if (auth()->user()->role !== 1) {
            abort(403, 'Accès interdit');
        }
    }
}
