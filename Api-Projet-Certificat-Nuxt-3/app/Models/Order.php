<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\SoftDeletes;

class Order extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'num',
        'user_id',
        'status',
        'total',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function products(): BelongsToMany
    {
        return $this->belongsToMany(Product::class)->withPivot('quantity')->withTimestamps();
    }

    public static function generateOrderNumber()
    {
        $date = now()->format('dmY');

        // Compte les commandes du jour
        $count = Order::whereDate('created_at', now()->toDateString())->count() + 1;

        // Génère un numéro avec 4 chiffres à la fin (ex: 0001)
        return 'ORD-' . $date . '-' . str_pad($count, 4, '0', STR_PAD_LEFT);
    }
}
