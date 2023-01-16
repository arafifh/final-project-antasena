@extends('app')
@section('content')
    <div class="height-100">
        <div class="row">
            <h4 class="mb-4 mt-4">Tambah Peserta</h4>
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
                            <option value="Matematika {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}">Matematika</option>
                            <option value="Statistika {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}">Statistika</option>
                            <option value="Kimia {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}">Kimia</option>
                            <option value="Biologi" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Biologi</option>
                            <option value="Aktuaria" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Aktuaria</option>
                            <option value="Teknik Mesin" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Mesin</option>
                            <option value="Teknik Kimia" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Kimia</option>
                            <option value="Teknik Pangan" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Pangan</option>
                            <option value="Teknik Fisika" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Fisika</option>
                            <option value="Teknik Industri" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Industri</option>
                            <option value="Teknik Material" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Material</option>
                            <option value="Teknik Sipil" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Sipil</option>
                            <option value="Arsitektur" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Arsitektur</option>
                            <option value="Teknik Lingkungan" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Lingkungan</option>
                            <option value="Perencanaan Wilayah & Kota" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Perencanaan Wilayah & Kota</option>
                            <option value="Teknik Geomatika" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Geomatika</option>
                            <option value="Teknik Geofisika" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Geofisika</option>
                            <option value="Teknik Perkapalan" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Perkapalan</option>
                            <option value="Sistem Perkapalan" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Sistem Perkapalan</option>
                            <option value="Teknik Kelautan" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Kelautan</option>
                            <option value="Transportasi Laut" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Transportasi Laut</option>
                            <option value="Teknik Elektro" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Elektro</option>
                            <option value="Teknik Biomedik" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Biomedik</option>
                            <option value="Teknik Komputer" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Komputer</option>
                            <option value="Teknik Informatika" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Informatika</option>
                            <option value="Sistem Informasi" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Sistem Informasi</option>
                            <option value="Teknologi Informasi" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknologi Informasi</option>
                            <option value="Desain Produk" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Desain Produk</option>
                            <option value="Desain Interior" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Desain Interior</option>
                            <option value="Desain Komunikasi Visual" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Desain Komunikasi Visual</option>
                            <option value="Manajemen Bisnis" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Manajemen Bisnis</option>
                            <option value="Studi Pembangunan" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Studi Pembangunan</option>
                            <option value="Statistika Bisnis" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Statistika Bisnis</option>
                            <option value="Teknik Manufaktur" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Manufaktur</option>
                            <option value="Teknik Konversi Energi" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Konversi Energi</option>
                            <option value="Teknik Otomasi" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Otomasi</option>
                            <option value="Teknik Kimia Industri" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Kimia Industri</option>
                            <option value="Teknik Instrumentasi" {{ $internalisasi->department == 'Fisika' ? 'selected' : '' }}>Teknik Instrumentasi</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="division" class="form-label">Divisi</label>
                        <select id="division" class="form-select" name="division">
                            <option selected>Pilih divisi</option>
                            <option value="TECHNICAL" {{ $internalisasi->division == 'Fisika' ? 'selected' : '' }}>TECHNICAL</option>
                            <option value="STRD" {{ $internalisasi->division == 'Fisika' ? 'selected' : '' }}>STRD</option>
                            <option value="OF" {{ $internalisasi->division == 'Fisika' ? 'selected' : '' }}>OF</option>
                            <option value="COMM" {{ $internalisasi->division == 'Fisika' ? 'selected' : '' }}>COMM</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="subdivision" class="form-label">Sub divisi</label>
                        <select id="subdivision" class="form-select" name="subdivision">
                            <option selected>Pilih subdivisi</option>
                            <option value="Vehicle Dynamics" {{ $internalisasi->subdivision == 'Fisika' ? 'selected' : '' }}>Vehicle Dynamics</option>
                            <option value="Electronical & Powertrain System" {{ $internalisasi->subdivision == 'Fisika' ? 'selected' : '' }}>Electronical & Powertrain System</option>
                            <option value="Body & Frame" {{ $internalisasi->subdivision == 'Fisika' ? 'selected' : '' }}>Body & Frame</option>
                            <option value="Science & Technology Research Development" {{ $internalisasi->subdivision == 'Fisika' ? 'selected' : '' }}>Science & Technology Research
                                Development</option>
                            <option value="Sponsorship & Relation" {{ $internalisasi->subdivision == 'Fisika' ? 'selected' : '' }}>Sponsorship & Relation</option>
                            <option value="Administration & Accommodation" {{ $internalisasi->subdivision == 'Fisika' ? 'selected' : '' }}>Administration & Accommodation</option>
                            <option value="Creative" {{ $internalisasi->subdivision == 'Fisika' ? 'selected' : '' }}>Creative</option>
                            <option value="Content Strategist" {{ $internalisasi->subdivision == 'Fisika' ? 'selected' : '' }}>Content Strategist</option>
                            <option value="Events and Media Relation" {{ $internalisasi->subdivision == 'Fisika' ? 'selected' : '' }}>Events and Media Relation</option>
                            <option value="Web Developer" {{ $internalisasi->subdivision == 'Fisika' ? 'selected' : '' }}>Web Developer</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label for="time" class="form-label">Jam Kehadiran</label>
                        <input type="time" class="form-control" id="time" name="time" value="{{ $internalisasi->time }}">
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-danger">Batal</button>
                        <button type="submit" class="btn btn-primary">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
