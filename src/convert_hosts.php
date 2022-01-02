<?php
echo "HiddenServiceDir /srv/\n";
$json = file_get_contents("/tmp/hosts.json");
$hosts = json_decode($json, true);

foreach($hosts['hosts'] as $host) {
		$hiddenService = "HiddenServicePort ";
		$hiddenService .= $host['port']." ";
		$hiddenService .= $host['host'];
		echo $hiddenService."\n";
}
?>
