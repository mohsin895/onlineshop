@extends('layouts.adminLayout.admin_design')

@section('content')
<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#">Products</a> <a href="#" class="current">Add Product</a> </div>
    <h1>Products</h1>
      @include('errorMessage.message')
  </div>
  <div class="container-fluid"><hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-title"> <span class="icon"> <i class="icon-info-sign"></i> </span>
            <h5>Add Product</h5>

          </div>
          <div class="widget-content nopadding">
            <form class="form-horizontal" method="post" action="{{route('admin.product.add')}}" name="add_product" id="add_product" novalidate="novalidate" enctype="multipart/form-data">
             @csrf

             <div class="control-group">
              <label class="control-label">Under Category</label>
              <div class="controls">
                <select name="category_id" id="category_id"  style="width: 220px">
                <?php echo $categories_dropdown ; ?>

                </select>
              </div>
            </div>

              <div class="control-group">
                <label class="control-label">Product Name</label>
                <div class="controls">
                  <input type="text" name="product_name" id="product_name">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Product Code</label>
                <div class="controls">
                  <input type="text" name="product_code" id="product_code">
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">Product Color</label>
                <div class="controls">
                  <input type="text" name="product_color" id="product_color">
                </div>
              </div>


              <div class="control-group">
                <label class="control-label">Description</label>
                <div class="controls">
                  <textarea type="text" name="description" id="description"></textarea>

                </div>
              </div>


              <div class="control-group">
                <label class="control-label">Material & Care</label>
                <div class="controls">
                  <textarea type="text" name="care" id="care"></textarea>

                </div>
              </div>

              <div class="control-group">
                <label class="control-label">Sleeve</label>
                <div class="controls">
                <select name="sleeve" style="width: 220px">
                  <option value="">Select Sleeve</option>
                  @foreach($sleeveArray as   $sleeve)
                  <option value="{{$sleeve}}">{{$sleeve}}</option>
                  @endforeach
                </select>

                </div>
              </div>

              <div class="control-group">
                <label class="control-label">Product Price</label>
                <div class="controls">
                  <input type="number" name="price" id="price">
                </div>
              </div>

              <div class="control-group">
                <label class="control-label">Product Image</label>
                <div class="controls">
                  <input type="file" name="image" id="image">
                </div>
              </div>

              <div class="control-group">
                <label class="control-label">Feature Item</label>
                <div class="controls">
                  <input type="checkbox" name="feature_item" id="feature_item" value="1">
                </div>
              </div>

              <div class="control-group">
                <label class="control-label">Enable</label>
                <div class="controls">
                  <input type="checkbox" name="status" id="status" value="1">
                </div>
              </div>


              <div class="form-actions">
                <input type="submit" value="Add Product" class="btn btn-success">
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

  </div>
</div>

@endsection
