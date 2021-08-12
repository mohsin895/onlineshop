@extends('layouts.adminLayout.admin_design')

@section('content')
<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
  </div>


<!--Chart-box-->
    <div class="row-fluid">
      <div class="widget-box">
        <div class="widget-title bg_lg"><span class="icon"><i class="icon-signal"></i></span>
          <h5>Dashboar Analytics</h5>
        </div>
        <div class="widget-content" >
          <div class="row-fluid">

              <ul class="site-stats">
                <li class="bg_lh"><i class="icon-user"></i> <strong>{{ $totalUsers}}</strong> <small>Total Users</small></li>
                  <li class="bg_lh"><i class="icon-user"></i> <strong>{{ $totalActiveUsers}}</strong> <small>Total Active Users</small></li>

                <li class="bg_lh"><i class="icon-shopping-cart"></i> <strong>{{ $totalProducts }}</strong> <small>Total Product</small></li>
                  <li class="bg_lh"><i class="icon-shopping-cart"></i> <strong>{{ $totalstock }}</strong> <small>Total Stock</small></li>
                  <li class="bg_lh"><i class="icon-shopping-cart"></i> <strong>{{ $totalSellProduct }}</strong> <small>Total Sell stock Product</small></li>
                  <li class="bg_lh"><i class="icon-shopping-cart"></i> <strong>{{ $totalProductAfterSell }}</strong> <small>Total Stock after Sell</small></li>
                <li class="bg_lh"><i class="icon-tag"></i> <strong>{{ $totalOrders }}</strong> <small>Total Orders</small></li>
                <li class="bg_lh"><i class="icon-repeat"></i> <strong>{{ $totalPendingOrders }}</strong> <small>Pending Orders</small></li>

                <li class="bg_lh"><i class="icon-globe"></i> <strong>{{ $totalCategories }}</strong> <small>Total Category</small></li>
                <li class="bg_lh"><i class="icon-globe"></i> <strong> {{   $totalInvest }}&#2547;</strong> <small>Total Invest Amount</small></li>
                <li class="bg_lh"><i class="icon-globe"></i> <strong> {{   $totalSell }}&#2547;</strong> <small>Total Sell Amount</small></li>

                      <li class="bg_lh"><i class="icon-globe"></i> <strong> {{ $totalSell - $totalInvest }}&#2547;</strong> <small>Total Interest Amount</small></li>
              </ul>

          </div>
        </div>
      </div>
    </div>
<!--End-Chart-box-->

  </div>
</div>
@endsection
