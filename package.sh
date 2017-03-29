#!/usr/bin/env bash
mkdir -p mods
mkdir -p mods-standart-greetings
mkdir -p mods-conversational-greetings

jar --create --file=mods/pl.tfij.java9modules.app@1.0.jar --module-version=1.0 --main-class=pl.tfij.java9modules.app.Application -C build/pl.tfij.java9modules.app .
jar --create --file=mods/pl.tfij.java9modules.greetings.api@1.0.jar --module-version=1.0 -C build/pl.tfij.java9modules.greetings.api .
jar --create --file=mods/pl.tfij.java9modules.greetings.conversational@1.0.jar --module-version=1.0 -C build/pl.tfij.java9modules.greetings.conversational .
jar --create --file=mods/pl.tfij.java9modules.greetings.standard@1.0.jar --module-version=1.0 -C build/pl.tfij.java9modules.greetings.standard .
printf 'jar files created ("mods" dir)\n'

cp mods/pl.tfij.java9modules.app@1.0.jar mods-standart-greetings/pl.tfij.java9modules.app@1.0.jar
cp mods/pl.tfij.java9modules.greetings.api@1.0.jar mods-standart-greetings/pl.tfij.java9modules.greetings.api@1.0.jar
cp mods/pl.tfij.java9modules.greetings.standard@1.0.jar mods-standart-greetings/pl.tfij.java9modules.greetings.standard@1.0.jar
printf 'jar files created ("mods-standart-greetings" dir)\n'

cp mods/pl.tfij.java9modules.app@1.0.jar mods-conversational-greetings/pl.tfij.java9modules.app@1.0.jar
cp mods/pl.tfij.java9modules.greetings.api@1.0.jar mods-conversational-greetings/pl.tfij.java9modules.greetings.api@1.0.jar
cp mods/pl.tfij.java9modules.greetings.conversational@1.0.jar mods-conversational-greetings/pl.tfij.java9modules.greetings.conversational@1.0.jar
printf 'jar files created ("mods-conversational-greetings" dir)\n'
