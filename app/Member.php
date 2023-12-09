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
        'type_id',
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

    public function products()
	{
		return $this->belongsToMany(Product::class);
	}

    public function type()
	{
		return $this->belongsTo(Type::class);
	}


}
