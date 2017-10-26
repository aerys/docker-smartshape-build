# SmartShape Build


## Android

### Usage

```
docker run -dit -v `pwd`:/data --name smartshape-android aerysinnovation/smartshape-build:android
```

Then enter the container and build the engine:

```
docker exec -it smartshape-android bash
cd /data/smartshape-engine
export MINKO_HOME=`pwd`
${MINKO_HOME}/script/install_jni.sh
./script/solution_gmake_min.sh
make -j4 config=android_release
```

### Using ADB

https://github.com/sorccu/docker-adb#usage

This usage pattern shares the ADB server container's network with ADB client containers:

```
docker run -dit --privileged -v /dev/bus/usb:/dev/bus/usb -v `pwd`:/data --name smartshape-android aerysinnovation/smartshape-build:android
```

Then enter the container and build the engine:

```
docker exec -it smartshape-android bash
cd /data/smartshape-engine
export MINKO_HOME=`pwd`
${MINKO_HOME}/script/install_jni.sh
./script/solution_gmake_min.sh
make -j4 config=android_release
```

Because the container is running privileged mode, you might want to `chown` the build artifacts.
