Use apktool to extract, modify, and build an apk.

# Extract apk contents
apktool d base.apk

# Muck around
...

# Rebuild:
apktool b --output new/base-apktool.apk 

# zipalign, sign
See ./build-and-deploy.sh
