<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Models\Transaction;
use Illuminate\Http\Request;

class TransactionController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function index()
    {
        $data['title_page'] = 'Daftar Transaksi';
        $data['transactions'] = Transaction::all();
        return view('admin.daftar-transaksi')->with($data);
    }
    public function approveTrans(Transaction $trans)
    {
        $trans['tt_status'] = 1;
        $trans->save();
        return redirect()->back()->with(['message' => 'Approve A Transaction']);
    }
    public function unApproveTrans(Transaction $trans)
    {
        $trans['tt_status'] = 0;
        $trans->save();
        return redirect()->back()->with(['message' => 'unApprove A Transaction']);
    }
    public function ejectTrans(Transaction $trans)
    {
        $trans['tt_status'] = -1;
        $trans->save();
        return redirect()->back()->with(['message' => 'Eject A Transaction']);
    }
    public function addResiTrans(Request $request, Transaction $trans)
    {
        $trans['tt_status'] = 2;
        $trans['tt_resi'] = $request->tt_resi;
        $trans->save();
        return redirect()->back()->with(['message' => 'Add Resi A Transaction']);
    }
}
