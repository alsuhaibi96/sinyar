<!--===== end footer section =====-->
<footer class="footer">
    <div class="container">
        <div class="top-footer dis-flx justify-space-between">
            <div class="social-links">
                <div class="logo">
                    <img src="{{ asset($footer_data[0]->logo) }}" alt="Sinyar-logo">
                </div>
                <p class="details">
                  {{ $footer_data[0]->description }}
                </p>
                <div class="social-icons dis-inl-flx justify-space-between align-itm-center gap-20">
                    <span class="facebook"><i class="fa-brands fa-facebook-f"></i></span>
                    <span class="instagram"><i class="fa-brands fa-instagram"></i></span>
                    <span class="twitter"><i class="fa-brands fa-twitter"></i></span>
                    <span class="youtub"><i class="fa-brands fa-youtube"></i></span>
                </div>

            </div>
            <div class="website-links dis-flx  align-itm-center gap-20">
                <ul class="about-list">
                    <h3>About</h3>
                    <li>Home</li>
                    <li>Our Team</li>
                    <li>Services</li>
                    <li>Portfolio</li>
                </ul>
                <ul class="suport-list">
                    <h3>Support</h3>
                    <li>About Us</li>
                    <li>FAQ</li>
                    <li>Help</li>
                    <li>Privacy & Policy</li>
                </ul>
                <ul class="getintoch-list">
                    <h3>Get In Touch With Us</h3>
                    <li>{{ $footer_data[0]->address }}</li>
                    <li>{{ $footer_data[0]->email }}</li>
                    <li>{{ $footer_data[0]->phone_number }}</li>
                    <li>{{ $footer_data[0]->fax }}</li>
                </ul>

            </div>

        </div>
        <div class="copy-right dis-flx justify-space-between align-itm-center">
            <div class="links dis-inl-flx align-itm-center gap-20">
                <a href="#">Terms of Service</a>
                <a href="#">Privacy Policy</a>
            </div>
            <div class="img">
                <img src="{{ $footer_data[0]->copy_right_img  }}" alt="copy-right">
            </div>

        </div>

    </div>
</footer>
<!--===== end footer section =====-->