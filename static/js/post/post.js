$(function() {
	datepicker('#postdate', function(el, date) {
	    // This will display the date as `1/1/2017`.
	    el.value = date.toDateString();
	});
	
	setTimeout(function () {
    	$(".alert").alert('close');
    }, 2000);
});