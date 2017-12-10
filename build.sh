#!/bin/sh

DIR=$(dirname "$0")

cd $DIR/..

echo "Fetching theme"

[[ -d themes ]] || git clone https://github.com/sethmacleod/aerial.git themes/aerial
[[ -d content ]] || mkdir content

echo "Removing existing files"
rm -rf public/*

echo "Generating site"
hugo

