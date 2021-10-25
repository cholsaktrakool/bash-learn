#!/bin/bash

foo="green land"

case $foo in
    "uk" | "kingdom")
        echo "foo contain uk or kingdom"
        ;;
    "th" | "thailand")
        echo "foo contain th or thailand"
        ;;
    [["land"]])
        echo "land"
        ;;
    *)
        echo "No match"
        ;;
esac
