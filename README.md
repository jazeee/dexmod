Use apktool to extract, modify, and build an apk.
https://github.com/iBotPeaches/Apktool

And install `adb` for Android debugger tools, of course.

# Extract apk contents
apktool d base.apk

# Muck around
...

# Rebuild:
apktool b --output new/base-apktool.apk 

# zipalign, sign
See ./build-and-deploy.sh
