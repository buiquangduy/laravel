@extends('user.master')
@section('description','Đây là trang chi tiet sản phẩm')
@section('author','Bùi Quang Duy')
@section('content')
<div id="maincontainer">
@if(isset($product_detail))
  <section id="product">
    <div class="container">      
      <!-- Product Details-->
      <div class="row">
       <!-- Left Image-->
        <div class="span5">
          <ul class="thumbnails mainimage">
            <li class="span5">
              <a  rel="position: 'inside' , showTitle: false, adjustX:-4, adjustY:-4" class="thumbnail cloud-zoom" href="{!!
              asset('resources/upload/'.$product_detail->image)!!}">
                <img src="{!!
              asset('resources/upload/'.$product_detail->image)!!}" alt="" title="">
              </a>
            </li>
            @foreach($image as $item_image)
            <li class="span5">
              <a  rel="position: 'inside' , showTitle: false, adjustX:-4, adjustY:-4" class="thumbnail cloud-zoom" href="{!!
              asset('resources/upload/detail/'.$item_image->image)!!}">
                <img  src="{!!
              asset('resources/upload/detail/'.$item_image->image)!!}" alt="" title="">
              </a>
            </li>
            @endforeach
          </ul>
          <ul class="thumbnails mainimage">
            @foreach($image as $item_image)
            <li class="producthtumb">
              <a class="thumbnail" >
                <img  src="{!!
              asset('resources/upload/detail/'.$item_image->image)!!}" alt="" title="">
              </a>
            </li>
            @endforeach
          </ul>
        </div>
         <!-- Right Details-->
        <div class="span7">
          <div class="row">
            <div class="span7">
              <h1 class="productname"><span class="bgnone">{!! $product_detail->name !!}</span></h1>
              <div class="productprice">
                <div class="productpageprice">
                  <span class="spiral"></span>{!!number_format($product_detail->price,0,",",".")!!}</div>
              </div>
              <ul class="productpagecart">
                <li>
                  <a class="cart" href="{!! url('mua-hang',[$product_detail->id,$product_detail->alias]) !!}">Add to Cart
                  </a>
                </li>
              </ul>
         <!-- Product Description tab & comments-->
         <div class="productdesc">
                <ul class="nav nav-tabs" id="myTab">
                  <li class="active"><a href="#description">Description</a>
                  </li>
                  <li><a href="#specification">Content</a>
                  </li>
                </ul>
                <div class="tab-content">
                  <div class="tab-pane active" id="description">
                      {!! $product_detail->description !!}
                  </div>
                  <div class="tab-pane " id="specification">
                      {!! $product_detail->content !!}
                  </div>
                </div>
              </div>
              <!-- js facebook -->
              <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-57203db1c54e39c4"></script>
              <div class="addthis_inline_share_toolbox_7gsr"></div>
              <!-- end js facebook -->
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!--  Related Products-->
  <section id="related" class="row">
    <div class="container">
      <h1 class="heading1"><span class="maintext">Related Products</span><span class="subtext"> See Our Most featured Products</span></h1>
      <ul class="thumbnails">
      @foreach($product_cate as $item_product_cate)
        <li class="span3">
          <a class="prdocutname" href="{!! url('chi-tiet-san-pham',[$item_product_cate->id,$item_product_cate->alias])!!}">{!! $item_product_cate->name !!}</a>
          <div class="thumbnail">
            <span class="sale tooltip-test">Sale</span>
            <a href="{!!asset('resources/upload/'.$item_product_cate->image)!!}"><img class="haha" alt="" src="{!!asset('resources/upload/'.$item_product_cate->image)!!}"></a>
            <div class="pricetag">
              <span class="spiral"></span><a href="{!! url('mua-hang',[$item_product_cate->id,$item_product_cate->alias]) !!}" class="productcart">ADD TO CART</a>
              <div class="price">
                <div class="pricenew">{!!number_format($item_product_cate->price,0,",",".")!!}</div>
                <div class="priceold"></div>
              </div>
            </div>
          </div>
        </li>
        @endforeach
      </ul>
    </div>
  </section>
  <!-- Popular Brands-->
@else
    <h1 style="margin-left: 100px;">Không tìm thấy sản phẩm</h1>
@endif
</div>
@endsection