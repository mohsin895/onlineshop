@extends('layouts.frontLayout.front_design')
@section('content')

<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li class="active">Thanks</li>
				</ol>
			</div>

		</div>
	</section>

	<section id="do_action">
		<div class="container">
			<div class="heading" align="center">
				<h3>YOUR PAYPAL ORDER HAS BEEN PLACED</h3>
				<p>You order number is {{Session::get('order_id')}} and total payable about is &#36;{{Session::get('grand_total')}} </p>
				<p>please Make payment by clicking on below Payment Button</p>

				<form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post">
		  <input type="hidden" name="cmd" value="_cart">
		  <input type="hidden" name="business" value="sb-vmqkr6293783@business.example.com">

			<input type="hidden" name="item_name" value="{{Session::get('grand_total')}}">
		  <input type="hidden" name="amount" value="{{round(Session::get('grand_total'),2)}}">
      <input type="hidden" name="currency_code" value="USD">
		  <input type="hidden" name="first_name" value="{{$nameArr[0]}}">
      <input type="hidden" name="last_name" value="">
		  <input type="hidden" name="address" value="{{$orderDetails['address']}}">
		  <input type="hidden" name="address2" value="">
		  <input type="hidden" name="city" value="{{$orderDetails['city']}}">
		  <input type="hidden" name="state" value="{{$orderDetails['state']}}">
		  <input type="hidden" name="zip" value="{{$orderDetails['pincode']}}">
		  <input type="hidden" name="email" value="{{$orderDetails['user_email']}}">
			<input type="hidden" name="country" value="{{$orderDetails['country']}}">
			<input type="hidden" name="return" value="{{url('payple/success')}}">
    			<input type="hidden" name="cancle_return" value="{{url('payple/fail')}}">
					<input type="image" src="https://www.paypalobjects.com/en_GB/i/btn/btn_paynowCC_LG.gif" border="0" name="submit" alt="PayPal – The safer, easier way to pay online.">
				 <img alt="" border="0" src="https://www.paypalobjects.com/en_GB/i/scr/pixel.gif" width="1" height="1">
		</form>
			</div>
		</div>
	</section>

@endsection
<?php

 Session::forget('couponCode');
 Session::forget('couponAmount');

 ?>
