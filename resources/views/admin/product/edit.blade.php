@extends('admin.master')
@section('controller','Product')
@section('action','Edit')
@section('content')
<style>
	.img-current{
			width:150px;
	}
	.img_detail{
			width:200px;
			margin-bottom:20px;
			margin-top:10px;
	}
	.icon_del{
			position:relative;
			top: -55px;
			left:-20px ;
			background:red;
		}
	#insert{
		margin-top:20px;		
	}
</style>
 <!-- /.col-lg-12 -->
 	<button class="btn btn-primary" id="addImages">Add Images </button>
   <form action="" method="POST" enctype="multipart/form-data" name="frmEditProduct">
                    <div class="col-lg-7" style="padding-bottom:120px">
                      
                      	@include('admin.blocks.error')
                        <input type="hidden" name="_token" value="{!! csrf_token()!!}"/>
                        	<div class="form-group">
                                <label>Category</label>
                                <select class="form-control" name="sltParent">
                                    <option value="0">Please Choose Category</option>
                                  	   <?php cate_parent($cate , 0 ,"---",$product['cate_id']); ?> 
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Name</label>
                                <input class="form-control" name="txtName" placeholder="Please Enter Username" value="{!!old('txtName',isset($product)?$product['name'] : null)!!}"/>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input class="form-control" name="txtPrice" placeholder="Please Enter Password" value="{!!old('txtPrice',isset($product)?$product['price'] : null)!!}"/>
                            </div>
                            <div class="form-group">
                                <label>Intro</label>
                                <textarea class="form-control" rows="3" name="txtIntro">
                                {!!old('txtIntro',isset($product)?$product['intro'] : null)!!}
                                </textarea>
                                <script type="text/javascript">ckeditor('txtIntro')</script>
                            </div>
                            <div class="form-group">
                                <label>Content</label>
                                <textarea class="form-control" rows="3" name="txtContent">
                                 {!!old('txtContent',isset($product)?$product['content'] : null)!!}
                                </textarea>
                                 <script type="text/javascript">ckeditor('txtContent')</script>
                            </div>
                            <div class="form-group">
                                <label>Images Current</label>
                                <img src="{!!asset('resources/upload/'.$product['image'])!!}" class="img-current" />
                               <input type="hidden" name = "img_current" value="{!! $product['image'] !!}"/>
                            </div>
                            <div class="form-group">
                                <label>Images</label>
                                <input type="file" name="fImages">
                             
                            </div>
                            <div class="form-group">
                                <label>Product Keywords</label>
                                <input class="form-control" name="txtKeywords" placeholder="Please Enter product Keywords" value="{!!old('txtKeywords',isset($product)?$product['keywords'] : null)!!}"/>
                            </div>
                            <div class="form-group">
                                <label>Product Description</label>
                                <textarea class="form-control" rows="3" name="description">
                                {!!old('description',isset($product)?$product['description'] : null)!!}
                                </textarea>
                            </div>
                            <button type="submit" class="btn btn-default">Product Edit</button>
                            <button type="reset" class="btn btn-default">Reset</button>
                      
                    </div>
                    <div class="col-md-1">   </div>
                    <div class="col-md-4"> 
                    	@foreach($product_image as $key => $item)
                            <div class="form-group" id="{!! $key !!}">
                  <img src="{!!asset('resources/upload/detail/'.$item['image'])!!}" class="img_detail" idHinh="{!! $item['id'] !!}"
                  id="{!! $key !!}" />
                             
                         	<a href="javascript:void(0)" type="button" id="del_img_demo" class="btn btn-danger btn-circle icon_del">
                            	<i class="fa fa-times"></i>
                            </a>   
                           </div>
                         @endforeach
                         <div id="insert"></div>
                     </div>
                    
                     
                    	
                 
                    
   <form>
  
                         
@endsection