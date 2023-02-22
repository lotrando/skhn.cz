@extends('layout.app')

@section('content')
  <main id="main">
    {{-- Appointment Section --}}
    <section class="appointment section-bg mt-5" id="appointment">
      <div class="container mt-5">

        <div class="section-title">
          <h2>Mám zájem stát se členem</h2>
          <p>Zadejte údaje o vaší lékárně.<br>My se s vámi co nejdříve spojíme.</p>
        </div>

        <form class="php-email-form" role="form" action="{{ route('post.store') }}" method="POST">
          @csrf
          <div class="row">
            <div class="col-md-4 form-group">
              <input class="form-control" id="name" name="name" type="text" value="{{ old('name') }}" placeholder="Název lékárny">
              @if ($errors->has('name'))
                <small class="text-danger">{{ $errors->first('name') }}</small>
              @endif
            </div>
            <div class="col-md-4 form-group mt-md-0 mt-3">
              <input class="form-control" id="email" name="email" type="email" value="{{ old('email') }}" placeholder="Emailová adresa">
              @if ($errors->has('email'))
                <small class="text-danger">{{ $errors->first('email') }}</small>
              @endif
            </div>
            <div class="col-md-4 form-group mt-md-0 mt-3">
              <input class="form-control" id="phone" name="phone" value="{{ old('phone') }}" placeholder="Telefonní kontakt">
              @if ($errors->has('phone'))
                <small class="text-danger">{{ $errors->first('phone') }}</small>
              @endif
            </div>
          </div>
          <div class="row">
            <div class="col-md-4 form-group mt-3">
              <input class="form-control" id="uid" name="uid" value="{{ old('uid') }}" placeholder="IČO vaší lékárny">
              @if ($errors->has('uid'))
                <small class="text-danger">{{ $errors->first('uid') }}</small>
              @endif
            </div>
            <div class="col-md-8 form-group mt-3">
              <select class="form-select" id="region_id" name="region_id" value="{{ old('region') }}">
                <option value="">Vyberte kraj</option>
                @foreach ($regions as $region)
                  <option value="{{ $region->id }}">{{ $region->region_name }}</option>
                @endforeach
              </select>
              @if ($errors->has('region_id'))
                <small class="text-danger">{{ $errors->first('region_id') }}</small>
              @endif
            </div>
          </div>

          <div class="form-group mt-3">
            <textarea class="form-control" name="message" rows="6" placeholder="Text zprávy"></textarea>
          </div>

          <div class="mt-3 text-center">
            <button type="submit">
              Odeslat
            </button>
          </div>
        </form>

      </div>
    </section>
    {{-- End Section --}}
  @endsection
