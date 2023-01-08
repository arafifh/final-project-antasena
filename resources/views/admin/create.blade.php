<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    <link href="{{ asset('css/admin.css') }}" rel="stylesheet">
    <script src="{{ URL::asset('js/admin.js') }}"></script>
    <title>Form Absensi</title>
</head>

<body id="body-pd">
    <header class="header" id="header">
        <div class="header_toggle"> <i class='bx bx-menu' id="header-toggle"></i> </div>
        <div class="header_title">
            <h4 class="mb-4 mt-4">List Peserta</h4>
        </div>
        <div class="header_btn"> <button type="button" class="btn btn-primary">Tambah Peserta</button> </div>
    </header>
    <div class="l-navbar" id="nav-bar">
        <nav class="nav">
            <div>
                <a href="#" class="nav_logo">
                    <i class='bx bx-layer nav_logo-icon'></i>
                    <span class="nav_logo-name">Antasena</span>
                </a>
                <div class="nav_list">
                    <a href="#" class="nav_link active">
                        <i class='bx bx-grid-alt nav_icon'></i>
                        <span class="nav_name">Dashboard</span>
                    </a>
                    <a href="#" class="nav_link">
                        <i class='bx bx-user nav_icon'></i>
                        <span class="nav_name">Users</span>
                    </a>
                </div>
            </div>
            <a href="#" class="nav_link">
                <i class='bx bx-log-out nav_icon'></i>
                <span class="nav_name">Sign Out</span>
            </a>
        </nav>
    </div>
    <!--Container Main start-->
    <div class="height-100">
        <div class="row">
            <h4 class="mb-4 mt-4">Tambah Peserta</h4>
        </div>
        <div class="card">
            <div class="card-body">
                <form class="row g-3">
                    <div class="col-md-12">
                        <label for="nama" class="form-label">Masukkan Nama</label>
                        <input type="text" class="form-control" id="nama">
                    </div>
                    <div class="col-md-6">
                        <label for="nrp" class="form-label">NRP</label>
                        <input type="number" class="form-control" id="nrp">
                    </div>
                    <div class="col-md-6">
                        <label for="departemen" class="form-label">Departemen</label>
                        <select id="departemen" class="form-select">
                            <option selected>Pilih departemen</option>
                            <option>FAKULTAS SAINS DAN ANALITIKA DATA (SCIENTICS)</option>
                            <option>FAKULTAS TEKNOLOGI KELAUTAN (MARTECH)</option>
                            <option>FAKULTAS TEKNOLOGI INDUSTRI DAN REKAYASA SISTEM (INDSYS)</option>
                            <option>FAKULTAS TEKNOLOGI ELEKTRO DAN INFORMATIKA CERDAS (ELECTICS)</option>
                            <option>FAKULTAS TEKNIK SIPIL, PERENCANAAN, DAN KEBUMIAN (CIVPLAN)</option>
                            <option>FAKULTAS DESAIN KREATIF DAN BISNIS DIGITAL (CREABIZ)</option>
                            <option>FAKULTAS VOKASI (VOCATIONS)</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="divisi" class="form-label">Divisi</label>
                        <select id="divisi" class="form-select">
                            <option selected>Pilih subdivisi</option>
                            <option>FAKULTAS SAINS DAN ANALITIKA DATA (SCIENTICS)</option>
                            <option>FAKULTAS TEKNOLOGI KELAUTAN (MARTECH)</option>
                            <option>FAKULTAS TEKNOLOGI INDUSTRI DAN REKAYASA SISTEM (INDSYS)</option>
                            <option>FAKULTAS TEKNOLOGI ELEKTRO DAN INFORMATIKA CERDAS (ELECTICS)</option>
                            <option>FAKULTAS TEKNIK SIPIL, PERENCANAAN, DAN KEBUMIAN (CIVPLAN)</option>
                            <option>FAKULTAS DESAIN KREATIF DAN BISNIS DIGITAL (CREABIZ)</option>
                            <option>FAKULTAS VOKASI (VOCATIONS)</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="subdivisi" class="form-label">Sub divisi</label>
                        <select id="subdivisi" class="form-select">
                            <option selected>Pilih subdivisi</option>
                            <option>FAKULTAS SAINS DAN ANALITIKA DATA (SCIENTICS)</option>
                            <option>FAKULTAS TEKNOLOGI KELAUTAN (MARTECH)</option>
                            <option>FAKULTAS TEKNOLOGI INDUSTRI DAN REKAYASA SISTEM (INDSYS)</option>
                            <option>FAKULTAS TEKNOLOGI ELEKTRO DAN INFORMATIKA CERDAS (ELECTICS)</option>
                            <option>FAKULTAS TEKNIK SIPIL, PERENCANAAN, DAN KEBUMIAN (CIVPLAN)</option>
                            <option>FAKULTAS DESAIN KREATIF DAN BISNIS DIGITAL (CREABIZ)</option>
                            <option>FAKULTAS VOKASI (VOCATIONS)</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label for="waktu" class="form-label">Jam Kehadiran</label>
                        <input type="time" class="form-control" id="waktu">
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-danger">Batal</button>
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!--Container Main end-->

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

</html>
