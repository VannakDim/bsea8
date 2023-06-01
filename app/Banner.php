<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Banner extends Model
{
    protected $fillable = [
        'user_id', 'title', 'url', 'image', 'publication_status', 
    ];

    public function user()
	{
		return $this->belongsTo(User::class);
	}
}
