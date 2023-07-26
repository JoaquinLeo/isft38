@extends('frontend.layout.main')
@section('title', 'Inscripciones')
@section('content')


<div class="links">

    @if (session('warning'))
        <div class="alert alert-warning alert-dismissible fade show" role="alert">
            {{ session('warning') }}
        </div>
    @endif
    @if (session('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{ session('success') }}
        </div>
    @endif    
                    
    {{ Form::model($turnos, ['method' => 'put', 'route' => ['inscripciones.update', $turnos ] ,'class' => 'p-3 border border-dark rounded']) }}
    @csrf

    <div class="form-group ">
        {{ Form::label('turnos', 'Turnos', ['class' => 'control-label']) }}
        {{ Form::select('turnos',$turnos, null, ['class' => 'form-control', 'placeholder' => 'Seleccione un turno']) }}                                  
        @error('turnos')
            <div class="alert alert-danger">{{ $message }}</div>
        @enderror
    </div>

    <div class="form-group ">
        {{ Form::label('carreras', 'Carreras', ['class' => 'control-label']) }}
        {{ Form::select('carreras',$carreras, null, ['class' => 'form-control', 'placeholder' => 'Seleccione una carrera']) }}
        @error('carreras')
            <div class="alert alert-danger">{{ $message }}</div>
        @enderror
    </div>
    
    <div class="form-group ">
        {{ Form::label('dni', 'DNI', ['class' => 'control-label']) }}
        {!! Form::number('dni', old('dni'), ['step' => '1', 'min'=> '10000000', 'max' =>'100000000', 'class'=> 'form-control', 'placeholder' =>'Ingrese el dni']) !!}
        @error('dni')
            <div class="alert alert-danger">{{ $message }}</div>
        @enderror
    </div>

    <div class="col text-center mt-3">
        {!! Form::submit("Guardar", ['class' => 'btn btn-primary', 'style' => 'width: 100%']) !!}
    </div>
    {!!Form::close()!!}

    <div class="col text-center mt-3">
        <a class="btn btn-success center col-sm-12" href="{{ route('inscripciones.index') }}">Volver</a>  
    </div>

         
</div>
    
@endsection