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
			<li><a class="active">Members</a></li> 
		</ul>
	</div>
	<div class="blog-single">
		
		<div class="single-post-detail">
	
			@foreach ($members as $member)
			<div class="author">
					
				<div class="author-avatar">
					@if(!empty($member->user->avatar))
					<img src="{{ get_member_image_url($member->company_logo) }}" alt="maro news" width="90px"> 
					@else
					<img src="{{ get_member_image_url($member->company_logo) }}" alt="maro news" width="90px"> 
					@endif
				</div>
				<div class="author-about">
					<h4 id="company"><a href="#">{{ $member->company }}</a></h4>
					<p><a href="{{ $member->map }}"><i class="ri-map-pin-line"></i>{{ $member->address }}</a> &nbsp; </p>
					<p>Process type: <a id="member-product" href="#">{{ $member->product->title }}</a> &nbsp; </p>
					@foreach ($member->types as $type)
						<a href="#" id="member-type">{{ $type->title }}</a>
					@endforeach
					<p>Workers: {{ $member->number_of_worker }} &nbsp; </p>
					<p>{{ $member->telephone }} &nbsp; </p>
					<p>{{ $member->email }} &nbsp; </p>
					<p>Owner from: <a href="#">{{ $member->country->country }}</a></p>
				</div>
			</div>
			@endforeach
		</div>
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

</style>

@section('script')

@endsection