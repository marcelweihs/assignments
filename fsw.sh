#!/bin/sh
fswatch -o . | xargs -n1 -I{} make

