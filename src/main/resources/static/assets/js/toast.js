$(document).ready(function(){
  $("#btn-toast").click(function(){
	var check = $(this).val()
	console.log(check);
	if(check == 'true'){
		$('#liveToast2').toast('show');
	}
	else if(check == 'false'){
		$('#liveToast').toast('show');
	}
	else{
		$('#liveToast3').toast('show');
	}
  });
});
