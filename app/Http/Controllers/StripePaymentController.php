<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use Stripe;
use App\Order;
use App\Cart;
use Auth;

class StripePaymentController extends Controller
{
    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function stripe()
    {
      if (Session::has('order_id')) {
     Cart::where('user_email',Auth::user()->id)->delete();
      $orderDetails = Order::where('id',Session::get('order_id'))->first()->toArray();
  // echo "<pre>";print_r($orderDetails);die();
      $nameArr = explode(' ',$orderDetails['name']);
         // echo "<pre>";print_r($nameArr);die();
       return view('stripe',compact('orderDetails','nameArr'));
     }else {
       return redirect('/cart');
     }

    }

    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function stripePost(Request $request)
    {

        Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));
        Stripe\Charge::create ([
                "amount" => 100 * 100,
                "currency" => "usd",
                "source" => $request->stripeToken,
                "description" => "Payment for DrollyPets.com"
        ]);

        Session::flash('success', 'Payment successful!');

        return back();
    }
}
