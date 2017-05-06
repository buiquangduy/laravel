  <div class="headerstrip">
    <div class="container">
      <div class="row">
        <div class="span12">
          <a href="{!! url('/')!!}" class="logo pull-left"><img src="{!! url('public/user/img/logo.png')!!}" alt="SimpleOne" title="SimpleOne"></a>
          <!-- Top Nav Start -->
          <div class="pull-left">
            <div class="navbar" id="topnav">
              <div class="navbar-inner">
                <ul class="nav" >
                  <li><a class="home active" href="#">Home</a>
                  </li>
                  <li><a class="myaccount" href="#">My Account</a>
                  </li>
                  <li><a class="shoppingcart" href="{{route('giohang')}}">Shopping Cart</a>
                  </li>
                  <li><a class="checkout" href="#">CheckOut</a>
                  </li>
                  <li>
                    <div class="search_home">
                        <form method="get" action="{!! route('searchHome')!!}">
                            <input type="hidden" name="_token" value="{!! csrf_token()!!}" />
                            <input type="text" placeholder="Some text to search..." autofocus="true" name="search"/>
                            <button class="btn btn-info" type="submit" style="margin-top:-10px;border-radius: 10px;height: 30px;">Search</button>
                        </form>
                    </div>
                    @if(Session::has('flash_message'))
                          <div class="thongbao">
                              {!! @Session::get('flash_message') !!}
                            </div>
                    @endif
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <!-- Top Nav End -->
        </div>
      </div>
    </div>
  </div>