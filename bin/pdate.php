#! /usr/bin/env php
<?php
if (isset($_SERVER['argv'][1])) {
	$itime = $_SERVER['argv'][1];
} else {
	$itime = time();
}
echo "time:$itime = ",date("Y-m-d H:i:s", $itime);
