@extends('app')
@section('content')
    <div class="height-100">
        <div class="row">
            <h4 class="mb-4 mt-4">Data Peserta</h4>
        </div>
        <div class="card">
            <div class="card-body">
                <div class="col-md-12">
                    <b><label for="name" class="form-label">Nama : </label></b>
                    {{ $internalisasi->name }}
                </div>
                <div class="col-md-6">
                    <b><label for="nrp" class="form-label">NRP : </label></b>
                    {{ $internalisasi->nrp }}
                </div>
                <div class="col-md-6">
                    <b><label for="department" class="form-label">Departemen : </label></b>
                    {{ $internalisasi->department }}
                </div>
                <div class="col-md-6">
                    <b><label for="division" class="form-label">Divisi : </label></b>
                    {{ $internalisasi->division }}
                </div>
                <div class="col-md-6">
                    <b><label for="subdivision" class="form-label">Sub divisi : </label></b>
                    {{ $internalisasi->subdivision }}
                </div>
                <div class="col-md-3">
                    <b><label for="time" class="form-label">Waktu Kehadiran : </label></b>
                    {{ $internalisasi->time }}
                </div>
            </div>
        </div>
        <a class="btn btn-info" href="{{ route('internalisasis.index') }}">Kembali</a>
    </div>
@endsection
