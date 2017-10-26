# SmartShape Build


## Android

### Usage

```
docker run -dit -v "$PWD":/data --name smartshape-android aerysinnovation/smartshape-build:android
```

Then enter the container and build the engine:

```
docker exec -it smartshape-android bash
cd /data/smartshape-engine
export MINKO_HOME="$PWD"
${MINKO_HOME}/script/install_jni.sh
./script/solution_gmake_min.sh
make -j4 config=android_release
```

### Using ADB

https://github.com/sorccu/docker-adb#usage

This usage pattern shares the ADB server container's network with ADB client containers:

```
docker run -dit --privileged -v /dev/bus/usb:/dev/bus/usb -v "$PWD":/data --name smartshape-android aerysinnovation/smartshape-build:android
```

Then enter the container and build the engine:

```
docker exec -it smartshape-android bash
cd /data/smartshape-engine
export MINKO_HOME="$PWD"
${MINKO_HOME}/script/install_jni.sh
./script/solution_gmake_min.sh
make -j4 config=android_release
```

Because the container is running privileged mode, you might want to `chown` the build artifacts.


### Use Docker on Windows with cmder

Install docker toolbox: https://docs.docker.com/toolbox/toolbox_install_windows/
The installation path must *not* contain spaces.

Install cmder: http://cmder.net/
Launch cmder.

In the bottom right corner, click on the little arrow next to the green '+' and select `Setup tasks...`.
A new window will show up.
Then add a new predefined task by clicking on the '+'.

Rename it 'docker'
In task parameter, you can add `/icon "path\to\DockerToolbox\docker-quickstart-terminal.ico"`.
And in commands, you have to add:
```
"path\to\cmder\vendor\git-for-windows\bin\bash.exe --login -i "path\to\DockerToolbox\start.sh" -new_console:d:"path\to\DockerToolbox""
```

Then save settings.

Reclick on the bottom right corner arrow and choose `docker`.
Wait until the end.
Check on VirtualBox if the virtual machine 'default' is running. Docker is running on it.
Now you can use docker on cmder.

You can see the procedure here: https://goblincoding.com/2016/05/24/adding-docker-terminal-to-cmder-on-windows/
