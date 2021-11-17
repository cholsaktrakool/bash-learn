#!/bin/bash

new_tag="nginx:1.7.9"
# sed -ir "s/(image\:).*//g" deploy.yml

perl -pe "s/(image:).*/image: $new_tag/g" deploy.yml > deploy.yml.tmp
