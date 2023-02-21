    <main id="main">

      {{-- Why Us Section - Complete --}}
      <section class="why-us" id="why-us">
        <div class="container">

          <div class="row">
            <div class="col-12 d-flex align-items-center mb-3">
              <div class="content">
                <h3 class="text-center">Proč se stát členem Sdružení Karvinské hornické nemocnice?</h3>
                <p class="text-center">
                  Bojíte se, že neudržíte otěže své lékárny pevně ve svých rukou. Přidejte se k nám a své obavy hoďte klidně za hlavu!
                </p>
                <p class="text-center">
                  Garantujeme vám zachování ekonomické a marketingové individuality vaší lékárny, protože ve vás věříme. Nabízíme vám výhodný program, který přispěje k
                  uspokojivému ekonomickému efektu v alianci.
                </p>
                <div class="text-center">
                  <a class="more-btn text-uppercase" href="#services">Nabízíme</a>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-12 d-flex align-items-stretch">
              <div class="icon-boxes d-flex flex-column justify-content-center">
                <div class="row">
                  <div class="col-xl-4 d-flex align-items-stretch">
                    <div class="icon-box mt-xl-0 my-4">
                      <i class="bi bi-graph-up-arrow"></i>
                      <h4>Rozvoj</h4>
                      <p>Jsme si vědomi, že právě vaši zaměstnanci, se svými znalostmi a dovednosti, jsou hlavním pilířem úspěchu vaší lékárny.</p>
                      <p>Investice do jejich vzdělávání a rozvoje jsou proto důležitým faktorem úspěchu. Poradíme vám jak na osobnostní rozvoj, komunikační dovednosti,
                        marketingovou komunikaci či řízení lékárny.</p>
                    </div>
                  </div>
                  <div class="col-xl-4 d-flex align-items-stretch">
                    <div class="icon-box mt-xl-0 my-4">
                      <i class="bi bi-house-check"></i>
                      <h4>Samostatnost</h4>
                      <p>Víme také, že kvůli výrazně menšímu obratu nakupují malé a střední lékárny od svých dodavatelů za méně výhodné ceny než celostátní giganti s velkým
                        obratem.</p>
                    </div>
                  </div>
                  <div class="col-xl-4 d-flex align-items-stretch">
                    <div class="icon-box mt-xl-0 my-4">
                      <i class="bi bi-bag-heart"></i>
                      <h4>Podpora</h4>
                      <p>Poskytneme vám plnohodnotnou marketingovou podporu. Nastavíme vám systém dlouhodobého formování a podpory vztahu s potenciálním zákazníkem pomocí obsahu,
                        který pomáhá, vzdělává a baví.</p>
                    </div>
                  </div>
                </div>
              </div>
              {{-- End .content --}}
            </div>
          </div>

        </div>
      </section>
      {{-- End Why Us Section --}}

      {{-- Counts Section - Complete --}}
      <section class="counts section-bg" id="counts">
        <div class="container">

          <div class="row">

            <div class="col-lg-6 col-md-6 mt-md-0 mt-5">
              <div class="count-box">
                <i class="fas fa-hospital"></i>
                <span class="purecounter" data-purecounter-start="0" data-purecounter-end="{{ $pharmacies->count() }}" data-purecounter-duration="1"></span>
                <p>Lékaren ve sdružení</p>
              </div>
            </div>

            <div class="col-lg-6 col-md-6 mt-lg-0 mt-5">
              <div class="count-box">
                <i class="fas fa-users"></i>
                <span class="purecounter" data-purecounter-start="0" data-purecounter-end="{{ $regions->count() }}" data-purecounter-duration="1"></span>
                <p>Kraje</p>
              </div>
            </div>

          </div>

        </div>
      </section>
      {{-- End Counts Section --}}

      {{-- Appointment Section - Complete  --}}
      <section class="appointment section-bg" id="appointment">
        <div class="container">

          <div class="section-title">
            <h2>Mám zájem stát se členem<br>Sdružení KHN</h2>
            <p>Zadejte údaje o vaší lékárně. My se s vámi co nejdříve spojíme.</p>
          </div>

          <div class="validate">
            @if (count($errors) > 0)
              <div class="error">
                <ul>
                  @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                  @endforeach
                </ul>
              </div>
            @endif
          </div>

          <form class="php-email-form" role="form" action="{{ route('post.store') }}" method="POST">
            @csrf
            <div class="row">
              <div class="col-md-4 form-group">
                <input class="form-control" id="name" name="name" type="text" value="{{ old('name') }}" placeholder="Název lékárny">
                <div class="validate"></div>
              </div>
              <div class="col-md-4 form-group mt-md-0 mt-3">
                <input class="form-control" id="email" name="email" type="email" value="{{ old('email') }}" placeholder="Emailová adresa">
                <div class="validate"></div>
              </div>
              <div class="col-md-4 form-group mt-md-0 mt-3">
                <input class="form-control" id="phone" name="phone" value="{{ old('phone') }}" placeholder="Telefonní kontakt">
                <div class="validate"></div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-4 form-group mt-3">
                <input class="form-control" id="uid" name="uid" value="{{ old('uid') }}" placeholder="Kód vaší lékárny">
                <div class="validate"></div>
              </div>
              <div class="col-md-8 form-group mt-3">
                <select class="form-select" id="region_id" name="region_id" value="{{ old('phone') }}">
                  <option value="">Vyberte kraj</option>
                  @foreach ($regions as $region)
                    <option value="{{ $region->id }}">{{ $region->region_name }}</option>
                  @endforeach
                </select>
              </div>
            </div>

            <div class="form-group mt-3">
              <textarea class="form-control" name="message" rows="6" placeholder="Text zprávy"></textarea>
              <div class="validate"></div>
            </div>

            <div class="mt-3 text-center">
              <button type="submit">
                Odeslat
              </button>
            </div>
          </form>

        </div>
      </section>
      {{-- End Appointment Section --}}

      {{-- Services Section - Complete --}}
      <section class="services" id="services">
        <div class="container">

          <div class="section-title">
            <h2>Nabízíme</h2>
          </div>

          <div class="row">

            <div class="col-lg-4 col-md-6 d-flex align-items-stretch rounded-1">
              <div class="icon-box">
                <div class="icon"><i class="fas fa-heartbeat"></i></div>
                <p>Díky bohatým zkušenostem z farmaceutického průmyslu víme, že konkurovat velkým lékárenským řetězcům je pro malé a střední lékárny značně obtížné. Nemohou se s
                  nimi měřit v oblasti bonusů za prodej a vystavení, ani v oblasti propagace a distribuce, kde velké řetězce získávají značný náskok v boji o zákazníky. </p>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-md-0 mt-4">
              <div class="icon-box">
                <div class="icon"><i class="fas fa-pills"></i></div>
                <p>Víme také, že kvůli výrazně menšímu obratu nakupují malé a střední lékárny od svých dodavatelů za méně výhodné ceny než celostátní giganti s velkým obratem.</p>
              </div>
            </div>

            <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-lg-0 mt-4">
              <div class="icon-box">
                <div class="icon"><i class="fas fa-hospital-user"></i></div>
                <p>Poznáváte se v některé z uvedených situací? Pak právě vám nabízíme řešení, jak zlikvidovat tyto konkurenční nevýhody! Díky koordinovanému postupu, který vám
                  Sdružení Karvinské hornické nemocnice a.s. (SKHN) nabízí, získáte až stoprocentní bonusový nárůst. To vám garantujeme, protože jsme orientováni na obchodní
                  výsledek svých klientů.</p>
              </div>
            </div>

          </div>

        </div>
      </section>
      {{-- End Services Section --}}

      {{-- Departments Section --}}
      <section class="faq section-bg" id="faq">
        <div class="container">

          <div class="section-title">
            <h2>Lékárny ve Sdružení Karvinské hornické nemocice</h2>
            <p>Seznamy lékáren ve sdružení podle krajů</p>
          </div>
          <div class="row">
            <div class="col-12">
              <div class="faq-list">
                <ul>
                  @foreach ($regions as $region)
                    <li data-aos="fade-up">
                      <a data-bs-toggle="collapse" data-bs-target="#faq-list-{{ $region->id }}">{{ $region->region_name }}
                        <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                      <div class="collapse mt-1" id="faq-list-{{ $region->id }}" data-bs-parent=".faq-list">
                        <ul>
                          @foreach ($region->pharmacy as $pharmacy)
                            <li>
                              <span class="text-bolder">{{ $pharmacy->name }}</span> - <span class="text-muted">{{ $pharmacy->address }}, {{ $pharmacy->zip }},
                                {{ $pharmacy->village }}</span>
                            </li>
                          @endforeach
                        </ul>
                      </div>
                    </li>
                  @endforeach
                </ul>
              </div>
            </div>
          </div>
        </div>
      </section>
      {{-- End Departments Section --}}

      {{-- Frequently Asked Questions Section --}}
      {{-- <section class="faq section-bg" id="faq">
        <div class="container">

          <div class="section-title">
            <h2>Často kladené otázky</h2>
            <p>Pokud máte nějaké dotazy ? ... možná už se na ně nekdo ptal ....</p>
          </div>
          <div class="row">
            <div class="col-12 col-xl-6">
              <h4>Zákazníci</h4>
              <div class="faq-list">
                <ul>
                  <li data-aos="fade-up">
                    <i class="bx bx-help-circle icon-help"></i> <a class="collapse" data-bs-toggle="collapse" data-bs-target="#faq-list-1">Jak se dostanu do pozitivního listu?
                      <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                    <div class="show collapse" id="faq-list-1" data-bs-parent=".faq-list">
                      <p>
                        Odpověď.
                      </p>
                    </div>
                  </li>

                </ul>
              </div>
            </div>
            <div class="col-12 col-md-6">
              <h4>Dodavatelé</h4>
              <div class="faq-list">
                <ul>
                  <li data-aos="fade-up">
                    <i class="bx bx-help-circle icon-help"></i> <a class="collapse" data-bs-toggle="collapse" data-bs-target="#faq-list-6">Jak se dostanu do pozitivního listu?
                      <i class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                    <div class="show collapse" id="faq-list-6" data-bs-parent=".faq-list">
                      <p>
                        Odpověď.
                      </p>
                    </div>
                  </li>

                </ul>
              </div>
            </div>
          </div>
      </section> --}}
      {{-- End Frequently Asked Questions Section --}}

      {{-- Contact Section  --}}
      <section class="contact" id="contact">
        <div class="container">

          <div class="section-title">
            <h2>Kontakt</h2>
            <p>Kontaktujte nás</p>
            <br>
            <p class="text-danger mb-2">Zodpovědná vedoucí</p>
            <h5>PharmDr. Monika Řezníková, MBA</h5>
          </div>
        </div>

        <div>
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2571.6174619330404!2d18.5380256280902!3d49.86843006173945!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f131!3m3!1m2!1s0x47115522e5e2d2ff%3A0x25acc335a378eb9f!2zS2Fydmluc2vDoSBob3JuaWNrw6EgbmVtb2NuaWNlIC0gbMOpa8Ohcm5h!5e0!3m2!1scs!2scz!4v1675667504134!5m2!1scs!2scz"
                  style="border:0; width: 100%; height: 350px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>

        <div class="container">
          <div class="row mt-5">

            <div class="col-lg-4">
              <div class="info">
                <div class="address">
                  <i class="bi bi-geo-alt"></i>
                  <h4>Kde nás najdete:</h4>
                  <p>Zakladatelská 975/22
                    <br>735 06
                    <br>Karviná-Nové Město
                  </p>
                </div>

                <div class="email">
                  <i class="bi bi-envelope"></i>
                  <h4>Email:</h4>
                  <p><a href="mailto:reznikova@khn.cz">reznikova@khn.cz</a></p>
                </div>

                <div class="phone">
                  <i class="bi bi-telephone"></i>
                  <h4>Telefon:</h4>
                  <p><a href="tel:+420 596 380 602">+420 596 380 602</a></p>
                </div>

                <div class="phone">
                  <i class="bi bi-phone"></i>
                  <h4>Mobil:</h4>
                  <p><a href="tel:+420 734 792 882">+420 734 792 882</a></p>
                </div>

              </div>

            </div>

            <div class="col-lg-8 mt-lg-0 mt-5">

              {{-- <form class="php-email-form" role="form" action="" method="post">
                <div class="row">
                  <div class="col-md-6 form-group">
                    <input class="form-control" id="name" name="name" type="text" placeholder="Vaše jméno" required>
                  </div>
                  <div class="col-md-6 form-group mt-md-0 mt-3">
                    <input class="form-control" id="email" name="email" type="email" placeholder="Emailová adresa" required>
                  </div>
                </div>
                <div class="form-group mt-3">
                  <input class="form-control" id="subject" name="subject" type="text" placeholder="Předmět" required>
                </div>
                <div class="form-group mt-3">
                  <textarea class="form-control" name="message" rows="5" placeholder="Zpráva" required></textarea>
                </div>
                <div class="my-3">
                  <div class="loading">Nahrávám ...</div>
                  <div class="error-message"></div>
                  <div class="sent-message">Vaše zpráva byla uložena. Děkujeme!</div>
                </div>
                <div class="text-center"><button type="submit">Odeslat vzkaz</button></div>
              </form> --}}

            </div>

          </div>

        </div>
      </section>
      {{-- End Contact Section --}}

    </main>
    {{-- End Main --}}
