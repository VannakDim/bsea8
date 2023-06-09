@extends('web.layouts.app')
@section('title', 'Most Popular')


@section('style')
@endsection

@section('content')
<div class="col-md-8">
	<div class="crumb inner-page-crumb">
		<ul>
			<li><i class="ti-home"></i><a href="{{ route('homePage') }}">Home</a> / </li>
			<li><a class="active">Most Popular</a></li>
		</ul>
	</div>
	<div class="home-news-block block-no-space">
		<!--<div class="home-posts-head">
			<h4 class="home-posts-cat-title"><a class="cat-3" href="#">What's New</a></h4>
		</div>-->
		<div class="row postgrid-horiz grid-style-2">
			@foreach($popular_posts as $post)
			<div class="col-sm-6">
				<div class="post-grid-style">
					<div class='post-grid-image'>
						<a class="post-cat cat-1" href="{{ route('categoryPage', $post->category->id) }}" title="{{ $post->category->category_name }}">{{ $post->category->category_name }}</a>
						<a class="grid-image" href="{{ route('detailsPage', $post->post_slug) }}" title="{{ $post->post_title }}">
							<img src="{{ get_featured_image_thumbnail_url($post->featured_image) }}" alt="{{ $post->post_title }}">
						</a>
					</div>

					<div class="post-detail">
						<h2><a href="{{ route('detailsPage', $post->post_slug) }}" title="{{ $post->post_title }}">{{ \Illuminate\Support\Str::limit($post->post_title, 44) }}</a></h2>
						<ul class="post-meta3 pull-left">
							<li><i class="ti-time"></i><a>{{ date("d F Y", strtotime($post->post_date)) }}</a></li>
							<li class="admin"><a href="{{ route('authorProfilePage', $post->user->username) }}"><i class="ti-user"></i> {{ $post->user->name }}</a></li>
						</ul>
						<ul class="post-meta3 pull-right">
							<li><i class="fa fa-eye"></i><a title="{{ $post->post_title }}">{{ $post->view_count }}</a></li>
							<li><a title="{{ $post->post_title }}"><i class="fa fa-comments"></i> {{ $post->comment->count() }}</a></li>
						</ul>
						{!! \Illuminate\Support\Str::limit($post->post_details, 120) !!}
						<a href="{{ route('detailsPage', $post->post_slug) }}" class="readmore" title="{{ $post->post_title }}"><i class="ti-more-alt"></i></a>
					</div>
				</div>
			</div>
			@endforeach
		</div>
		<div class="pagination">{{ $popular_posts->links() }}</div>
	</div>

	<div class="single-related">
		<div class="single-title">
			<h4><i class="fa fa-thumbs-o-up"></i> Recent Posts</h4>
		</div>
		<div class="category-recent-post">
			@foreach($recent_posts->chunk(3) as $items)
			<div class="progress-unit">
				@foreach($items as $recent_post)
				<div class="col-md-4 col-sm-12">
					<div class="pp-trending-grid">
						<img src="{{ get_featured_image_thumbnail_url($recent_post->featured_image) }}" alt="maro news">
						<div class="pp-trend-meta">
							<h5><a href="{{ route('detailsPage', $recent_post->post_slug) }}" title="">{{ \Illuminate\Support\Str::limit($recent_post->post_title, 50) }}</a></h5>
						</div>
					</div>
				</div>
				@endforeach
			</div>
			@endforeach
		</div>
	</div>

</div>
@endsection

@section('sidebar')
@include('web.includes.sidebar')
@endsection

@section('script')
@endsection