#!/bin/bash

cd ./base
apktool b --output ../new/base-apktool.apk
cd ./new
rm base-aligned.apk
/opt/android-sdk/build-tools/28.0.3/zipalign -v -p 4 base-apktool.apk base-aligned.apk
/opt/android-sdk/build-tools/28.0.3/apksigner sign --ks release-key-dexcom.jks --out base.apk base-aligned.apk
adb install -r base.apk

