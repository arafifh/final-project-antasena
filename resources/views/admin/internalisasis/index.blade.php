@extends('app')
@section('content')
    <div class="height-100">
        <div class="row">
            <h4 class="mb-4 mt-4">List Peserta Internalisasi</h4>
        </div>
        <div class="row">
            <table class="table table-striped table-hover">
                <thead class="table-dark">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nama</th>
                        <th scope="col">NRP</th>
                        <th scope="col">Subdivisi</th>
                        <th scope="col">Waktu</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($internalisasis as $internalisasi)
                        <tr>
                            <td>{{ ++$i }}</td>
                            <td>{{ $internalisasi->name }}</td>
                            <td>{{ $internalisasi->nrp }}</td>
                            <td>{{ $internalisasi->subdivision }}</td>
                            <td>{{ $internalisasi->time }}</td>
                            <td>
                                <form onsubmit="return confirm('Apakah Anda Yakin ?');" action="{{ route('internalisasis.destroy', $internalisasi->id) }}" method="POST">
                                    <a class="btn btn-info"
                                        href="{{ route('internalisasis.show', $internalisasi->id) }}">Show</a>
                                    <a class="btn btn-primary"
                                        href="{{ route('internalisasis.edit', $internalisasi->id) }}">Edit</a>
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger">Delete</button>
                                </form>
                            </td>
                        </tr>
                    @empty
                        <div class="alert alert-danger">
                            Data List belum Tersedia.
                        </div>
                    @endforelse
                </tbody>
                <tfoot class="table-dark">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nama</th>
                        <th scope="col">NRP</th>
                        <th scope="col">subdivisi</th>
                        <th scope="col">Waktu</th>
                        <th scope="col">Action</th>
                    </tr>
                </tfoot>
            </table>
            {{ $internalisasis->links() }}
        </div>
    </div>
@endsection
