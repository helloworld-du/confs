#! /usr/bin/env php
<?php
$mod = isset($_SERVER['argv'][2]) ? intval($_SERVER['argv'][2]) : 8192;
$src = isset($_SERVER['argv'][1]) ? intval($_SERVER['argv'][1]) : 0;

if ($mod <= 0) {
	$mod = 8192;
}
echo $src," mod ", $mod, " = ", $src % $mod;
