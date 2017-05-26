#!/bin/bash
# vim:ts=4:sw=4:et
#
# Pulls new changes for repositories that were set up using
# git clone --mirror <url>, then runs a garbage collection.
#
# All other repositories are assumed to never change.

cd /git
for i in *
do
    (cd $i && git remote | grep -q '^origin$' && git fetch -p origin && git gc)
done

exit 0
