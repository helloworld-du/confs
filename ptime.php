#! /usr/bin/env php
<?php
if (isset($_SERVER['argv'][1])) {
	$sdate = $_SERVER['argv'][1];
} else {
	$sdate = date("Y-m-d H:i:s");
}
echo "time: $sdate = ",strtotime($sdate);
