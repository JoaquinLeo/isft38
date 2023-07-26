@extends('backend.layouts.main')
@section('title', 'Cupos')
@section('content')
<div class="container mt-3">

    @if(session('deleted'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{ session('deleted')}}
        </div>
    @endif

  @forelse($cupos as $cupo)
  @if($loop->first)
    <table class="table container table-bordered border border-2 border-dark">
      <thead>
        <tr>
          <th class="align-middle">Carrera</th>
          <th class="align-middle">Cupos</th>
          <th class="align-middle">Reservados</th>
          <th class="align-middle">Inscriptos</th>
          <th class="d-flex justify-content-end align-middle">
            <a class="btn btn-success" href="{{ route('cupos.create') }}">
              <img src="{{ asset('svg/new.svg') }}" width="20" height="20" alt="Crear" title="Crear">
              Crear Cupos</a>
          </th>
        </tr>
      </thead>
  @endif
      <tbody>
        <tr>
          <td>{{ $cupo->carrera->descripcion }}</td>
          <td>{{ $cupo->cupos }}</td>
          <td>{{ $cupo->reservados }}</td>
          <td>{{ $cupo->inscriptos }}</td>
          <td class="d-flex justify-content-end align-middle">
            {{ Form::model($cupos, [ 'method' => 'delete' , 'route' => ['cupos.destroy', $cupo->id] ]) }}
            @csrf
            <a href="{{ route('cupos.show', ['cupo' => $cupo->id ]) }}" class="btn btn-info"><img src="{{ asset('svg/show.svg') }}" width="20" height="20" alt="Mostrar" title="Mostrar"></a>
            <a href="{{ route('cupos.edit', ['cupo' => $cupo->id ]) }}" class="btn btn-primary"><img src="{{ asset('svg/edit.svg') }}" width="20" height="20" alt="Editar" title="Editar"></a>
            <button type="submit" name="borrar{{ $cupo->id }}" class="btn btn-danger" onclick="if (!confirm('Está seguro de borrar el cupo?')) return false;"><img src="{{ asset('svg/delete.svg') }}" width="20" height="20" alt="Borrar" title="Borrar"></button>
            {!!Form::close()!!}
          </td>
        </tr>
      </tbody>
  @if($loop->last)
    </table>
  @endif

  @empty
  <table class="table container">
    <tr>
      <th class="align-middle">Carrera</th>
      <th class="align-middle">Cupos</th>
      <th class="align-middle">Reservados</th>
      <th class="align-middle">Inscriptos</th>
      <th class="d-flex justify-content-end align-middle">
        <a class="btn btn-success" href="{{ route('cupos.create') }}">
          <img src="{{ asset('svg/new.svg') }}" width="20" height="20" alt="Crear" title="Crear">
          Crear Cupo</a>
      </th>
    </tr>
    <tr>
        <td class="align-middle">No hay cupos creados</td>
    </tr>
  </table>
  
  @endforelse

@endsection