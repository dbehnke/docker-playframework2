#!/bin/bash

# Shell setup
unalias -a
hash -r
set -o errexit

# Make sure that the locale is set up if specified
if [ -n "$LANG" ] ; then
    locale-gen "$LANG"
fi

if [ -n "$LC_ALL" ] && [ "$LC_ALL" != "$LANG" ] ; then
    locale-gen "$LC_ALL"
fi

if ! [ -d /application ] ; then
    echo "Cannot find application directory" > /dev/stderr
    exit 1
fi

cd /application
/usr/local/play/play clean stage

shopt -s extglob
exec target/universal/stage/bin/!(*.bat)

