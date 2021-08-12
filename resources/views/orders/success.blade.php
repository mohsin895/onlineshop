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
				<p>You order number is {{Session::get('order_id')}} and total payable about is &#36; {{Session::get('grand_total')}} </p>
				<p>please Make payment by clicking on below Payment Button</p>

			</div>
		</div>
	</section>

@endsection
<?php
 Session::forget('grand_total');
 Session::forget('order_id');
 Session::forget('couponCode');
 Session::forget('couponAmount');

 ?>
