@if (Route::has('login'))
  @auth
    <a href="{{ url('/home') }}">{{ __('Home') }}</a>
  @else
    <a href="{{ route('login') }}">{{ __('Login') }}</a>
    @if (Route::has('register'))
      <a href="{{ route('register') }}">{{ __('Register') }}</a>
    @endif
  @endauth
@endif
