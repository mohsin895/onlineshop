<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Order;
use App\Cart;
use Session;
use Auth;

class PaypleController extends Controller
{
  public function paypal(Request $request)
  {
    if (Session::has('order_id')) {

    $orderDetails = Order::where('id',Session::get('order_id'))->first()->toArray();
// echo "<pre>";print_r($orderDetails);die();
    $nameArr = explode(' ',$orderDetails['name']);
       // echo "<pre>";print_r($nameArr);die();
     return view('orders.paypal',compact('orderDetails','nameArr'));
   }else {
     return redirect('/cart');
   }


  }

  public function square(Request $request)
  {
    if (Session::has('order_id')) {

    $orderDetails = Order::where('id',Session::get('order_id'))->first()->toArray();
// echo "<pre>";print_r($orderDetails);die();
    $nameArr = explode(' ',$orderDetails['name']);
       // echo "<pre>";print_r($nameArr);die();
     return view('square',compact('orderDetails','nameArr'));
   }else {
     return redirect('/cart');
   }


  }

  public function success(Request $request)
  {
    if (Session::has('order_id')) {
 Cart::where('user_id',Auth::user()->id)->delete();

     return view('orders.paypal.success');
   }else {
     return redirect('/cart');
   }


  }
  public function fail(Request $request)
  {

     return view('orders.paypal.fail');

  }
}
