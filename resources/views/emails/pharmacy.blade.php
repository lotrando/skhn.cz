@component('mail::message')
  # Nový požadavek na členství v SKHN

  <strong>Lékárna:</strong> {{ $data['name'] }}<br>
  <strong>Email:</strong> {{ $data['email'] }}<br>
  <strong>Kraj:</strong> {{ $data['region'] }}<br>
  <strong>Telefon:</strong> {{ $data['phone'] }}<br>
  <strong>UID:</strong> {{ $data['uid'] }}<br>
  <strong>Zpráva:</strong> {{ $data['message'] }}<br>
@endcomponent
