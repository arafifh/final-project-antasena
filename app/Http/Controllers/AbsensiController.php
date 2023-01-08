<?php

namespace App\Http\Controllers;

use App\Models\Absensi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class AbsensiController extends Controller
{
    public function form(Request $request) {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'nrp' => 'required',
            'department' => 'required',
            'division' => 'required',
            'subdivision' => 'required'
        ]);

        if (Absensi::where('nrp', $request->nrp)->exists()) {
            return response()->json([
                'success' => false,
                'message' => 'kamu sudah melakukan absensi'
            ], 400);
        }

        if ($validator->fails()) {
            return response()->json([
                'success' => false,
                'message' => 'isi form dengan benar'
            ], 400);
        }

        $data = Absensi::create($request->all());

        return response()->json([
            'success' => true,
            'message' => 'terimakasih sudah melakukan absensi',
            'data' => $data
        ], 200);
    }
}
