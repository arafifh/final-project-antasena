<?php

namespace App\Http\Controllers;

use App\Models\Internalisasi;
use Illuminate\Http\Request;

class InternalisasiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Internalisasi::latest()->paginate(5);
        return view('admin.internalisasis.index', compact('data'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view(('admin.internalisasis.create'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //validate form
        $this->validate($request, [
            'name' => 'required',
            'nrp' => 'required',
            'department' => 'required',
            'division' => 'required',
            'subdivision' => 'required',
        ]);
        //create post
        Internalisasi::create([
            'name' => $request->name,
            'nrp' => $request->nrp,
            'department' => $request->department,
            'division' => $request->division,
            'subdivision' => $request->subdivision,
            'time' => $request->time,
        ]);
        //redirect to index
        return redirect()->route('internalisasis.index')->with(['success' => 'Data Berhasil Disimpan!']);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Internalisasi $data)
    {
        return view('admin.internalisasis.edit',compact('data'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Internalisasi $internalisas)
    {
         //validate form
         $this->validate($request, [
            'name' => 'required',
            'nrp' => 'required',
            'department' => 'required',
            'division' => 'required',
            'subdivision' => 'required',
            'time' => 'required',
        ]);
        //create post
        Internalisasi::create([
            'name' => $request->name,
            'nrp' => $request->nrp,
            'department' => $request->department,
            'division' => $request->division,
            'subdivision' => $request->subdivision,
            'time' => $request->time,
        ]);
        //redirect to index
        return redirect()->route('internalisasis.index')->with(['success' => 'Data Berhasil Diupdate!']);
    }
    public function destroy(Internalisasi $data)
    {
         //delete post
         $data->delete();

         //redirect to index
         return redirect()->route('internalisasis.index')->with(['success' => 'Data Berhasil Dihapus!']);
    }
}
