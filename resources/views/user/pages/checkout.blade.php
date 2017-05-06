@extends('user.master')
@section('description','checkout')
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
        <li class="active">Checkout</li>
        @if(Session::has('flash_message'))
          <div class="thongbao">
              {!! @Session::get('flash_message') !!}
          </div>
        @endif
      </ul>
      <div class="row">        
        <!-- Account Login-->
        <div class="span9">
          <div class="checkoutsteptitle">checkout product<a class="modify">Modify</a>
          </div>
          <div class="checkoutstep">
            <div class="row">
              <form class="form-horizontal" action="{{route('checkout')}}" method="post">
                <input type="hidden" name="_token" value="{!!csrf_token()!!}"/>
                <fieldset>
                  <h2 style="margin-left: 50px;">Tổng số tiền thanh toán:<span style="color: red">{!!number_format($total,0,",",".")!!}</span>VNĐ</h2>
                  <div class="span4">
                    <div class="control-group">
                      <label class="control-label" >User name<span class="red">*</span></label>
                      <div class="controls">
                        <input type="text" name="username"  value="" autofocus="true" />
                      </div>
                      <span>{!! $errors->first('username')!!}</span>
                    </div>
                    <div class="control-group">
                      <label class="control-label" >Email<span class="red">*</span></label>
                      <div class="controls">
                        <input type="text" name="email"  />
                      </div>
                      <span>{!! $errors->first('email')!!}</span>
                    </div>
                    <div class="control-group">
                      <label class="control-label" >Telephone<span class="red">*</span></label>
                      <div class="controls">
                        <input type="text" name="telephone" />
                      </div>
                      <span>{!! $errors->first('telephone')!!}</span>
                    </div>
                    <div class="control-group">
                      <label class="control-label" >Note<span class="red">*</span></label>
                      <div class="controls">
                        <textarea name="note">
                            
                        </textarea>
                        <span>{!! $errors->first('note')!!}</span>
                      </div>
                    </div>
                    <div class="control-group">
                      <label class="control-label" >Payment gateway</label>
                      <div class="controls">
                          <select name="sltPayment">
                              <option value="">--chon cong thanh toan</option>
                              <option value="1">thanh toan tai nha</option>
                              <option value="2">Bao kim</option>
                              <option value="3">Ngan luong</option>
                          </select>
                      </div>
                      <span>{!! $errors->first('sltPayment')!!}</span>
                    </div>
                    <button class="btn btn-orange pull-right" type="submit">Buy</button>
                  </div>
                </fieldset>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>
@endsection