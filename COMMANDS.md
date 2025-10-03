```bash
# ls -R $ANDROID_SDK_ROOT/system-images | head -20
# android-34

# $HOME/.apps/dev-tools/android-sdk/system-images/android-34:
# google_apis

# $HOME/.apps/dev-tools/android-sdk/system-images/android-34/google_apis:
# x86_64

# $HOME/.apps/dev-tools/android-sdk/system-images/android-34/google_apis/x86_64:
# advancedFeatures.ini
# build.prop
# data
# encryptionkey.img
# kernel-ranchu
# NOTICE.txt
# package.xml
# ramdisk.img
# source.properties
# system.img
# userdata.img
```

Add x86_64 emulator
```bash
avdmanager create avd --force \
  -n myEmulator \
  -k "system-images;android-34;google_apis;x86_64"
```

Delete emulator
```bash
avdmanager delete avd -n myEmulator
```bash

Add arm64 emulator
```bash
avdmanager create avd -n myEmulator -k "system-images;android-34;google_apis;arm64-v8a"
```

For some reason this adds a prefix `android-sdk/` and then the path is invalid.
```bash
cat $HOME/.android/avd/myEmulator.avd/config.ini | grep image.sysdir  # remove android-sdk/ from there
```

Create emulator of pixel 9 and run with higher pixel density

```bash
avdmanager create avd -n pixel9 -k "system-images;android-34;google_apis;arm64-v8a" --device "pixel_9"
emulator -avd pixel9 -dpi-device 240
```

Install apk on emulator (any connected device really):
```bash
adb install -r app/build/outputs/apk/debug/app-debug.apk
```
