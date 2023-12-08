<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
	protected $fillable = [
		'user_id',
		'company',
        'company_logo',
        'country_id',
        'telephone',
        'email',
        'product_id',
        'number_of_worker',
        'address',
        'map',
	];

    public function user()
	{
		return $this->belongsTo(User::class);
	}
    
    public function country()
	{
		return $this->belongsTo(Country::class);
	}

    public function product()
	{
		return $this->belongsTo(Product::class);
	}

    public function types()
	{
		return $this->belongsToMany(Type::class);
	}


}
