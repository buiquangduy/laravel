<?php namespace App\Http\Controllers;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Requests\UserRequest;
use App\User;
use Hash;
use Auth;
use Illuminate\Http\Request;
class UserController extends Controller {

	public function getList(){
		$user = User::select('id','username','level')->orderBy('id','DESC')->get()->toArray();
		return view('admin.user.list',compact('user'));
	}
	public function getAdd(){
		return view('admin.user.add');
	}
	
	public function postAdd(UserRequest $request){
		$user = new User();
		$user->username = $request->txtUser;
		$user->password = Hash::make($request->txtPass);
		$user->email    = $request->txtEmail;
		$user->level 	= $request->rdoLevel;
		$user->remember_token = $request->_token;
		$user->save();
		return redirect()->route('admin.user.getList')->with(['flash_level'=>'success','flash_message' => 'success !! complete add user']);
		
	}
	
	public function getDelete($id){
		$user_current_login = Auth::user()->id;
		$user = User::find($id);
		if($id==2||($user_current_login !=2 && $user["level"]==1))// neu la supperadmin thi xoa dc admin va member, admin thi chi xoa member
		{
			return redirect()->route('admin.user.getList')->with(['flash_level'=>'danger','flash_message' => 'sorry !! You can\'t access delete user']);
		}
		else
		{
			$user->delete($id);
			return redirect()->route('admin.user.getList')->with(['flash_level'=>'success','flash_message' => 'success !! complete delete user']);
		}
	}
	
	public function postDelete(){
	}
	public function getEdit($id){
		$data = User::find($id);
		if(Auth::user()->id!=2 && ($id == 2|| ($data['level']==1 && (Auth::user()->id!=$id))))
		{
			return redirect()->route('admin.user.getList')->with(['flash_level'=>'danger','flash_message' => 'sorry !! You can\'t access edit user']);
		}
		return view('admin.user.edit',compact('data','id'));
	}
	
	public function postEdit($id,Request $request){
		$user = User::find($id);
		if($request->input('txtPass'))
		{
			$this->validate($request,[
				'txtRePass' => 'same:txtPass'
			],[
				'txtRePass.same' => 'Two password don\'t match'
			]);
			$pass = $request->input('txtPass');
			$user->password = Hash::make($pass);
			
		}
		$user->email = $request->txtEmail;
		$user->level = $request->rdoLevel;
		$user->remember_token = $request->_token;
		$user->save();
		return redirect()->route('admin.user.getList')->with(['flash_level'=>'success','flash_message' => 'success !! complete edit user']);
		
		
	}

    public function test1(){
        return view('admin.test.test1');
    }

    public function getturnover()
    {
        $json = [];
        $arrTurnover = Transactions::leftJoin('tbl_tours','tbl_transactions.id_tours','=','tbl_tours.id')
            ->leftJoin('tbl_sales','tbl_sales.id','=','tbl_transactions.id_sale')
            ->leftJoin('tbl_customers','tbl_customers.id','=','tbl_transactions.id_customer')
            ->select('tbl_transactions.start_date as start_date'
                ,'tbl_transactions.id_tours as tour_id'
                ,'tbl_sales.discount as discount'
                ,'tbl_tours.price as price')
            ->get();

        $months = Transactions::select('start_date')->get();
        $arrMonths = [];
        foreach($months as $value) {
            $month = Carbon\Carbon::createFromFormat('Y-m-d', $value->start_date)->month;
            if(!in_array($month, $arrMonths)){
                array_push($arrMonths, $month);
            }
        }

        $json['arrMonths'] = $arrMonths;

        $json['data'] = $arrTurnover;
        $json['code'] = 1;
        return $json;
    }
}
