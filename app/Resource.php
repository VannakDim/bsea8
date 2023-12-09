<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Resource extends Model
{
    use HasFactory;

    protected $fillable = [
		'title','description','filename','thumbnail','user_id','publication_status',
	];
    
    public function user() {
		return $this->belongsTo(User::class);
	}
}
