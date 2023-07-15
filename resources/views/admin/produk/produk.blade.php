@extends('admin.layout.appadmin')
@section('content')
    @if (Auth::user()->role != 'pelanggan')
				{{-- Disini Isi Konten --}}

    


<div class="page-heading">
    <div class="page-title">
        <div class="row">
            <div class="col-12 col-md-6 order-md-1 order-last">
                <h3>Detail Produk</h3>
                @if (Auth::user()->role == 'admin')
                    <a class="btn btn-primary" href="{{ url('produk/create') }}">Create</a>
                @endif
            </div>
            <div class="col-12 col-md-6 order-md-2 order-first">
                <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="{{ url('admin/dashboard') }}">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">
                            Produk
                        </li>
                        
                    </ol>
                </nav>
            </div>
        </div>
    </div>
    <section class="section">
        <div class="row">

            <div class="card">
                <div class="card-header">

                </div>
                <div class="card">
                  <table class="table" width="100%" border="1" cellspacing="2" cellpadding="2" id="datatablesSimple">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Kode</th>
                            <th>Nama</th>
                            <th>Harga Jual</th>
                            <th>Harga Beli</th>
                            <th>Stok</th>
                            <th>Minimal Stok</th>
                            <th>Deskripsi</th>
                            <th>Kategori Produk</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>No</th>
                            <th>Kode</th>
                            <th>Nama</th>
                            <th>Harga Jual</th>
                            <th>Harga Beli</th>
                            <th>Stok</th>
                            <th>Minimal Stok</th>
                            <th>Deskripsi</th>
                            <th>Kategori Produk</th>
                            <th>Aksi</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        @php $no = 1; @endphp
                        @foreach ($produk as $p)
                            <tr>
                                <td>{{ $no }}</td>
                                <td>{{ $p->kode }}</td>
                                <td>{{ $p->nama }}</td>
                                <td>{{ $p->harga_jual }}</td>
                                <td>{{ $p->harga_beli }}</td>
                                <td>{{ $p->stok }}</td>
                                <td>{{ $p->min_stok }}</td>
                                <td>{{ $p->deskripsi }}</td>
                                <td>{{ $p->nama_kategori }}</td>
                                <!--- nama_kategori diambil dari join yang ada di controller produk yang sudah dibuatkan join -->
                                <td>
                                    <a href="{{ url('produk/edit/' . $p->id) }}" class="btn btn-warning">Edit</a>
                                    
                                    {{-- Kedua : Batasi tombol delete hanya untuk admin --}}
                                    @if (Auth::user()->role == 'admin')
                                        <a href="{{ url('produk/delete/' . $p->id) }}" class="btn btn-danger" onclick="return confirm('Apakah Anda yakin ingin menghapus produk?')">Delete</a>
                                    @endif
                                </td>
                            </tr>
                            @php $no++; @endphp
                        @endforeach
                    </tbody>
              </table>
                        
                </div>
            </div>
        </div>
</div>
@else
        @include('admin.access_denied')
    @endif
@endsection

