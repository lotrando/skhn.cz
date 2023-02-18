@extends('layout.app')

@section('content')
  <main id="main">
    {{-- Departments Section --}}
    <section class="faq section-bg mt-6" id="faq">
      <div class="container mt-6">

        <div class="section-title">
          <h1>-</h1><br>
          <h2>Lékárny ve Sdružení Karvinské hornické nemocice</h2>
          <p>Lékárny ve sdružení - {{ $reg[0] }}</p>
        </div>
        <div class="row">
          <div class="col-12">
            <div class="faq-list">
              <ul>
                @foreach ($pharmacies as $pharmacy)
                  <li data-aos="fade-up">
                    <a data-bs-toggle="collapse" data-bs-target="#faq-list-{{ $pharmacy->id }}">{{ $pharmacy->name }}
                      <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                    <div class="collapse mt-3" id="faq-list-{{ $pharmacy->id }}" data-bs-parent=".faq-list">
                      <p>
                        <span class="text-uppercase text-primary">{{ $pharmacy->address }}</span> - {{ $pharmacy->village }}
                      </p>
                    </div>
                  </li>
                @endforeach
              </ul>
            </div>
          </div>
        </div>
    </section>
    {{-- End Departments Section --}}

  </main>
@endsection
