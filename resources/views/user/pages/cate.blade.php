@extends('user.master')
@section('description','Đây là trang loại sản phẩm')
@section('author','Bùi Quang Duy')
@section('content')
<div id="maincontainer">
  <section id="product">
    <div class="container">
     <!--  breadcrumb -->  
      <ul class="breadcrumb">
        <li>
          <a href="#">Home</a>
          <span class="divider">/</span>
        </li>
        <li class="active">Category</li>
      </ul>
      <div class="row">        
        <!-- Sidebar Start-->
        <aside class="span3">
         <!-- Category-->  
          <div class="sidewidt">
            <h2 class="heading2"><span>Categories</span></h2>
            <ul class="nav nav-list categories">
            @if(isset($dem_cate))
              @foreach($menu_cate as $item)
                <li>
                  <a href="{!!URL('loai-san-pham',[$item->id,$item->alias])!!}">{!!$item->name!!}</a>
                </li>
               @endforeach
            @else
                <li>
                  <a href="#">no category</a>
                </li>
            @endif
            </ul>
          </div>
         <!--  Best Seller -->  
     <!--      <div class="sidewidt">
            <h2 class="heading2"><span>Best Seller</span></h2>
            <ul class="bestseller">
              <li>
                <img  src="img/prodcut-40x40.jpg" alt="product" title="product">
                <a class="productname" href="product.html"> Product Name</a>
                <span class="procategory">Women Accessories</span>
                <span class="price">$250</span>
              </li>
              <li>
                <img width="50" height="50" src="img/prodcut-40x40.jpg" alt="product" title="product">
                <a class="productname" href="product.html"> Product Name</a>
                <span class="procategory">Electronics</span>
                <span class="price">$250</span>
              </li>
              <li>
                <img width="50" height="50" src="img/prodcut-40x40.jpg" alt="product" title="product">
                <a class="productname" href="product.html"> Product Name</a>
                <span class="procategory">Electronics</span>
                <span class="price">$250</span>
              </li>
            </ul>
          </div> -->
          <!-- Latest Product -->  
          <div class="sidewidt">
            <h2 class="heading2"><span>Latest Products</span></h2>
            <ul class="bestseller">
           @foreach($product_lastest as $item_lastest)
              <li>
                <img width="50" height="50" src="{!!asset('resources/upload/'.$item_lastest->image)!!}" alt="product" title="product">
                <a class="productname" href="{!!URL('chi-tiet-san-pham',[$item_lastest->id,$item_lastest->alias])!!}">{!!$item_lastest->name!!}</a>
                <span class="procategory">{!! $name_cate->name!!}</span>
                <span class="price">{!!$item_lastest->price!!}</span>
              </li>
            @endforeach
            </ul>
          </div>
          <!--  Must have -->  
         <!--  <div class="sidewidt">
          <h2 class="heading2"><span>Must have</span></h2>
          <div class="flexslider" id="mainslider">
            <ul class="slides">
              <li>
                <img src="img/product1.jpg" alt="" />
              </li>
              <li>
                <img src="img/product2.jpg" alt="" />
              </li>
            </ul>
          </div>
          </div> -->
        </aside>
        <!-- Sidebar End-->
        <!-- Category-->
        <div class="span9">          
          <!-- Category Products-->
          <section id="category">
            <div class="row">
              <div class="span9">
               <!-- Category-->
                <section id="categorygrid">
                  <ul class="thumbnails grid">
                  @if($dem>0)
                  @foreach($product_cate as $item_productcate)
                    <li class="span3">
                      <a class="prdocutname" href="{!! url('chi-tiet-san-pham',[$item_productcate->id,$item_productcate->alias])!!}">{!!$item_productcate->name!!}</a>
                      <div class="thumbnail">
                        <!-- <span class="sale tooltip-test">Sale</span> -->
                        <a href="{!! url('chi-tiet-san-pham',[$item_productcate->id,$item_productcate->alias])!!}"><img class="haha" alt="" src="{!!asset('resources/upload/'.$item_productcate->image)!!}"></a>
                        <div class="pricetag">
                          <span class="spiral"></span><a href="#" class="productcart">ADD TO CART</a>
                          <div class="price">
                            <div class="pricenew">{!!number_format($item_productcate->price,0,",",".")!!}</div>
                            <div class="priceold"></div>
                          </div>
                        </div>
                      </div>
                    </li>
                    @endforeach
                    @else
                        <h1 style="color: red">{{$dem_mess}}</h1>
                    @endif
                  </ul>
                  <div class="pagination pull-right">
                    <ul>
                      @if($product_cate->currentPage()!=1)
                      <li><a href="{!! str_replace('/?','?', $product_cate->url($product_cate->currentPage()-1))!!}">Prev</a>
                      </li>
                      @endif
                      @for($i=1;$i<=$product_cate->lastPage();$i++)
                      <li class="{!! ($product_cate->currentPage()==$i)? 'active' : '' !!}">
                        <a href="{!! str_replace('/?','?', $product_cate->url($i))!!}">{!! $i !!}</a>
                      </li>
                      @endfor
                      @if($product_cate->currentPage()!=$product_cate->lastPage())
                      <li><a href="{!! str_replace('/?','?', $product_cate->url($product_cate->currentPage() + 1))!!}">Next</a>
                      </li>
                      @endif
                    </ul>
                  </div>
                </section>
              </div>
            </div>
          </section>
        </div>
      </div>
    </div>
  </section>
</div>
@endsection