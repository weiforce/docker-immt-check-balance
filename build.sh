#!/bin/bash

cd ../immt-check-balance/
cargo build --release

cd ../docker-immt-check-balance
cp ../immt-check-balance/target/release/immt-check-balance ./
sudo docker build . -t ivories/balance


sudo git commit -a -mup
sudo git push
