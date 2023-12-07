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
        'owner_from',
        'telephone',
        'email',
        'category',
        'number_of_worker',
        'location',
        'map',
	];

    public function user()
	{
		return $this->belongsTo(User::class);
	}

    public function types()
	{
		return $this->belongsToMany(Type::class);
	}
}
