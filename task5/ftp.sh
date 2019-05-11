#!/usr/bin/env bash

sftp cs17d36@192.168.0.30
ls
lpwd
lls
put projects/cs232 -r
get cs232 -r
rm -r cs232

