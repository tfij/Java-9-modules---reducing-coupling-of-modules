#!/usr/bin/env bash
javac -d build --module-source-path src $(find src -name "*.java")
printf 'src compiled to "build" dir\n'
