<?php

namespace App;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
    use HasFactory;

    protected $fillable=['country'];

    // public function countries(){
    //     return $this->belongsToMany(Member::class);
    // }

}
