function goBack() {
	event.preventDefault();
	window.history.back();
	
}

$(function(){

	$('#submit,#back').click(function(event){
		$('button').prop('disabled', true);
	})
	
})

function areYouSure(){
	
	if(!confirm("Deseja deletar?")) {
		event.preventDefault();
	}
}