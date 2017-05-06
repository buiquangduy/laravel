@extends('admin.master')
@section('content')
    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                <div class="row">
                    <div class="col-sm-12">
                        <h3 class="text-center">Tunover</h3>
                        <hr style="border: 1px solid #E6E9ED;"/>
                    </div>

                </div>
            </div>
            <div class="clearfix"></div>

            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>Tour đã đặt</h2>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <canvas id="lineChart"></canvas>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <h4 class="text-center">Biểu đồ thống kê tổng số san pham đã mua</h4>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="x_panel">
                        <div class="x_title">
                            <h2>Doanh thu</h2>
                            <div class="clearfix"></div>
                        </div>
                        <div class="x_content">
                            <canvas id="mybarChart"></canvas>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <h4 class="text-center">Biểu đồ thống kê doanh thu theo tháng</h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('js')
    @parent
    <script src="{{ asset('public/admin/js/chart/Chart.min.js')}}"></script>
    <script src="{{ asset('public/admin/js/thongke.js')}}"></script>
    <!-- Chart.js -->
    <script>
        Chart.defaults.global.legend = {
            enabled: false
        };
    </script>
@endsection