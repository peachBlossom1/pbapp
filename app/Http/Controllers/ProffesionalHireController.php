<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProffesionalHireController extends Controller
{
    public function show($id)
    {
      //$car = Car::find($id);
      return view('hire.show', array('car' => 'this'));
    }
}
