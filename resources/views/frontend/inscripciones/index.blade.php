@extends('frontend.layout.main')
@section('title', 'Inscripciones')
@section('content')

<div class="links"> 

  @if (session('success'))
  <div class="alert alert-success alert-dismissible fade show" role="alert">
    {{ session('success') }}
  </div>
  @endif 
  @if (session('warning'))
  <div class="alert alert-warning alert-dismissible fade show" role="alert">
    {{ session('warning') }}
  </div>
  @endif 
  
  {!! $html !!}
  {!! $html2 !!}
  
</div>
@endsection