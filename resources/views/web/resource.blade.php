@php
use Carbon\Carbon;
@endphp

@extends('web.layouts.app')

@section('title', 'Member')
{{-- @section('keywords', $post->meta_keywords)
@section('description', $post->meta_description) --}}

@section('style')
{{-- <meta property="og:image" content="{{ get_featured_image_thumbnail_url($post->featured_image) }}"> --}}
<!-- Social Share: http://js-socials.com/demos/ -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jsSocials/1.5.0/jssocials.css">
<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/jsSocials/1.5.0/jssocials-theme-flat.css">
<style type="text/css">
	iframe {
		margin: 20px 0px;
	}
	.category {
		color: #9E9E9E;
	}
	.category:hover {
		color: #757575;
	}
</style>
<style type="text/css">
#shareButton { 
display:block; 
}
#shareNative { 
display:block; }
@media screen and (max-width: 500px) {
#shareButton { 
display:block; }
#shareNative { 
display:block; }
.jssocials { 
display:block; }
.jssocials-shares { 
display:block; }
.jssocials-share-email { 
display:block; }
}
</style>
@endsection

@section('content')
<div class="col-md-8">
	<div class="crumb inner-page-crumb">
		<ul>
			<li><i class="ti-home"></i><a href="{{ route('homePage') }}">Home</a> /</li>
			<li><a class="active">Resource</a></li> 
		</ul>
	</div>
	<div class="blog-single">
		
		{{-- <div class="single-post-detail"> --}}
	
			@foreach ($resources as $resource)
			{{-- <div class="author"> --}}
					
				<div class="author-about">

					<div class="company-logo">
						@if(!empty($resource->user->avatar))
						<img src="{{ get_resource_thumbnail_url($resource->thumbnail) }}" alt="maro news" width="90px"> 
						@else
						<img src="{{ get_resource_thumbnail_url($resource->thumbnail) }}" alt="maro news" width="90px"> 
						@endif
					</div>
					<h4 id="company"><a href="#">{{ $resource->title }}</a></h4>
					<h4 id="description"><a href="#">{{ $resource->description }}</a></h4>
					<a href="/download/{{ $resource->filename }}">Download</a>
					
				</div>
			{{-- </div> --}}
			@endforeach
		{{-- </div> --}}
	</div>
	
</div>
@endsection

@section('sidebar')
@include('web.includes.sidebar')
@endsection

<style>
	#relate-post-title{
		font-size: 1rem;
	}

	#post-title{
		padding: 20px 0;
		font-weight: bold;
	}
	#member-product{
		background: #cbeaa4;
		/* color: aliceblue; */
		padding: 0 5px;
	}
	#member-type{
		background: #ead0a4;
		color: aliceblue;
		padding: 0 5px;
	}

	#company{
		margin: 5px 0;
	}
	#company a{
		padding: 5px;
		background: #007bbd;
		color: #ffffff
	}

	.company-logo img{
		/* border-radius: 20px; */

		display: inline;
		float: left;
		box-shadow: 5px 5px 3px rgba(0, 0, 0, 0.2);
		margin: 0 0 20px 0; 
	}

</style>

@section('script')

@endsection