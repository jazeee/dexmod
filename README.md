Use apktool to extract, modify, and build an apk.
https://github.com/iBotPeaches/Apktool

# Prereqs:
Install `adb` Android debugger tools.

# Extract apk contents
The following command unzips the apk. You could also just `unzip`, if you want. (Unsure how everything will work).

In addition to unzipping, `apktool` also reverse compiles Java `class` files to `smali` files. (Needs further investigation)

`apktool d base.apk`

# Muck around, change mp3's, XML etc.
...

Be aware, if you rename things, you may have to fully reinstall the app on your phone.

For example: if you change the name of a tone and it happened to be saved in your preferences, then the app will crash when opening the settings page. (It can't find the tone that is referenced in saved preferences).

# Rebuild:
apktool b --output new/base-apktool.apk 

# Create a signing certificate
See https://developer.android.com/studio/publish/app-signing for details.

I believe I did something like:

`keytool -genkey -v -keystore release-key-dexcom.jks -keyalg RSA -keysize 2048 -validity 10000 -alias my-alias`

Use this key during signing process below.

# zipalign, sign
See `./build-and-deploy.sh`

Basically, for some performance improvements, people tend to `zipalign`. Not sure if it is important.

In order to install on a phone, you have to sign the `apk`

Then, use `adb` to install the app on your phone. (You'll need to turn on USB debugging, and possibly allow third party install).

`adb install -r file.apk`

