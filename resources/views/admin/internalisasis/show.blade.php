@extends('app')
@section('content')
    <div class="height-100">
        <div class="row">
            <h4 class="mb-4 mt-4">Tambah Peserta</h4>
        </div>
        <div class="card">
            <div class="card-body">
                <div class="col-md-12">
                    <label for="name" class="form-label">Masukkan Nama</label>
                    {{ $internalisasi->name }}
                </div>
                <div class="col-md-6">
                    <label for="nrp" class="form-label">NRP</label>
                    {{ $internalisasi->nrp }}
                </div>
                <div class="col-md-6">
                    <label for="department" class="form-label">Departemen</label>
                    {{ $internalisasi->department }}
                </div>
                <div class="col-md-6">
                    <label for="division" class="form-label">Divisi</label>
                    {{ $internalisasi->division }}
                </div>
                <div class="col-md-6">
                    <label for="subdivision" class="form-label">Sub divisi</label>
                    {{ $internalisasi->subdivision }}
                </div>
                <div class="col-md-3">
                    <label for="time" class="form-label">Jam Kehadiran</label>
                    {{ $internalisasi->time->format('H:i:s') }}
                </div>
            </div>
        </div>
    </div>
@endsection