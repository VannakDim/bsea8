<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Type extends Model
{
    use HasFactory;

    protected $fillable=['title'];

    public function members()
	{
		return $this->belongsToMany(Member::class);
	}
}