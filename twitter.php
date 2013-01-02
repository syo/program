<html>
	<head>
		<script type="text/javascript">
			function tweet(){
				location.href = "http://twitter.com/home?status=" + document.getelementbyid("test").text;
			}
			window.alert("test");
		</script>
	</head>
	<body>
		<input id="test" style="width:300" type="text" speech x-webkit-speech onweblitspeechchange="tweet()">
	</body>
</html>
