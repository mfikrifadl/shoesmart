<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $data['categories'] = Category::all();
        $data['title_page'] = 'Daftar Kategori';
        return view('admin.daftar-kategori')->with($data);
    }
    public function addCategory(Request $request)
    {
        $category = new Category;
        $category['pc_title'] = $request->pc_title;
        $category->save();
        return redirect()->back()->with(['message' => 'Add A Category']);
    }
    public function destroyCategory(Category $category)
    {
        $category->delete();
        return redirect()->back()->with(['message' => 'Delete A Category']);
    }
}
