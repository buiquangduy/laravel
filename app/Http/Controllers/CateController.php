<?php namespace App\Http\Controllers;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Http\Requests\CateRequest;
use Illuminate\Http\Request;
use App\cate;
class CateController extends Controller {
	public function getList()
	{
		$data = cate::select('id','name','parent_id')->orderBy('id','DESC')->get()->toArray();
		return view('admin.cate.list',compact('data'));
	}
	
	public function getAdd()
	{
		$parent = cate::select('id','name','parent_id')->get()->toArray();
		return view('admin.cate.add',compact('parent'));
	}
	public function postAdd(CateRequest $request)
	{
		$cate = new cate;
		$cate->name = $request->txtCateName ;
		$cate->alias = changeTitle($request->txtCateName) ;
		$cate->order = $request->txtOrder ;
		$cate->parent_id = $request->sltParent ;
		$cate->keywords = $request->txtKeywords ;
		$cate->description = $request->txtDescription ;
		$cate->save();
		return redirect()->route('admin.cate.getList')->with(['flash_level'=>'success','flash_message' => 'success !! complete add category']);
	}
	public function getDelete($id)
	{
		$parent = cate::where('parent_id',$id)->count();
		if($parent == 0)
		{
		$cate= cate::find($id);
		$cate->delete($id);
		return redirect()->route('admin.cate.getList')->with(['flash_level'=>'success','flash_message' => 'success !! complete delete 		category']);
		}
		else
		{
			// echo "<script type='text/javascript'>
			// 	alert('Sorry!You can not delete this category');
			// 	window.location='";
			// 		echo route('admin.cate.getList');
			// 	echo"'
			// 	</script>";
			return redirect()->route('admin.cate.getList')->with(['flash_level'=>'success','flash_message' => 'fail !! don\'t delete 	category']);
			
		}
	}
	public function getEdit($id)
	{
		$data= cate::findOrFail($id)->toArray();
		$parent = cate::select('id','name','parent_id')->get()->toArray();
		return view('admin.cate.edit',compact('parent','data','id'));

	}
	public function postEdit(Request $request,$id)
	{
		$this->validate($request,
			["txtCateName" => "required"],
			["txtCateName.required" => "please enter name category"]
		);
		$cate = cate::find($id);
		$cate->name = $request->txtCateName ;
		$cate->alias = changeTitle($request->txtCateName) ;
		$cate->order = $request->txtOrder ;
		$cate->parent_id = $request->sltParent ;
		$cate->keywords = $request->txtKeywords ;
		$cate->description = $request->txtDescription ;
		$cate->save();
		return redirect()->route('admin.cate.getList')->with(['flash_level'=>'success','flash_message' => 'success !! 		complete edit category']);
	} 

	public function getSearch(Request $request)
	{
		$search = $request->input('search');
		if($search=="")
		{	
			return redirect()->route('admin.cate.getList')->with(['flash_level'=>'fail','flash_message' => 'fail !! please enter category name']);
		}
		else
		{
			$cate = cate::where('name','like',"%$search%")->select('id','name','alias','order','parent_id','description','created_at','updated_at')->paginate(5);
			$sosp = count($cate);
			return view('admin.cate.search',compact('cate','sosp'));
		}

	}

}
