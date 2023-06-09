@extends('web.layouts.app')
@section('title', 'Edit Post')

@section('style')
<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />
<link rel="stylesheet" href="{{ asset('admin/css/bootstrap-datepicker.min.css') }}">
<link href="{{ asset('admin/summernote/summernote.css') }}" rel="stylesheet">
<style type="text/css">
.form-control{
	border-radius: 0px;
	padding: 20px 12px;
}
.btn{
	border-radius: 0px;
}
.select2-container--default .select2-selection--multiple {
    border: 1px solid #ccc;
    border-radius: 0px;
    padding: 5px 3px;
}
.select2-container--default.select2-container--focus .select2-selection--multiple {
    border: solid #ccc 1px;
}
.select-control {
    display: block;
    width: 100%;
    height: 40px;
    padding: 8px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 0px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}
.required {
	color: #a94442;
}
</style>
@endsection

@section('content')
	{!! is_demo() !!}
<div class="col-md-8">
	<div class="home-news-block block-no-space">
		<div class="crumb inner-page-crumb">
			<ul>
				<li><i class="ti-home"></i><a href="{{ route('homePage') }}">Home</a> / </li>
				<li><a href="{{ route('dashboard.dashboardPage') }}">Dashboard</a> / </li>
				<li><a>Edit Post</a></li>
			</ul>
		</div>

		@php($user = Auth::user())

		<div class="about-us">
			<div class="row">
				<div class="col-sm-12">
					<h3 class="pull-left">Edit Post</h3>
					<a href="{{ route('dashboard.dashboardPage') }}" class="btn btn-primary pull-right btn-flat"><i class="fa fa-dashboard"></i> Dashboard</a>
				</div>
			</div>
			<hr>
			<div class="row">
				<div class="col-sm-12" style="margin-bottom: 15px;">
					@if (!empty(Session::get('message')))
					<p style="color: #5cb85c"><i class="fa fa-check"></i> {{ Session::get('message') }}</p>
					@elseif (!empty(Session::get('exception')))
					<p style="color: #d9534f"><i class="fa fa-warning"></i> {{ Session::get('exception') }}</p>
					@else
					<small>Required fields are marked <span class="required">*</span></small>
					@endif
				</div>
				<div class="col-sm-12">
					<form data-parsley-validate name="post_edit_form" action="{{ route('dashboard.updatePostRoute', $post->id) }}" method="post" enctype="multipart/form-data">
						{{csrf_field()}}
						<div class="form-group{{ $errors->has('post_title') ? ' has-error' : '' }}">
							<label for="post_title">Post Title<span class="required">*</span></label>
							<input type="text" name="post_title" class="form-control" id="post_title" value="{{ $post->post_title }}" placeholder="ex: post title" required maxlength="255">
							@if ($errors->has('post_title'))
							<span class="help-block">
								<strong>{{ $errors->first('post_title') }}</strong>
							</span>
							@endif
						</div>
						<div class="form-group{{ $errors->has('post_slug') ? ' has-error' : '' }}">
							<label for="post_slug">Post Slug<span class="required">*</span></label>
							<input type="text" name="post_slug" class="form-control" id="username" value="{{ $post->post_slug }}" placeholder="ex: post_slug" required maxlength="255">
							@if ($errors->has('post_slug'))
							<span class="help-block">
								<strong>{{ $errors->first('post_slug') }}</strong>
							</span>
							@endif
						</div>
						<div class="form-group{{ $errors->has('category_id') ? ' has-error' : '' }}">
							<label>Category Name <span class="required">*</span></label>
							<select name="category_id" id="category_id" class="select-control" required>
								<option selected disabled style="color:black">Select One</option>
								@foreach($categories as $category)
								<option value="{{ $category->id }}">{{ $category->category_name}}</option>
								@endforeach
							</select>
							@if ($errors->has('category_id'))
							<span class="help-block">
								<strong>{{ $errors->first('category_id') }}</strong>
							</span>
							@endif
						</div>
						<div class="form-group{{ $errors->has('featured_image') ? ' has-error' : '' }}">
							<label>Featured Image<span class="required">*</span></label>
							<input id="featured_image" type="file" name="featured_image" class="select-control" required>
							@if ($errors->has('featured_image'))
							<span class="help-block">
								<strong>{{ $errors->first('featured_image') }}</strong>
							</span>
							@endif
						</div>
						<div class="form-group{{ $errors->has('post_tags') ? ' has-error' : '' }}">
							<label>Post Tag <span class="required">*</span></label>
							<select class="form-control select2-post-tag" name="post_tags[]" multiple="multiple" id="post_tags" required>
								<option disabled>Select Tags</option>
								@foreach($tags as $tag)
								<option value="{{ $tag->id }}">{{ $tag->tag_name }}</option>
								@endforeach
							</select>
							@if ($errors->has('post_tags'))
							<span class="help-block">
								<strong>{{ $errors->first('post_tags') }}</strong>
							</span>
							@endif
						</div>
						<div class="form-group{{ $errors->has('youtube_video_url') ? ' has-error' : '' }}">
							<label>Youtube Video URL</label>
							<input id="youtube_video_url" type="text" name="youtube_video_url" class="form-control" value="{{ $post->youtube_video_url }}" maxlength="250" placeholder="ex: https://www.youtube.com/watch?v=CSGiwf7KlrQ">
							@if ($errors->has('youtube_video_url'))
							<span class="help-block">
								<strong>{{ $errors->first('youtube_video_url') }}</strong>
							</span>
							@endif
						</div>
						<div class="form-group{{ $errors->has('post_details') ? ' has-error' : '' }}">
							<label>Post Details <span class="required">*</span></label>
							<textarea name="post_details" class="form-control summernote" id="post_details" required>{{ $post->post_details }}</textarea>
							@if ($errors->has('post_details'))
							<span class="help-block">
								<strong>{{ $errors->first('post_details') }}</strong>
							</span>
							@endif
						</div>

						<div class="form-group{{ $errors->has('meta_title') ? ' has-error' : '' }}">
							<label>Meta Title <span class="required">*</span></label>
							<input id="meta_title" type="text" name="meta_title" class="form-control" value="{{ $post->meta_title }}" maxlength="250" placeholder="ex: meta title" required>
							@if ($errors->has('meta_title'))
							<span class="help-block">
								<strong>{{ $errors->first('meta_title') }}</strong>
							</span>
							@endif
						</div>
						<div class="form-group{{ $errors->has('meta_keywords') ? ' has-error' : '' }}">
							<label>Meta Keywords</label>
							<input id="meta_keywords" type="text" name="meta_keywords" class="form-control" value="{{ $post->meta_keywords }}" maxlength="250" placeholder="ex: meta, keywords" required>
							@if ($errors->has('meta_keywords'))
							<span class="help-block">
								<strong>{{ $errors->first('meta_keywords') }}</strong>
							</span>
							@endif
						</div>
						<div class="form-group{{ $errors->has('meta_description') ? ' has-error' : '' }}">
							<label>Meta Description <span class="required">*</span></label>
							<textarea name="meta_description" rows="5" class="form-control" maxlength="260" required placeholder="ex: meta description">{{ $post->meta_description }}</textarea>
							@if ($errors->has('meta_description'))
							<span class="help-block">
								<strong>{{ $errors->first('meta_description') }}</strong>
							</span>
							@endif
						</div>
						<button type="submit" class="btn btn-primary" {{ !empty(is_demo()) ? 'disabled' : '' }}><i class="fa fa-save"></i> Update Post</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
@endsection

@section('sidebar')
@include('web.includes.user_sidebar')
@endsection

@section('script')
<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.select2-post-tag').select2();
		$('.select2-post-tag').select2().val({!! json_encode($post->tags()->pluck('tag_id')) !!}).trigger('change');
	});
</script>
<script type="text/javascript" src="{{ asset('admin/js/bootstrap-datepicker.min.js') }}"></script>
<script type="text/javascript">
	$(function () {
		var date = new Date();
		//date.setDate(date.getDate()-1);
		$('#post_date').datepicker({
			autoclose: true,
			format: "yyyy-mm-dd",
			startDate: date,
		});
	});
</script>
<!-- Summernote editor -->
<script src="{{ asset('admin/summernote/summernote.js') }}"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('.summernote').summernote({
			height: 200
		})
	});
</script>
<script type="text/javascript">
	document.forms['post_edit_form'].elements['category_id'].value = "{{ $post->category_id }}";
</script>
@endsection