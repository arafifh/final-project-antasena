<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
    <title>Form Absensi</title>
</head>

<body>
    <div class="container-sm">
        <div class="header">
            <img src="{{ asset('images/antasena.png') }}" class="logo">
            <h2 class="title">Internalisasi Staff Antasena 2023</h2>
            <img src="{{ asset('images/cars.png') }}" class="cars">
        </div>
        <div class="card mt-4 border-0">
            <div class="card-header">
                <h5 class="card-title">
                    Selamat datang, silahkan absen terlebih dahulu!
                </h5>
            </div>
            <div class="card-body">
                <form class="row g-3 action="{{ route('internalisasis.store') }}" method="POST"">
                    @csrf
                    <div class="col-md-12">
                        <label for="name" class="form-label">Masukkan Nama</label>
                        <input type="text" class="form-control" id="name" name="name">
                    </div>
                    <div class="col-md-6">
                        <label for="nrp" class="form-label">NRP</label>
                        <input type="number" class="form-control" id="nrp" name="nrp">
                    </div>
                    <div class="col-md-6">
                        <label for="department" class="form-label">Departemen</label>
                        <select id="department" class="form-select" name="department">
                            <option selected>Pilih departemen</option>
                            <option value="Fisika">Fisika</option>
                            <option value="Matematika">Matematika</option>
                            <option value="Statistika">Statistika</option>
                            <option value="Kimia">Kimia</option>
                            <option value="Biologi">Biologi</option>
                            <option value="Aktuaria">Aktuaria</option>
                            <option value="Teknik Mesin">Teknik Mesin</option>
                            <option value="Teknik Kimia">Teknik Kimia</option>
                            <option value="Teknik Pangan">Teknik Pangan</option>
                            <option value="Teknik Fisika">Teknik Fisika</option>
                            <option value="Teknik Industri">Teknik Industri</option>
                            <option value="Teknik Material">Teknik Material</option>
                            <option value="Teknik Sipil">Teknik Sipil</option>
                            <option value="Arsitektur">Arsitektur</option>
                            <option value="Teknik Lingkungan">Teknik Lingkungan</option>
                            <option value="Perencanaan Wilayah & Kota">Perencanaan Wilayah & Kota</option>
                            <option value="Teknik Geomatika">Teknik Geomatika</option>
                            <option value="Teknik Geofisika">Teknik Geofisika</option>
                            <option value="Teknik Perkapalan">Teknik Perkapalan</option>
                            <option value="Sistem Perkapalan">Sistem Perkapalan</option>
                            <option value="Teknik Kelautan">Teknik Kelautan</option>
                            <option value="Transportasi Laut">Teknik Transportasi Laut</option>
                            <option value="Teknik Elektro">Teknik Elektro</option>
                            <option value="Teknik Biomedik">Teknik Biomedik</option>
                            <option value="Teknik Komputer">Teknik Komputer</option>
                            <option value="Teknik Informatika">Teknik Informatika</option>
                            <option value="Sistem Informasi">Sistem Informasi</option>
                            <option value="Teknologi Informasi">Teknologi Informasi</option>
                            <option value="Desain Produk">Desain Produk</option>
                            <option value="Desain Interior">Desain Interior</option>
                            <option value="Desain Komunikasi Visual">Desain Komunikasi Visual</option>
                            <option value="Manajemen Bisnis">Manajemen Bisnis</option>
                            <option value="Studi Pembangunan">Studi Pembangunan</option>
                            <option value="Statistika Bisnis">Statistika Bisnis</option>
                            <option value="Teknik Manufaktur">Teknik Manufaktur</option>
                            <option value="Teknik Konversi Energi">Teknik Konversi Energi</option>
                            <option value="Teknik Otomasi">Teknik Otomasi</option>
                            <option value="Teknik Kimia Industri">Teknik Kimia Industri</option>
                            <option value="Teknik Instrumentasi">Teknik Instrumentasi</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="division" class="form-label">Divisi</label>
                        <select id="division" class="form-select" name="division">
                            <option selected>Pilih divisi</option>
                            <option value="TECHNICAL">TECHNICAL</option>
                            <option value="STRD">STRD</option>
                            <option value="OF">OF</option>
                            <option value="COMM">COMM</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="subdivision" class="form-label">Sub divisi</label>
                        <select id="subdivision" class="form-select" name="subdivision">
                            <option selected>Pilih subdivisi</option>
                            <option value="Vehicle Dynamics">Vehicle Dynamics</option>
                            <option value="Electronical & Powertrain System">Electronical & Powertrain System</option>
                            <option value="Body & Frame">Body & Frame</option>
                            <option value="Science & Technology Research Development">Science & Technology Research
                                Development</option>
                            <option value="Sponsorship & Relation">Sponsorship & Relation</option>
                            <option value="Administration & Accommodation">Administration & Accommodation</option>
                            <option value="Creative">Creative</option>
                            <option value="Content Strategist">Content Strategist</option>
                            <option value="Events and Media Relation">Events and Media Relation</option>
                            <option value="Web Developer">Web Developer</option>
                        </select>
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-danger">Batal</button>
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>
