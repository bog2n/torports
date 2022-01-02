<!doctype html>
<html>
<head>
	<title>TOR Port Forwarder</title>
	<link href=style.css rel=stylesheet>
</head>
<body>
<pre>
<?php
	echo file_get_contents("/tmp/hostname")."<br>";
	echo file_get_contents("/tmp/ports");
?>
</pre>
</body>
</html>
