<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Requests\TransactionRequest;
use App\Http\Controllers\Controller;
use App\Transaction;
use App\Order;
use Illuminate\Http\Request;
use Cart,Mail,Input;
class OrderController extends Controller {

	public function getCheckout()
	{
		$content = Cart::content();
		$total = Cart::total();
		if($total<=0)
		{
			return redirect()->route('giohang');
		}
		return view('user.pages.checkout',compact('content','total'));
	}
	public function postCheckout(TransactionRequest $request)
	{
		$total = Cart::total();
		$content = Cart::content();
		$tran = new Transaction();
		$tran->status = 0;
		$tran->user_name = $request->username ;
		$tran->user_email = $request->email;
		$tran->user_phone = $request->telephone ;
		$tran->payment = $request->sltPayment ;
		$tran->message = $request->note ;
		$tran->amount = $total;
		$tran->save();
		$tran_id = $tran->id;
		foreach ($content as $row) {
			$order = new Order();
			$order->transaction_id = $tran_id;
			$order->product_id = $row['id'];
			$order->qty = $row['qty'];
			$order->amount = $row['subtotal'];
			$order->status = 0;
			$order->save();		
		}
		// gui mail
		$data = ['hoten' => $request->username ,'tongtien' => $total];
		Mail::send('emails.blankscustomer',$data,function($msg){
			$msg->from('duyxinhtrai@gmail.com','Shop Gia Bảo');
			$msg->to(Input::get('email'),'Message from Gia Bảo Shop')->subject('Thông báo mua hàng');
		});
		//Cart::destroy();
		//return redirect()->route('giohang')->with(['flash_message' => 'Đặt hàng thành công']);
		return view('user.pages.order',compact('tran','content','total'))->with(['flash_message' => 'Đặt hàng thành công,đây là hóa đơn của bạn']);
	}
}
