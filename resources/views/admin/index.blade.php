@extends('app')
@section('content')
<div class="height-100">
    <div class="row">
        <h4 class="mb-4 mt-4">Selamat Datang, Admin!</h4>
        <div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Jumlah staff intern yang telah absen</h5>
                    <i class='bx bxs-user nav_icon'></i>
                    <span class="card-text">{{$internalisasidata}}</span>
                </div>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">Jumlah user terdaftar</h5>
                    <i class='bx bxs-user nav_icon'></i>
                    <span class="card-text">{{$userdata}}</span>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
