@extends('app')
@section('content')
    <div class="height-100">
        <div class="row">
            <h4 class="mb-4 mt-4">Ubah Data Peserta</h4>
        </div>
        <div class="card">
            <div class="card-body">
                <form class="row g-3" action="{{ route('internalisasis.update', $internalisasi->id) }}" method="POST">
                    @csrf
                    @method('PUT')
                    <div class="col-md-12">
                        <label for="name" class="form-label">Masukkan Nama</label>
                        <input type="text" class="form-control" id="name" name="name" value="{{ $internalisasi->name }}">
                    </div>
                    <div class="col-md-6">
                        <label for="nrp" class="form-label">NRP</label>
                        <input type="number" class="form-control" id="nrp" name="nrp" value="{{ $internalisasi->nrp }}">
                    </div>
                    <div class="col-md-6">
                        <label for="department" class="form-label">Departemen</label>
                        <select id="department" class="form-select" name="department">
                            <option selected>Pilih departemen</option>
                            <option value="Fisika" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Fisika</option>
                            <option value="Matematika {{ $internalisasi->department == 'Matematika' ? 'selected' : '' }}">Matematika</option>
                            <option value="Statistika {{ $internalisasi->department == 'Statistika' ? 'selected' : '' }}">Statistika</option>
                            <option value="Kimia {{ $internalisasi->department == 'Kimia' ? 'selected' : '' }}">Kimia</option>
                            <option value="Biologi" {{ $internalisasi->department == 'Biologi' ? 'selected' : '' }}>Biologi</option>
                            <option value="Aktuaria" {{ $internalisasi->department == 'Aktuaria' ? 'selected' : '' }}>Aktuaria</option>
                            <option value="Teknik Mesin" {{ $internalisasi->department == 'Teknik Mesin' ? 'selected' : '' }}>Teknik Mesin</option>
                            <option value="Teknik Kimia" {{ $internalisasi->department == 'Teknik Kimia' ? 'selected' : '' }}>Teknik Kimia</option>
                            <option value="Teknik Pangan" {{ $internalisasi->department == 'Teknik Pangan' ? 'selected' : '' }}>Teknik Pangan</option>
                            <option value="Teknik Fisika" {{ $internalisasi->department == 'Teknik Fisika' ? 'selected' : '' }}>Teknik Fisika</option>
                            <option value="Teknik Industri" {{ $internalisasi->department == 'Teknik Industri' ? 'selected' : '' }}>Teknik Industri</option>
                            <option value="Teknik Material" {{ $internalisasi->department == 'Teknik Material' ? 'selected' : '' }}>Teknik Material</option>
                            <option value="Teknik Sipil" {{ $internalisasi->department == 'Teknik Sipil' ? 'selected' : '' }}>Teknik Sipil</option>
                            <option value="Arsitektur" {{ $internalisasi->department == 'Arsitektur' ? 'selected' : '' }}>Arsitektur</option>
                            <option value="Teknik Lingkungan" {{ $internalisasi->department == 'Teknik Lingkungan' ? 'selected' : '' }}>Teknik Lingkungan</option>
                            <option value="Perencanaan Wilayah & Kota" {{ $internalisasi->department == 'Perencanaan Wilayah & Kota' ? 'selected' : '' }}>Perencanaan Wilayah & Kota</option>
                            <option value="Teknik Geomatika" {{ $internalisasi->department == 'Teknik Geomatika' ? 'selected' : '' }}>Teknik Geomatika</option>
                            <option value="Teknik Geofisika" {{ $internalisasi->department == 'Teknik Geofisika' ? 'selected' : '' }}>Teknik Geofisika</option>
                            <option value="Teknik Perkapalan" {{ $internalisasi->department == 'Teknik Perkapalan' ? 'selected' : '' }}>Teknik Perkapalan</option>
                            <option value="Sistem Perkapalan" {{ $internalisasi->department == 'Sistem Perkapalan' ? 'selected' : '' }}>Sistem Perkapalan</option>
                            <option value="Teknik Kelautan" {{ $internalisasi->department == 'Teknik Kelautan' ? 'selected' : '' }}>Teknik Kelautan</option>
                            <option value="Transportasi Laut" {{ $internalisasi->department == 'Transportassi Laut' ? 'selected' : '' }}>Teknik Transportasi Laut</option>
                            <option value="Teknik Elektro" {{ $internalisasi->department == 'Teknik Elektro' ? 'selected' : '' }}>Teknik Elektro</option>
                            <option value="Teknik Biomedik" {{ $internalisasi->department == 'Teknik Biomedik' ? 'selected' : '' }}>Teknik Biomedik</option>
                            <option value="Teknik Komputer" {{ $internalisasi->department == 'Teknik Komputer' ? 'selected' : '' }}>Teknik Komputer</option>
                            <option value="Teknik Informatika" {{ $internalisasi->department == 'Teknik Informatika' ? 'selected' : '' }}>Teknik Informatika</option>
                            <option value="Sistem Informasi" {{ $internalisasi->department == 'Sistem Informasi' ? 'selected' : '' }}>Sistem Informasi</option>
                            <option value="Teknologi Informasi" {{ $internalisasi->department == 'Teknologi Informasi' ? 'selected' : '' }}>Teknologi Informasi</option>
                            <option value="Desain Produk" {{ $internalisasi->department == 'Desain Produk' ? 'selected' : '' }}>Desain Produk</option>
                            <option value="Desain Interior" {{ $internalisasi->department == 'Desain Interior' ? 'selected' : '' }}>Desain Interior</option>
                            <option value="Desain Komunikasi Visual" {{ $internalisasi->department == 'Desain Komunikasi Visual' ? 'selected' : '' }}>Desain Komunikasi Visual</option>
                            <option value="Manajemen Bisnis" {{ $internalisasi->department == 'Manajemen Bisnis' ? 'selected' : '' }}>Manajemen Bisnis</option>
                            <option value="Studi Pembangunan" {{ $internalisasi->department == 'Studi Pembangunan' ? 'selected' : '' }}>Studi Pembangunan</option>
                            <option value="Statistika Bisnis" {{ $internalisasi->department == 'Statistika Bisnis' ? 'selected' : '' }}>Statistika Bisnis</option>
                            <option value="Teknik Manufaktur" {{ $internalisasi->department == 'Teknik Manufaktur' ? 'selected' : '' }}>Teknik Manufaktur</option>
                            <option value="Teknik Konversi Energi" {{ $internalisasi->department == 'Teknik Konversi Energi' ? 'selected' : '' }}>Teknik Konversi Energi</option>
                            <option value="Teknik Otomasi" {{ $internalisasi->department == 'Teknik Otomasi' ? 'selected' : '' }}>Teknik Otomasi</option>
                            <option value="Teknik Kimia Industri" {{ $internalisasi->department == 'Teknik Kimia Industri' ? 'selected' : '' }}>Teknik Kimia Industri</option>
                            <option value="Teknik Instrumentasi" {{ $internalisasi->department == 'Teknik Instrumentasi' ? 'selected' : '' }}>Teknik Instrumentasi</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="division" class="form-label">Divisi</label>
                        <select id="division" class="form-select" name="division">
                            <option selected>Pilih divisi</option>
                            <option value="TECHNICAL" {{ $internalisasi->division == 'TECHNICAL' ? 'selected' : '' }}>TECHNICAL</option>
                            <option value="STRD" {{ $internalisasi->division == 'STRD' ? 'selected' : '' }}>STRD</option>
                            <option value="OF" {{ $internalisasi->division == 'OF' ? 'selected' : '' }}>OF</option>
                            <option value="COMM" {{ $internalisasi->division == 'COMM' ? 'selected' : '' }}>COMM</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="subdivision" class="form-label">Sub divisi</label>
                        <select id="subdivision" class="form-select" name="subdivision">
                            <option selected>Pilih subdivisi</option>
                            <option value="Vehicle Dynamics" {{ $internalisasi->subdivision == 'Vehicle Dynamics' ? 'selected' : '' }}>Vehicle Dynamics</option>
                            <option value="Electronical & Powertrain System" {{ $internalisasi->subdivision == 'Electronical & Powertrain System' ? 'selected' : '' }}>Electronical & Powertrain System</option>
                            <option value="Body & Frame" {{ $internalisasi->subdivision == 'Body & Frame' ? 'selected' : '' }}>Body & Frame</option>
                            <option value="Science & Technology Research Development" {{ $internalisasi->subdivision == 'Science & Technology Research Development' ? 'selected' : '' }}>Science & Technology Research
                                Development</option>
                            <option value="Sponsorship & Relation" {{ $internalisasi->subdivision == 'Sponsorship & Relation' ? 'selected' : '' }}>Sponsorship & Relation</option>
                            <option value="Administration & Accommodation" {{ $internalisasi->subdivision == 'Administration & Accommodation' ? 'selected' : '' }}>Administration & Accommodation</option>
                            <option value="Creative" {{ $internalisasi->subdivision == 'Creative' ? 'selected' : '' }}>Creative</option>
                            <option value="Content Strategist" {{ $internalisasi->subdivision == 'Content Strategist' ? 'selected' : '' }}>Content Strategist</option>
                            <option value="Events and Media Relation" {{ $internalisasi->subdivision == 'Events and Media Relation' ? 'selected' : '' }}>Events and Media Relation</option>
                            <option value="Web Developer" {{ $internalisasi->subdivision == 'Web Developer' ? 'selected' : '' }}>Web Developer</option>
                        </select>
                    </div>
                    <div class="col-12">
                        <a class="btn btn-info" href="{{ route('internalisasis.index') }}">Kembali</a>
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
