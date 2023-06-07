<div class="clearfix"></div>
<style type="text/css">
#footer {background: #464646; border-top: 2px #fff solid; color: #fff; padding: 50px 0px; }
.footer-heading {font-size: 18px; font-weight: bold; color: #fff; text-shadow: none;}
#footer a {
    line-height: 24px;
    font-size: 13px;
    color:#fff;
}
#footer-bottom {background: #7e7e7e; color: #969696; padding: 10px 0px; color: #fff;}
/* a { color:#fff; } */
#footer a:hover { color: #969696; }
hr{
    border-top: 1px #9e9e9e dashed;
    margin-top: 10px;
    margin-bottom: 10px;
}
</style>
<div id="footer" style="">
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="footer-heading">
                    BSEA Info
                </div>
                <div class="clearfix"></div>
                <hr class="hr">
                <p class="text-justify" style="line-height: 24px; color: #fff; margin: 0 0 10px; font-size: 13px; letter-spacing: 0.09px;">{{ $setting->about_us }}</p>
            </div>
            <div class="col-md-4">
                <div class="footer-heading">
                    Address
                </div>
                <div class="clearfix"></div>
                <hr class="hr">
                <p style="line-height: 24px; color: #fff; margin: 0 0 10px; font-size: 13px; letter-spacing: 0.09px;">{{ $setting->address_line_one }}<br>
                <!-- {{ $setting->address_line_two }}<br> -->
                {{ $setting->state }}<br>
                {{ $setting->city }} {{ $setting->zip }}<br>
                {{ $setting->country }}<br>
                <!-- Fax: {{ $setting->fax }}</p> -->
                <div class="clearfix visible-xs"><br></div>
            </div>
            <div class="col-md-2">
                <div class="footer-heading">
                    Social Address
                </div>
                <div class="clearfix"></div>
                <hr class="hr">
                <a href="{{ $setting->facebook }}">Facebook</a><br>
                <!-- <a href="{{ $setting->twitter }}">Twitter</a><br> -->
                <!-- <a href="{{ $setting->google_plus }}">Google+</a><br> -->
                <!-- <a href="{{ $setting->linkedin }}">Linkedin</a><br> -->
                <div class="clearfix visible-xs"><br></div>
            </div>
            <div class="col-md-2">
                <div class="footer-heading">
                    Company
                </div>
                <div class="clearfix"></div>
                <hr class="hr">
                @foreach($pages as $page)
                <a href="{{ route('pagePage', $page->page_slug) }}">{{ $page->page_name }}</a><br>
                @endforeach
                <a href="{{ route('contactUsPage') }}">Contact Us</a><br>
                <div class="clearfix visible-xs"><br></div>
            </div>
        </div>
    </div>
</div>
<div class="clearfix"></div>
<div id="footer-bottom">
    <div class="container">
        <div class="row" style="margin-right: -15px; margin-left: -15px;">
            <div class="col-md-12 text-center">
                <span style="color: #fff; font-size: 13px; margin: 0px; padding: 0px">
                    Copyright © 2023 <a href="https://facebook.com/programmerkonkhmer" target="_blank" style="color: #fff">កូនខ្មែរ</a>, All rights reserved.
                </span>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
