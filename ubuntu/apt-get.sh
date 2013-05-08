#!/bin/sh

# Update repositories
sudo apt-get update
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update

## basics
sudo apt-get install make
sudo apt-get install cron

## convenience
sudo apt-get install ack-grep
sudo apt-get install bash-completion

## edit
sudo apt-get install gedit-plugins

## install scms
sudo apt-get install subversion
sudo apt-get install git
sudo apt-get install git-svn
sudo apt-get install meld

## install node.js
sudo apt-get install python-software-properties python g++ make
sudo apt-get install nodejs

## java
sudo apt-get install openjdk-7-jdk
sudo apt-get install ant
sudo apt-get install maven2

## ruby
sudo apt-get install ruby
sudo apt-get install rubygems

## http
sudo apt-get install curl

## tools
sudo apt-get install dos2unix
sudo apt-get install xmlstarlet
