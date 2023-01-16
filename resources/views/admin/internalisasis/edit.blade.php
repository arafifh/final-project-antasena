@extends('app')
@section('content')
    <div class="height-100">
        <div class="row">
            <h4 class="mb-4 mt-4">Tambah Peserta</h4>
        </div>
        <div class="card">
            <div class="card-body">
                <form class="row g-3" action="{{ route('internalisasis.update', $data->id) }}" method="POST">
                    @csrf
                    @method(PUT)
                    <div class="col-md-12">
                        <label for="name" class="form-label">Masukkan Nama</label>
                        <input type="text" class="form-control" id="name" name="name" value="{{ $data->name }}">
                    </div>
                    <div class="col-md-6">
                        <label for="nrp" class="form-label">NRP</label>
                        <input type="number" class="form-control" id="nrp" name="nrp" value="{{ $data->nrp }}">
                    </div>
                    <div class="col-md-6">
                        <label for="department" class="form-label">Departemen</label>
                        <select id="department" class="form-select" name="department">
                            <option selected>Pilih departemen</option>
                            <option value="Fisika" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Fisika</option>
                            <option value="Matematika {{ $data->department == 'Fisika' ? 'selected' : '' }}">Matematika</option>
                            <option value="Statistika {{ $data->department == 'Fisika' ? 'selected' : '' }}">Statistika</option>
                            <option value="Kimia {{ $data->department == 'Fisika' ? 'selected' : '' }}">Kimia</option>
                            <option value="Biologi" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Biologi</option>
                            <option value="Aktuaria" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Aktuaria</option>
                            <option value="Teknik Mesin" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Mesin</option>
                            <option value="Teknik Kimia" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Kimia</option>
                            <option value="Teknik Pangan" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Pangan</option>
                            <option value="Teknik Fisika" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Fisika</option>
                            <option value="Teknik Industri" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Industri</option>
                            <option value="Teknik Material" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Material</option>
                            <option value="Teknik Sipil" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Sipil</option>
                            <option value="Arsitektur" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Arsitektur</option>
                            <option value="Teknik Lingkungan" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Lingkungan</option>
                            <option value="Perencanaan Wilayah & Kota" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Perencanaan Wilayah & Kota</option>
                            <option value="Teknik Geomatika" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Geomatika</option>
                            <option value="Teknik Geofisika" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Geofisika</option>
                            <option value="Teknik Perkapalan" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Perkapalan</option>
                            <option value="Sistem Perkapalan" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Sistem Perkapalan</option>
                            <option value="Teknik Kelautan" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Kelautan</option>
                            <option value="Transportasi Laut" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Transportasi Laut</option>
                            <option value="Teknik Elektro" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Elektro</option>
                            <option value="Teknik Biomedik" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Biomedik</option>
                            <option value="Teknik Komputer" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Komputer</option>
                            <option value="Teknik Informatika" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Informatika</option>
                            <option value="Sistem Informasi" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Sistem Informasi</option>
                            <option value="Teknologi Informasi" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknologi Informasi</option>
                            <option value="Desain Produk" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Desain Produk</option>
                            <option value="Desain Interior" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Desain Interior</option>
                            <option value="Desain Komunikasi Visual" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Desain Komunikasi Visual</option>
                            <option value="Manajemen Bisnis" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Manajemen Bisnis</option>
                            <option value="Studi Pembangunan" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Studi Pembangunan</option>
                            <option value="Statistika Bisnis" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Statistika Bisnis</option>
                            <option value="Teknik Manufaktur" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Manufaktur</option>
                            <option value="Teknik Konversi Energi" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Konversi Energi</option>
                            <option value="Teknik Otomasi" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Otomasi</option>
                            <option value="Teknik Kimia Industri" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Kimia Industri</option>
                            <option value="Teknik Instrumentasi" {{ $data->department == 'Fisika' ? 'selected' : '' }}>Teknik Instrumentasi</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="division" class="form-label">Divisi</label>
                        <select id="division" class="form-select" name="division">
                            <option selected>Pilih divisi</option>
                            <option value="TECHNICAL" {{ $data->division == 'Fisika' ? 'selected' : '' }}>TECHNICAL</option>
                            <option value="STRD" {{ $data->division == 'Fisika' ? 'selected' : '' }}>STRD</option>
                            <option value="OF" {{ $data->division == 'Fisika' ? 'selected' : '' }}>OF</option>
                            <option value="COMM" {{ $data->division == 'Fisika' ? 'selected' : '' }}>COMM</option>
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label for="subdivision" class="form-label">Sub divisi</label>
                        <select id="subdivision" class="form-select" name="subdivision">
                            <option selected>Pilih subdivisi</option>
                            <option value="Vehicle Dynamics" {{ $data->subdivision == 'Fisika' ? 'selected' : '' }}>Vehicle Dynamics</option>
                            <option value="Electronical & Powertrain System" {{ $data->subdivision == 'Fisika' ? 'selected' : '' }}>Electronical & Powertrain System</option>
                            <option value="Body & Frame" {{ $data->subdivision == 'Fisika' ? 'selected' : '' }}>Body & Frame</option>
                            <option value="Science & Technology Research Development" {{ $data->subdivision == 'Fisika' ? 'selected' : '' }}>Science & Technology Research
                                Development</option>
                            <option value="Sponsorship & Relation" {{ $data->subdivision == 'Fisika' ? 'selected' : '' }}>Sponsorship & Relation</option>
                            <option value="Administration & Accommodation" {{ $data->subdivision == 'Fisika' ? 'selected' : '' }}>Administration & Accommodation</option>
                            <option value="Creative" {{ $data->subdivision == 'Fisika' ? 'selected' : '' }}>Creative</option>
                            <option value="Content Strategist" {{ $data->subdivision == 'Fisika' ? 'selected' : '' }}>Content Strategist</option>
                            <option value="Events and Media Relation" {{ $data->subdivision == 'Fisika' ? 'selected' : '' }}>Events and Media Relation</option>
                            <option value="Web Developer" {{ $data->subdivision == 'Fisika' ? 'selected' : '' }}>Web Developer</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label for="time" class="form-label">Jam Kehadiran</label>
                        <input type="time" class="form-control" id="time" name="time" value="{{ $data->time }}">
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
