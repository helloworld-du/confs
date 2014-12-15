#!/bin/sh

echo $USER login at `date`;
lynx -mime_header -auth=root:654321xyz "http://members.3322.net/dyndns/update?system=dyndns&hostname=shengchendu.f3322.org"

