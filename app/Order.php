<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Nikolag\Square\Traits\HasProducts;

class Order extends Model
{
  use HasProducts;
  public function orders()
  {
  return $this->hasMany('App\OrdersProduct','order_id');
  }
 public static function grtOrderDetails($order_id)
 {
   $getOrderDetails = Order::where('id',$order_id)->first();
   return $getOrderDetails;
 }
  public static function getCountryCode($country)
  {
  $getCountryCode = Country::where('country_name',$country)->first();

  return $getCountryCode;
  }
}
