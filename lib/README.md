# Scripting

from https://github.com/pelya/android-keyboard-gadget



There is a possibility to send keypresses in an automated way, using terminal emulator for Android or similar app. This is done using [hid-gadget-test](hid-gadget-test/hid-gadget-test?raw=true) utility.

First, copy this utility to your device.

```
adb push hid-gadget-test /data/local/tmp
adb shell chmod 755 /data/local/tmp/hid-gadget-test
```

You will need to set world-writable permissions on /dev/hidg0, or run hid-gadget-test from root shell.

```
adb shell
su
chmod 666 /dev/hidg0 /dev/hidg1
```

To always have root shell, so you don't need to enter 'su' each time, run command

```
adb root
```

Then, use hid-gadget-test to send keypresses.

```
adb shell
cd /data/local/tmp

# Send letter 'a'
echo a | ./hid-gadget-test /dev/hidg0 keyboard
```

You can also run this command without launching ADB shell, from shell script or .bat file.

```
adb shell 'echo a | /data/local/tmp/hid-gadget-test /dev/hidg0 keyboard'
```

