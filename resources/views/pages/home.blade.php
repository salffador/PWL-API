@extends('layouts.app-public')
@section('title', 'Home')
@section('content')
    <div class="site-wrapper-reveal">
        <div class="hero-box-area">
            <div class="container">
                <div class="row ">
                    <div class="col-lg-12">
                        <!-- Hero Slider Area Start -->
                        <div class="hero-area" id="product-preview">
                        </div>
                        <!-- Hero Slider Area End -->
                    </div>
                </div>
            </div>
        </div>

        <div class="about-us-area section-space--ptb_120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="about-us-content_6 text-center">
                            <h2>s&nbsp;&nbsp;c&nbsp;&nbsp;c&nbsp;&nbsp;s&nbsp;&nbsp;</h2>   
                            <p>
                            <small>
                                Indulge in the timeless elegance and unparalleled craftsmanship of our handmade ceramics,
                                each piece meticulously crafted by skilled artisans 
                                who pour their heart and soul into every creation. 
                                Whether you're looking to enhance your dining experience with exquisite tableware 
                                or transform your living space with unique decorative pieces, 
                                our ceramic collection brings a touch of sophistication and artistic flair to your home. 
                                Experience the perfect blend of tradition and contemporary design, 
                                where every item tells a story of passion, creativity, and dedication to the art of ceramics.
                            </small>
                            </p>
                            <p class="mt-5">Embrace the art of living beautifully! 
                                <span class="text-color-primary">Happy Craft</span> 
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Banner Video Area Start -->
        <div class="banner-video-area overflow-hidden">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="banner-video-box">
                            <img src="https://images.stockcake.com/public/5/1/9/519133f9-060a-4b38-85d8-742ab882c3d3/potter-shapes-clay-stockcake.jpg" alt="" width="962px" height="578">
                            <div class="video-icon">
                                <a href="https://youtu.be/z8UUYS4bIfw" class="popup-youtube"><i class="linear-ic-play"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Banner Video Area End -->

        <!-- Our Brand Area Start -->
        <div class="our-brand-area section-space--pb_90">
            <div class="container">
                <div class="brand-slider-active">
                    @php
                        $partner_count = 10;
                    @endphp
                    @for($i=1;$i<=$partner_count;$i++)
                        <div class="col-lg-12">
                            <div class="single-brand-item">
                                <a href="#"><img src="{{ asset('assets/images/brand/partner' . $i . '.jpg') }}" class="img-fluid" alt="Partner Images"></a>
                            </div>
                        </div>
                    @endfor
                </div>
            </div>
        </div>
        <!-- Our Brand Area End -->

        <!-- Our Member Area Start -->
        <div class="our-member-area section-space--pb_120">

            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="member--box">
                            <div class="row align-items-center">
                                <div class="col-lg-5 col-md-4">
                                    <div class="section-title small-mb__40 tablet-mb__40">
                                        <h4 class="section-title">Join the community!</h4>
                                        <p>Hope You find what You are looing for</p>
                                    </div>
                                </div>
                                <div class="col-lg-7 col-md-8">
                                    <div class="member-wrap">
                                        <form action="#" class="member--two">
                                            <input class="input-box" type="text" placeholder="Your email address">
                                            <button class="submit-btn"><i class="icon-arrow-right"></i></button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Our Member Area End -->

    </div>
@endsection
@section('addition_css')
@endsection
@section('addition_script')
    <script src="{{asset('pages/js/home.js')}}"></script>
@endsection