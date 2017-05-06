<?php namespace App\Http\Controllers;
use DB,Mail,Request,Cart;
class WelcomeController extends Controller {
	
	public function index()
	{
		$product = DB::table('products')->select('id','name','image','price','alias')->orderBy('id','DESC')->skip(0)->take(4)->get();
		$product_lastest = DB::table('products')->select('id','name','image','price','alias')->orderBy('id','ASC')->skip(0)->take(4)->get();
		return view('user.pages.home',compact('product','product_lastest'));// trang chu
	}
	public function loaisanpham($id)
	{
    	$product_cate = DB::table('products')->select('id','name','image','price','alias','cate_id')->where('cate_id',$id)->paginate(6);
    	$dem = count($product_cate);
    	if($dem>0)
    	{
			$cate = DB::table('cates')->select('parent_id')->where('id',$product_cate[0]->cate_id)->first();
			$menu_cate = DB::table('cates')->select('id','name','alias')->where('parent_id',$cate->parent_id)->get();
			$dem_cate = count($menu_cate);
		}
		else
		{
			$dem_mess = "chưa có sản phẩm";
		}
		$product_lastest = DB::table('products')->select('id','name','image','price','alias')->orderBy('id','DESC')->take(3)->get();
		$name_cate = DB::table('cates')->select('name')->where('id',$id)->first();
		return view('user.pages.cate',compact('product_cate','menu_cate','product_lastest','name_cate','dem','dem_cate','dem_mess'));
	}
	public function searchProduct()
	{
		 $search = Request::input('search');
		if($search=="")
		{	
			return redirect()->route('home')->with(['flash_message' => 'please enter keyword search']);
		}
		else
		{
			// $product_detail = DB::table('products')->where('name','like',"%$search%")->first();
			$product_cate = DB::table('products')->where('name','like',"%$search%")->get();
			if(isset($product_cate))
			{
				$dem = count($product_cate);
				// $image = DB::table('product_images')->select('id','image')->where('product_id',$product_detail->id)->get();
				// $product_cate = DB::table('products')->where('cate_id',$product_detail->cate_id)->where('name','<>',"%$search%")->get();
				
			}
			else
			{
				$tb_mess = "không tìm thấy sản phẩm";
			}
			return view('user.pages.search_detail',compact('dem','product_cate','tb_mess'));
		}

	}
	public function chitietsanpham($id)
	{
		$product_detail = DB::table('products')->where('id',$id)->first();
		$image = DB::table('product_images')->select('id','image')->where('product_id',$product_detail->id)->get();
		$product_cate = DB::table('products')->where('cate_id',$product_detail->cate_id)->where('id','<>',$id)->take(4)->get();
		return view('user.pages.detail',compact('product_detail','image','product_cate'));
	}
	public function get_lienhe(){
		return view('user.pages.contact');
	}
	public function post_lienhe(){
		$data = ['hoten' => Request::input('name') ,'tinnhan' => Request::input('message')];
		Mail::send('emails.blanks',$data,function($msg){
			$msg->from('duyxinhtrai@gmail.com','Quang Duy');
			$msg->to('duyxinhtrai@gmail.com','Connan Duy')->subject('Đây là cái test gửi mail');
		}); // gửi mail
		echo "
			<script>
			alert('cảm ơn bạn đã góp ý chúng tôi sẽ liên hệ với bạn sớm nhất có thể');
			window.location = '".url('/')."'
			</script>
		";
	}
	public function muahang($id)
	{
		$product_buy = DB::table('products')->where('id',$id)->first();
		Cart::add(array('id'=>$id,'name'=>$product_buy->name,'qty'=>1 ,'price'=>$product_buy->price,'options'=>array('img'=>$product_buy->image))); 
		$content = Cart::content();
		return redirect()->route('giohang');
	}
	public function giohang(){
		$content = Cart::content();
		$total = Cart::total();
		return view('user.pages.shopping_cart',compact('content','total'));
	}
	public function xoasanpham($id){
		Cart::remove($id);
		return redirect()->route('giohang');
	}
	public function capnhat()
	{
		if(Request::ajax())
		{
			$id = Request::get('id');
			$qty = Request::get('qty');
			Cart::update($id,$qty); 
			echo"oke";
		}
	}
}
