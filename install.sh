#!/bin/sh
if [ "$(whoami)" != "root" ];then
  echo "Need to be root or run with sudo. Exiting."
  exit 1
fi

apt update
apt install ubiquity-slideshow-ubuntu
rm -rf /usr/share/ubiquity-slideshow/*
cp -r slides /usr/share/ubiquity-slideshow
cp slideshow.conf /usr/share/ubiquity-slideshow
