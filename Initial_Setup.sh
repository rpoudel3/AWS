#! /bin/bash

sudo bash -c "$(curl -L https://basemount.basespace.illumina.com/install)"

mkdir basespace

sudo apt-get update

sudo apt-get install awscli

sudo mkfs -t ext4 /dev/xvda

sudo mkdir data

sudo mount /dev/xvda data

sudo chmod 777 data

cd data

mkdir output

mkdir tools

mkdir input

cd tools

wget http://spades.bioinf.spbau.ru/release3.8.1/SPAdes-3.8.1-Linux.tar.gz

tar -xzf SPAdes-3.8.1-Linux.tar.gz

cd SPAdes-3.8.1-Linux/bin/
