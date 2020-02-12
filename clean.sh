#!/bin/bash
currend_dir=$(pwd)
mkdir tmp
cd data
cp bitcoin.conf .gitignore ../tmp
cd $currend_dir
rm -rf data
mv tmp data
