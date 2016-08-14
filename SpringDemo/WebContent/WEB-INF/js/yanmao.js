/**
 * 
 */

function clickPlace(obj){
		var txt = $(obj).text();
		console.log(txt);
		$("#place_span").text(":"+txt);
}
