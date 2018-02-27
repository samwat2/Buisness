console.log('hello')

$(function(){
	$('.imgE').hover(function(){
		$(this).animate({
			'height' : '64%',
	    'width' : 'auto',
	    'margin' : '3% 0'
		});
	});
	// $('#ajax').click(function(){
	// 	$.get('/ajax-json', function(response){
	// 		console.log(JSON.parse(response));
	// 	});
	// });
	// $('#ajax-html').click(function(){
	// 	$.get('/ajax-html', function(html){
	// 		console.log(html);
	// 		$('#thank-you').html(html);
	// 	});
	// });
	// $('#descriptions').click(function(){
	// 	$.get('/features', function(html){
	// 		console.log(html);
	// 		$('#place').html(html);
	// 	});
	// });
});

