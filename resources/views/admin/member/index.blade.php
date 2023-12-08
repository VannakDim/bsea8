@extends('admin.layouts.app')
@section('title', 'Member')


@section('style')
<!-- <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />
	<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.0.3/css/buttons.dataTables.min.css"> -->

	<link rel="stylesheet" href="{{ asset('admin/datatable/css/dataTables.bootstrap.min.css')}}" />
	<link rel="stylesheet" href="{{ asset('admin/datatable/css/buttons.dataTables.min.css')}}">
	<style type="text/css">
	.modal-title{
		font-weight: bold;
	}
</style>
@endsection

@section('content')
<!-- Banner header -->
<section class="content-header">
	<h1>
		Members
	</h1>
	<ol class="breadcrumb">
		<li><a href="{{ route('admin.dashboardRoute') }}"><i class="fa fa-home"></i> Dashboard</a></li>
		<li class="active">Members</li>
	</ol>
</section>
<!-- /.banner header -->

<!-- Main content -->
<section class="content">
	<div class="box">
		<div class="box-header with-border">
			<h3 class="box-title">Manage Members</h3>

			<div class="box-tools">
				{{-- <button type="button" class="btn btn-info btn-sm btn-flat add-button"><i class="fa fa-plus"></i> Add Member</button> --}}
				<a href="{{ route('admin.members.create') }}" class="btn btn-info btn-sm btn-flat"><i class="fa fa-plus"></i> Add Member</a>
			</div>
		</div>
		<!-- /.box-header -->
		<div class="box-body">
			<div style="width: 100%; padding-left: -10px;">
				<div class="table-responsive">
					<table id="members-table" class="table table-striped table-hover dt-responsive display nowrap" cellspacing="0">
						<thead>
							<tr>
								<th>Company</th>
								<th>Logo</th>
								<th>Owner from</th>
								<th>Product</th>
								<th>Workers</th>
								<th>Telephone</th>
								<th>Created By</th>
								{{-- <th>Created At</th> --}}
								{{-- <th>Updated At</th> --}}
								{{-- <th width="10%">Publication Status</th> --}}
								<th width="7%">Action</th>
							</tr>
						</thead>
					</table>
				</div>
			</div>
		</div>
		<!-- /.box-body -->
		<div class="box-footer clearfix">
		</div>
	</div>
</section>
<!-- /.main content -->

<!-- add member modal -->
<div id="add-modal" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
	
	<!-- view banner modal -->
	<div id="view-modal" class="modal fade bs-example-modal-lg print-modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<div class="btn-group pull-right no-print">
						<div class="btn-group">
							<button class="tip btn btn-default btn-flat btn-sm" id="print-button" data-toggle="tooltip" data-original-title="Print">
								<i class="fa fa-print"></i>
								<span class="hidden-sm hidden-xs"></span>
							</button>
						</div>
						<div class="btn-group">
							<button class="tip btn btn-default btn-flat btn-sm" data-toggle="tooltip" data-original-title="Close" data-dismiss="modal" aria-label="Close">
								<i class="fa fa-remove"></i>
								<span class="hidden-sm hidden-xs"></span>
							</button>
						</div>
					</div>
					<h4 class="modal-title" id="view-title"></h4>
				</div>
				<div class="modal-body">
					<table class="table table-bordered table-striped">
						<tbody>
							<tr>
								<td colspan="2"><img src="" id="view-image" class="img-responsive img-thumbnail img-rounded" width="100%"></td>
							</tr>
							<tr>
								<td>URL</td>
								<td id="view-url"></td>
							</tr>
							<tr>
								<td>Created By</td>
								<td id="view-created-by"></td>
							</tr>
							<tr>
								<td>Publication Status</td>
								<td id="view-publication-status"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer no-print">
					<button type="button" class="btn btn-default btn-flat" data-dismiss="modal" aria-label="Close">Close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- /.view banner modal -->

	<!-- delete banner modal -->
	<div id="delete-modal" class="modal modal-danger fade" id="modal-danger">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title">
							<span class="fa-stack fa-sm">
								<i class="fa fa-square-o fa-stack-2x"></i>
								<i class="fa fa-trash fa-stack-1x"></i>
							</span>
							Are you sure want to delete this ?
						</h4>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
						<form method="post" role="form" id="delete_form">
							{{csrf_field()}}
							{{method_field('DELETE')}}
							<button type="submit" class="btn btn-outline">Delete</button>
						</form>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.delete banner modal -->
	</div>

	@endsection

	@section('script')

	<script type="text/javascript" src="{{ asset('admin/datatable/js/jquery.dataTables.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('admin/datatable/js/datatables.bootstrap.js') }}"></script>
	<script type="text/javascript" src="{{ asset('admin/datatable/js/dataTables.buttons.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('admin/datatable/js/buttons.flash.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('admin/datatable/js/pdfmake.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('admin/datatable/js/vfs_fonts.js') }}"></script>
	<script type="text/javascript" src="{{ asset('admin/datatable/js/buttons.html5.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('admin/datatable/js/buttons.print.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('admin/datatable/js/buttons.colVis.min.js') }}"></script>

	<script type="text/javascript">
		/** Load datatable **/
		$(document).ready(function() {
			get_table_data();
		});


		/** Delete **/
		$("#members-table").on("click", ".delete-button", function(){
			var member_id = $(this).data("id");
			var url = "{{ route('admin.members.destroy', 'member_id') }}";
			url = url.replace("member_id", member_id);
			$('#delete-modal').modal('show');
			$('#delete_form').attr('action', url);
		});



		/** Add **/
		$(".add-button").click(function(){
			$('#add-modal').modal('show');
		});

		// /** Store **/
		$("#store-button").click(function(){
			var postData = new FormData($("#banner_add_form")[0]);
			$( '#title-error' ).html( "" );
			$( '#url-error' ).html( "" );
			$( '#image-error' ).html( "" );
			$( '#publication-status-error' ).html( "" );
			$.ajax({
				type:'POST',
				url:'{{ route('admin.members.store') }}',
				processData: false,
				contentType: false,
				data : postData,
				success:function(data) {
					console.log(data);
					if(data.errors) {
						if(data.errors.title){
							$( '#title-error' ).html( data.errors.title[0] );
						}
						if(data.errors.url){
							$( '#url-error' ).html( data.errors.url[0] );
						}
						if(data.errors.image){
							$( '#image-error' ).html( data.errors.image[0] );
						}
						if(data.errors.publication_status){
							$( '#publication-status-error' ).html( data.errors.publication_status[0] );
						}
					}
					if(data.success) {
						window.location.href = '{{ route('admin.members.index') }}';
					}
				},
			});
		});

		/** Get datatable **/
		function get_table_data(){
			$('#members-table').DataTable({
				dom: 'Blfrtip',
				buttons: [
				{ extend: 'copy', exportOptions: { columns: ':visible'}},
				{ extend: 'print', exportOptions: { columns: ':visible'}},
				{ extend: 'pdf', orientation: 'landscape', bannerSize: 'A4', exportOptions: { columns: ':visible'}},
				{ extend: 'csv', exportOptions: { columns: ':visible'}},
				{ extend: 'colvis', text:'Column'},
				],
				columnDefs: [ {
					targets: -1,
					visible: true
				} ],
				lengthMenu: [[10, 25, 50, 100, -1], [10, 25, 50, 100, "All"]],
				processing: true,
				serverSide: true,
				ajax: "{{ route('admin.getMembersRoute') }}",
				columns: [
				{data: 'company'},
				{data: 'company_logo'},
				{data: 'owner_from'},
				{data: 'product'},
				{data: 'number_of_worker'},
				{data: 'telephone'}, 
				{data: 'username', name: 'username', orderable: true, searchable: true},
				// {data: 'created_at'},
				// {data: 'updated_at'},
				// {data: 'publication_status', name: 'publication_status', orderable: false, searchable: false},
				{data: 'action', name: 'action', orderable: false, searchable: false},
				],
				// order: [[0, 'desc']],
			});
		}

	</script>
	@endsection