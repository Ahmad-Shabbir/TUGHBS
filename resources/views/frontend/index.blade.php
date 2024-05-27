@extends('frontend.main_master')
@section('main')

<!-- Banner Area -->
<div class="banner-area" style="height: 480px;">
            <div class="container">
                <div class="banner-content">
                    <h1>Book Your Stay at Tezpur University</h1>
                    
                     
                </div>
            </div>
        </div>
        <!-- Banner Area End -->

        <!-- Banner Form Area -->
        <div class="banner-form-area">
            <div class="container">
                <div class="banner-form">
                <form method="get" action="{{ route('booking.search') }}">
                        <div class="row align-items-center">
                            <div class="col-lg-3 col-md-3">
                                <div class="form-group">
                                    <label>CHECK IN TIME</label>
                                    <div class="input-group">
                                    <input autocomplete="off"  type="text" required name="check_in" class="form-control dt_picker" placeholder="yyy-mm-dd">
                                        <span class="input-group-addon"></span>
                                    </div>
                                    <i class='bx bxs-chevron-down'></i>	
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-3">
                                <div class="form-group">
                                    <label>CHECK OUT TIME</label>
                                    <div class="input-group">
                                    <input autocomplete="off"  type="text" required name="check_out" class="form-control dt_picker" placeholder="yyy-mm-dd">
                                        <span class="input-group-addon"></span>
                                    </div>
                                    <i class='bx bxs-chevron-down'></i>	
                                </div>
                            </div>

                            <div class="col-lg-2 col-md-2">
                                <div class="form-group">
                                    <label>GUESTS</label>
                                    <select name="persion" class="form-control">
                                        <option>01</option>
                                        <option>02</option>
                                        
                                    </select>	
                                </div>
                            </div>

                            <div class="col-lg-2 col-md-2">
                     <div class="form-group">
                <label>Category</label>
                 <select class="form-control">
              <option value="private">Private</option>
              <option value="semi-private">Semi Private</option>
              <option value="semi-official">Semi Official</option>
           </select>	
               </div>
                </div>



                            <div class="col-lg-4 col-md-4">
                                <button type="submit" class="default-btn btn-bg-one border-radius-5">
                                    Check Availability
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Banner Form Area End -->

        <!-- Room Area -->
       
         @include('frontend.home.room_area')

        <!-- Room Area End -->

        <!-- Book Area Two
        @include('frontend.home.room_area_two')
        Book Area Two End -->

        <!-- Services Area Three -->
        <!-- @include('frontend.home.services') -->
        <!-- Services Area Three End -->

        <!-- Team Area Three
        @include('frontend.home.team')
        Team Area Three End -->

        <!-- 
        <div class="testimonials-area-three pb-70">
            <div class="container">
                <div class="section-title text-center">
                    <span class="sp-color">TESTIMONIAL</span>
                    <h2>Our Latest Testimonials and What Our Client Says</h2>
                </div>
                <div class="row align-items-center pt-45">
                    <div class="col-lg-6 col-md-6">
                        <div class="testimonials-img-two">
                            <img src="assets/img/testimonials/testimonials-img5.jpg" alt="Images">
                        </div>
                    </div>

                    <div class="col-lg-6 col-md-6">
                        <div class="testimonials-slider-area owl-carousel owl-theme">
                            <div class="testimonials-slider-content">
                                <i class="flaticon-left-quote"></i>
                                <p>
                                    You can easily make a good and easily the best service on 
                                    this agency. This is one of the best and crucial service into
                                    the global world. We will start to make a communications
                                    with this agency and saw that, this has made our all of the
                                    problems in an easiest way.
                                </p>
                                <ul>
                                    <li>
                                        <img src="assets/img/testimonials/testimonials-img1.jpg" alt="Images">
                                        <h3>Mary Marden</h3>
                                        <span>New York City</span>
                                    </li>
                                </ul>
                            </div>

                            <div class="testimonials-slider-content">
                                <i class="flaticon-left-quote"></i>
                                <p>
                                    You can easily make a good and easily the best service on 
                                    this agency. This is one of the best and crucial service into
                                    the global world. We will start to make a communications
                                    with this agency and saw that, this has made our all of the
                                    problems in an easiest way.
                                </p>
                                <ul>
                                    <li>
                                        <img src="assets/img/testimonials/testimonials-img2.jpg" alt="Images">
                                        <h3>Harriet Johnson</h3>
                                        <span>London City</span>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
         Testimonials Area -->

        <!-- FAQ Area 
        @include('frontend.home.faq')
        FAQ Area End -->

        <!-- Blog Area -->
        <!--@include('frontend.home.blog')-->
        <!-- Blog Area End -->

        @endsection