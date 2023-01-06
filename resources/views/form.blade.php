<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
    <title>Form Absensi</title>
</head>

<body>
    <div class="container-fluid">
        <div class="header">
            <img src="{{asset('images/antasena.png')}}" class="logo">
            <h2>Internalisasi Staff Antasena 2023</h2>
            <div class="header-right">
                <img src="{{asset('images/cars.png')}}" class="cars">
            </div>
        </div>
        <div class="card">
            <div class="card-header">
                Selamat datang, silahkan absen terlebih dahulu!
            </div>
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
                <div class="col-12">
                    <button type="submit" class="btn btn-primary">Sign in</button>
                </div>
            </form>
        </div>
    </div>
    </div>
</body>

</html>
