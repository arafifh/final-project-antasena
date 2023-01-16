@extends('app')
@section('content')
    <div class="height-100">
        <div class="mb-3 float-right">
            <div class="btn-group">
                <div class="dropdown">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton1"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        Dropdown button
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <table class="table table-striped table-hover">
                <thead class="table-dark">
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">First</th>
                        <th scope="col">Last</th>
                        <th scope="col">Handle</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($data as $list)
                        <tr>
                            <td>{{ ++$i }}</td>
                            <td>{{ $list->name }}</td>
                            <td>{{ $list->nrp }}</td>
                            <td>
                                <form action="{{ route('internalisasis.destroy', $list->id) }}" method="POST">
                                    <a class="btn btn-info"
                                        href="{{ route('internalisasis.show', $list->id) }}">Show</a>
                                    <a class="btn btn-primary"
                                        href="{{ route('internalisasis.edit', $list->id) }}">Edit</a>
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
                        <th scope="col">First</th>
                        <th scope="col">Last</th>
                        <th scope="col">Handle</th>
                    </tr>
                </tfoot>
            </table>
            {{ $data->links() }}
        </div>
    </div>
@endsection
