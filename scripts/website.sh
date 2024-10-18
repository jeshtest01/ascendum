#!/bin/bash

websites=("google.com" "github.com" "nonexistentwebsite.example")

for site in "${websites[@]}"; do
    if ping -c 1 "$site" &> /dev/null; then
        echo "$site is reachable."
    else
        echo "$site is not reachable."
    fi
done
