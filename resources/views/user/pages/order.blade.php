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
        <div class="span9" style="margin-left:100px;width:1000px">
          <div class="checkoutsteptitle" style="text-align: center;color: red">Bill Of Sale<a class="modify">Modify</a>
          </div>
          <div class="checkoutstep">
            <div class="row">
                 <table cellpadding="10px">
                    <tr>
                        <th>Tên khách hàng</th>
                        <th><h4 id="abount">{{$tran->user_name}}</h4>
                    </tr>
                    <tr>
                        <th>Địa chỉ</th>
                        <th><h4 id="abount">{{$tran->message}}</h4></td>
                    </tr>
                 </table>
                <style type="text/css">
                  td{
                    border: 1px solid #CCC;

                  }
                  th{
                      text-align: left;
                  }
                  #abount{
                     font-weight: initial;
                     color: red;
                  }
                </style>
                   <table style="border: 1px solid black;" class="table table-striped table-bordered table-hover" id="dataTables-example">
                        <thead>
                            <tr align="center">
                                <th>TT</th>
                                <th>Tên hàng</th>
                                <th>Số lượng</th>
                                <th>Đơn giá</th>
                                <th>Thành tiền</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $i=1; ?>
                            @foreach($content as $row)
                            <tr>
                              <td>{{$i++}}</td>
                              <td>{{$row['name']}}</td>
                              <td>{{$row['qty']}}</td>
                              <td>{{number_format($row['price'],0,",",".")}} Đồng</td>
                              <td>{{$row['subtotal']}} Đồng</td>
                            </tr>
                            @endforeach
                            <hr/>
                            <tr>
                              <th>Tổng cộng</th>
                              <th><span style="color: red;font-size: 30px">{{number_format($total,0,",",".")}}</span> ngàn đồng</th>
                            </tr>
                        </tbody>
                    </table>
            </div>
          </div>
      </div>
    </div>
  </section>
</div>
@endsection