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
        $internalisasis = Internalisasi::latest()->paginate(5);
        return view('admin.internalisasis.index', compact('internalisasis'))->with('i', (request()->input('page', 1) - 1) * 5);;
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

        $this->validate($request, [
            'name' => 'required',
            'nrp' => 'required',
            'department' => 'required',
            'division' => 'required',
            'subdivision' => 'required',
        ]);

        Internalisasi::create([
            'name' => $request->name,
            'nrp' => $request->nrp,
            'department' => $request->department,
            'division' => $request->division,
            'subdivision' => $request->subdivision,
            'time' => $request->time,
        ]);

        return view('results');
    }

    public function show(Internalisasi $internalisasi)
    {
        return view('admin.internalisasis.show', compact('internalisasi'));
    }

    public function edit(Internalisasi $internalisasi)
    {
        return view('admin.internalisasis.edit', compact('internalisasi'));
    }

    public function update(Request $request, Internalisasi $internalisasi)
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
        $internalisasi->update($request->all());

        return redirect()->route('internalisasis.index')->with(['success' => 'Data Berhasil Diupdate!']);
    }
    public function destroy(Internalisasi $internalisasi)
    {
        //delete post
        $internalisasi->delete();

        //redirect to index
        return redirect()->route('internalisasis.index')->with(['success' => 'Data Berhasil Dihapus!']);
    }
}
