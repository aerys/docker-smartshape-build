# SmartShape Build


## Android

This usage pattern shares the ADB server container's network with ADB client containers.

```
docker run -dit --privileged -v /dev/bus/usb:/dev/bus/usb -v `pwd`:/data --name smartshape-android aerysinnovation/smartshape-build:android
```
