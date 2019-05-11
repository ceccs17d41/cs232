#!/usr/bin/env bash

ssh cs17d36@192.168.0.30
ls
rsync -ah --info=progress2 abc cs17d36@192.168.0.30:~/
scp cs17d36@192.168.0.30:~/abc ./
ls
exit

