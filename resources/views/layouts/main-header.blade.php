<!--===== start header =====-->
<header class="header" id="navBars">
    <div class="container dis-flx justify-space-between align-itm-center flx-wrap">
        <a class="logo">
            Sinyar <span class="top-logo">سنيار</span>
        </a>
        <nav class="navBar" id="navBar">

            <ul class="dis-inl-flx align-itm-center gap-20" id="">
                <li class="">
                    <a href="{{ route('home') }}" class="nav_link @yield("home")">
                       {{__('messages.header navbar-link home')}}
                        <span></span>
                    </a>
                </li>
                <li class="">
                    <a class="nav_link @yield("about")" href="{{ route('about_us') }}">
                    {{__('messages.header navbar-link about')}}
                        <span></span>
                    </a>
                </li>
                <li class="">
                    <a href="{{ LaravelLocalization::localizeUrl('/services') }}" class="nav_link @yield("services")">
                    {{__('messages.header navbar-link services')}}
                        <span></span>
                    </a>
                </li>
                <li class="nav-item-projects" id="nav-item-projects">
                    <a href="{{ LaravelLocalization::localizeUrl('/projects') }}" class="nav_link @yield("projects")">
                    {{__('messages.header navbar-link projects')}}
                        <span></span>
                    </a>
                </li>
                <li class="">
                    <a class="nav_link" href="{{ route('contact_link') }}">
                        Get in Touch
                        <span></span>
                    </a>
                </li>
            </ul>
        </nav>
        <div class="icons dis-inl-flx align-itm-center gap-20">
{{--           
            <ul>
                @foreach(LaravelLocalization::getSupportedLocales() as $localeCode => $properties)
                    <li>
                        <a rel="alternate" hreflang="{{ $localeCode }}" href="{{ LaravelLocalization::getLocalizedURL($localeCode, null, [], true) }}">
                            {{ $properties['native'] }}
                         
                        </a>
                        
                    </li>
                @endforeach
            </ul> --}}

        </div>

    </div>

</header>
<!--===== end header =====-->
