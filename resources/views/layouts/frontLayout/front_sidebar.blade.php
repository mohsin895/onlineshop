<?php use App\Product; ?>
<form  action="{{url('/products/filter')}}" method="post">
  @csrf
  @if(!empty($url))
  <input type="hidden" name="url" value="{{$url}}">
  @endif
  <div class="left-sidebar">
    <h2>Category</h2>
    <div class="panel-group category-products" id="accordian">
<!--category-productsr-->
@foreach($categories as $cat)
      <div class="panel panel-default">

      <div class="panel-heading">
          <h4 class="panel-title">
  <a data-toggle="collapse" data-parent="#accordian" href="#{{$cat->id}}">
              <span class="badge pull-right"><i class="fa fa-plus"></i></span>
            {{  $cat->name}}
            </a>
          </h4>
       </div>
      <div id="{{$cat->id}}" class="panel-collapse collapse">
          <div class="panel-body">
            <ul>
              @foreach($cat->categories as $subcat)
                <?php $productCount =Product:: productCount($subcat->id);  ?>
               @if($subcat->status==1)
             <li><a href="{{asset('products/'.$subcat->url)}}">{{$subcat->name}}</a>({{$productCount}})</li>
           @endif
         @endforeach
            </ul>
         </div>
       </div>

      </div>
    @endforeach
    </div><!--/category-products-->
      @if(!empty($url))
    <h2>Colors</h2>
    <div class="panel-group ">
      @foreach($colorArray as $color)
      @if(!empty($_GET['color']))
      <?php $colorArr = explode('-', $_GET['color']); ?>
      @if(in_array($color,$colorArr))
      <?php  $colorcheck = "checked"; ?>
      @else
        <?php  $colorcheck = ""; ?>
        @endif
        @else
          <?php  $colorcheck = ""; ?>
       @endif


      <div class="panel panel-default">
        <div class="panel-heading">
          <h4 class="panel-title">
          <input name="colorFilter[]" onchange="javascript:this.form.submit();"
          id="{{ $color}}" type="checkbox" value="{{$color}}"
           {{$colorcheck}}>&nbsp;&nbsp;
           <span class="products-colors">{{$color}}</span>
          </h4>
        </div>
      </div>
  @endforeach
    </div>

    <h2>Sleeves</h2>
    <div class="panel-group ">
      @foreach($sleeveArray as $sleeve)
      @if(!empty($_GET['sleeve']))
      <?php $sleeveArr = explode('-', $_GET['sleeve']); ?>
      @if(in_array($sleeve,$sleeveArr))
      <?php  $sleevecheck = "checked"; ?>
      @else
        <?php  $sleevecheck = ""; ?>
        @endif
        @else
          <?php  $sleevecheck = ""; ?>
       @endif


      <div class="panel panel-default">
        <div class="panel-heading">
          <h4 class="panel-title">
          <input name="sleeveFilter[]" onchange="javascript:this.form.submit();"
          id="{{ $sleeve}}" type="checkbox" value="{{$sleeve}}"
           {{$sleevecheck}}>&nbsp;&nbsp;
           <span class="products-sleeves">{{$sleeve}}</span>
          </h4>
        </div>
      </div>
  @endforeach
    </div>


    <h2>Sizes</h2>
    <div class="panel-group ">
      @foreach($sizeArray as $size)
      @if(!empty($_GET['size']))
      <?php $sizeArr = explode('-', $_GET['size']); ?>
      @if(in_array($size,$sizeArr))
      <?php  $sizecheck = "checked"; ?>
      @else
        <?php  $sizecheck = ""; ?>
        @endif
        @else
          <?php  $sizecheck = ""; ?>
       @endif


      <div class="panel panel-default">
        <div class="panel-heading">
          <h4 class="panel-title">
          <input name="sizeFilter[]" onchange="javascript:this.form.submit();"
          id="{{ $size}}" type="checkbox" value="{{$size}}"
           {{$sizecheck}}>&nbsp;&nbsp;
           <span class="products-sizes">{{$size}}</span>
          </h4>
        </div>
      </div>
  @endforeach
    </div>
    @endif
  </div>
</form>
