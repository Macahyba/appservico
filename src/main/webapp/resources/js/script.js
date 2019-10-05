function goBack() {
	event.preventDefault();
	window.history.back();
	
}

$(function(){

	if(document.getElementById("previsao")){
		dataPrevisao.min = new Date().toISOString().split("T")[0];
	}

	
	$('#submit,#back').click(function(event){
		$('button').prop('disabled', true);
	})
	
})

function areYouSure(){
	
	if(!confirm("Deseja deletar?")) {
		event.preventDefault();
	}
}

$.date = function(dateObject) {
    var d = new Date(dateObject);
    var day = d.getDate();
    var month = d.getMonth() + 1;
    var year = d.getFullYear();
    if (day < 10) {
        day = "0" + day;
    }
    if (month < 10) {
        month = "0" + month;
    }
    var date = day + "/" + month + "/" + year;

    return date;
};