@extends('user.master')
@section('description','Đây là trang chi tiet sản phẩm')
@section('author','Bùi Quang Duy')
@section('content')
<div id="maincontainer">
@if($dem>0)
  <!--  Related Products-->
  <section id="related" class="row">
    <div class="container">
      <h1 class="heading1"><span class="maintext">Search Products</span><span class="subtext">Tim thay {{$dem}} san pham</span></h1>
      <ul class="thumbnails">
      @foreach($product_cate as $item_product_cate)
        <li class="span3">
          <a class="prdocutname" href="{!! url('chi-tiet-san-pham',[$item_product_cate->id,$item_product_cate->alias])!!}">{!! $item_product_cate->name !!}</a>
          <div class="thumbnail">
            <!-- <span class="sale tooltip-test">Sale</span> -->
            <a href="{!!asset('resources/upload/'.$item_product_cate->image)!!}"><img class="haha" alt="" src="{!!asset('resources/upload/'.$item_product_cate->image)!!}"></a>
            <div class="pricetag">
              <span class="spiral"></span><a href="#" class="productcart">ADD TO CART</a>
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