<!doctype html>
<html>
<head>
	<title>TOR Port Forwarder</title>
	<link href=style.css rel=stylesheet>
</head>
<body>
<?php
	echo exec("cat /tmp/hostname")."<br>";
	echo exec("cat /tmp/ports");
?>
</body>
</html>
