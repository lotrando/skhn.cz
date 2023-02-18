{{-- Header --}}
<header class="fixed-top" id="header">
  <div class="d-flex align-items-center container">

    <a class="logo me-auto" href="{{ route('index') }}"><img class="img-fluid" src="{{ asset('/img/logo.png') }}" alt="Logo sdružení"></a>

    {{-- navbar --}}
    <nav class="navbar order-lg-0 order-last" id="navbar">
      <ul>
        <li><a class="nav-link scrollto text-uppercase" href="{{ route('index') }}#">Úvod</a></li>
        <li><a class="nav-link scrollto text-uppercase" href="{{ route('index') }}#why-us">O nás</a></li>
        <li><a class="nav-link scrollto text-uppercase" href="{{ route('index') }}#services">Nabízíme</a></li>
        <li><a class="nav-link scrollto text-uppercase" href="{{ route('index') }}#appointment">Pro zájemce</a></li>
        <li><a class="nav-link scrollto text-uppercase" href="{{ route('index') }}#marketing">Marketing</a></li>
        <li><a class="nav-link scrollto text-uppercase" href="{{ route('index') }}#contact">Kontakt</a></li>
        <li class="dropdown text-uppercase"><a href="#"><span>Lékárny</span> <i class="bi bi-chevron-down"></i></a>
          <ul>
            @foreach ($regions as $region)
              <li>
                <a href="{{ route('pharmacy.show', $region->id) }}">
                  {{ $region->region_name }}
                </a>
              </li>
            @endforeach
          </ul>
        </li>
      </ul>
      <i class="bi bi-list mobile-nav-toggle"></i>
    </nav>
    {{-- end navbr --}}

    <a class="appointment-btn scrollto text-uppercase" href="{{ route('index') }}#appointment">Stát se členem</a>

  </div>
</header>
{{-- End Header --}}
