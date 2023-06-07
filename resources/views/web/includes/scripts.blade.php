<!-- <script type="text/javascript" src="{{ asset('web/js/jquery.js') }}"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.0/jquery.min.js" integrity="sha512-3gJwYpMe3QewGELv8k/BX9vcqhryRdzRMxVfq6ngyWXwo03GFEzjsUm8Q7RZcHPHksttq7/GFoxjCVUjkjvPdw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript" src="{{ asset('web/js/bootstrap.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('web/js/owl.carousel.js') }}"></script>
<!-- <script type="text/javascript" src="{{ asset('web/js/html5lightbox.js') }}"></script> -->
<!-- <script type="text/javascript" src="{{ asset('web/js/clock.js') }}"></script> -->
<script type="text/javascript" src="{{ asset('web/js/jquery.bootstrap.newsbox.min.js') }}"></script>
<script src="{{ asset('web/js/script.js') }}"></script>
<!-- <script type="text/javascript" src="{{ asset('web/js/parsley.min.js') }}"></script> -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/parsley.js/2.9.2/parsley.min.js" integrity="sha512-eyHL1atYNycXNXZMDndxrDhNAegH2BDWt1TmkXJPoGf1WLlNYt08CSjkqF5lnCRmdm3IrkHid8s2jOUY4NIZVQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script type="text/javascript">
	/** store subscriber **/
	$("#store-button").click(function(){
		var subscribe_add_form = $("#subscribe_add_form");
		var form_data = subscribe_add_form.serialize();
		$( '#email-error' ).html( "" );
		$( '#email-success' ).html( "" );
		$.ajax({
			url:'{{ route('subscribeRoute') }}',
			type:'POST',
			data:form_data,
			success:function(data) {
				console.log(data);
				if(data.errors) {
					if(data.errors.email){
						$( '#email-error' ).html( data.errors.email[0] );
					}
				}
				if(data.success) {
					$( '#email-success' ).text('Successfully subscribe.');
				}
			},
		});
	});
</script>