var submit = document.getElementById("submit");
submit.addEventListener('click',function(){
	var search_word = document.getElementById("search").value;
	var url = "http://realtime.search.yahoo.co.jp/search?tt=c&ei=UTF-8&fr=sfp_as&aq=-1&oq=&p="+ search_word +"&meta=vc%3D";
	window.open(url, '_blank');
	return false;
},false);
