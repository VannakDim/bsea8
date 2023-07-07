@extends('web.layouts.app')

@section('title', $setting->meta_title)
@section('keywords', $setting->meta_keywords)
@section('description', $setting->meta_description)

@section('style')
	<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> -->
@endsection

<!-- @foreach($banner as $banner)
	<img src="{{ get_banner_image_url($banner->image) }}" alt="{{ $banner->title }}" class="img-responsive">
@endforeach -->
@section('banner')
@php($banner = App\Banner::where('publication_status', 1)->orderBy('id', 'desc')->first())
        @if(!empty($banner))
        <img src="{{ get_banner_image_url($banner->image) }}" alt="{{ $banner->title }}" class="img-responsive" style="margin-top: 80px;">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="panel panel-info" style="box-shadow: 0 8px 61px -2px rgba(0,0,0,.2);margin-top: -42px;">
                        <div class="panel-body">
                            <h3 class="text-primary" style="margin-top: 0px; color: #008fd5"><strong>{{ $banner->title }}</strong></h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        @endif
@endsection

@section('content')
<div class="col-md-8">
	<div class="crumb inner-page-crumb">
		<ul>
			<li><i class="ti-home"></i><a href="{{ route('homePage') }}">Home</a> / </li>
		</ul>
	</div>

	<div class="home-news-block block-no-space">

		<!-- about part start-->
		<section class="about_part">
				<div class="row align-items-center justify-content-end">
					<div class="col-md-6 col-lg-12 offset-xl-1 col-xl-6">
						<div class="about_text">
							<!-- <h2>យើងមានបទពិសោធ</h2> -->
							<h2>WHO WE ARE</h2>
							<p>{!! \Illuminate\Support\Str::limit($page->page_content,1000,'...') !!}</p>
							<a href="{{ route('pagePage', $page->page_slug) }}" class="btn_2">read more</a>
						</div>
					</div>
				</div>
			<div class="hero-app-7 custom-animation"><img src="web/animate_icon/icon_1.png" alt=""></div>
			<div class="hero-app-8 custom-animation2"><img src="web/animate_icon/icon_2.png" alt=""></div>
			<div class="hero-app-6 custom-animation3"><img src="web/animate_icon/icon_3.png" alt=""></div>
		</section>
		<!-- about part start-->

		<div class="home-posts-head">
			<h4 class="home-posts-cat-title"><a class="cat-3" href="#">What's New</a></h4>
		</div>
		<div class="row postgrid-horiz grid-style-2">
			@foreach($posts as $post)
			<div class="col-sm-6">
				<div class="post-grid-style">
					<div class='post-grid-image'>
						<a class="post-cat cat-1" href="{{ route('categoryPage', $post->category->id) }}" title="{{ $post->category->category_name }}">{{ $post->category->category_name }}</a>
						<a class="grid-image" href="{{ route('detailsPage', $post->post_slug) }}" title="{{ $post->post_title }}">
							<img src="{{ get_featured_image_thumbnail_url($post->featured_image) }}" alt="{{ $post->post_title }}">
						</a>
					</div>

					<div class="post-detail">
						<h2>
							<a href="{{ route('detailsPage', $post->post_slug) }}" title="{{ $post->post_title }}">
								{{ \Illuminate\Support\Str::limit($post->post_title, 44, '...') }}
							</a>
						</h2>
						<ul class="post-meta3 pull-left">
							<li><i class="ti-time"></i><a>{{ date("d F Y", strtotime($post->post_date)) }}</a></li>
							<li class="admin"><a href="{{ route('authorProfilePage', $post->user->username) }}"><i class="ti-user"></i> {{ $post->user->name }}</a></li>
						</ul>
						<ul class="post-meta3 pull-right">
							<li><i class="fa fa-eye"></i><a title="{{ $post->post_title }}">{{ $post->view_count }}</a></li>
							<li><a title="{{ $post->post_title }}"><i class="fa fa-comments"></i> {{ $post->comment->count() }}</a></li>
						</ul>
						<a href="{{ route('detailsPage', $post->post_slug) }}" class="readmore" title="{{ $post->post_title }}"><i class="ti-more-alt"></i></a>
					</div>
				</div>
			</div>
			@endforeach
		</div>
		<div class="pagination">{{ $posts->links() }}</div>
	</div>

	<!-- <div class="single-related">
		<div class="single-title">
			<h4><i class="fa fa-thumbs-o-up"></i> Most Popular Posts</h4>
		</div>
		<div class="category-recent-post">
			@foreach($popular_posts->chunk(3) as $items)
			<div class="progress-unit">
				@foreach($items as $popular_post)
				<a href="{{ route('detailsPage', $popular_post->post_slug) }}" title="">
					<div class="col-md-4 col-sm-6">
						<div class="pp-trending-grid">
							<img src="{{ get_featured_image_thumbnail_url($popular_post->featured_image) }}" alt="maro news">
							<div class="pp-trend-meta">
								<h7>
									{{ \Illuminate\Support\Str::limit($popular_post->post_title, 50, '...') }}
								</h7>
							</div>
						</div>
					</div>
				</a>
				@endforeach
			</div>
			@endforeach
		</div>
	</div> -->

</div>
@endsection

@section('sidebar')
@include('web.includes.sidebar')
@endsection

@section('script')
@endsection