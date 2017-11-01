FROM alexisduque/android-ndk-gradle-docker:latest

# https://github.com/aerys/minko/blob/master/doc/tutorial/Compiling_the_SDK_for_Android.md
RUN mkdir -p /opt/android-sdk-linux/ndk && \
  ln -s /opt/android-ndk-r13b /opt/android-sdk-linux/ndk/android-ndk-r13b && \
  ln -s /opt/android-sdk-linux/build-tools/25.0.2/zipalign /opt/android-sdk-linux/tools/zipalign && \
  apt-get update && \
  apt-get install -y rsync ant

ENV ANDROID_ARCH="arm"
ENV ANDROID_API="19"
ENV ANDROID_TOOLCHAIN="arm-linux-androideabi-4.9"

RUN ${ANDROID_HOME}/ndk/$(ls ${ANDROID_HOME}/ndk | tail -n1)/build/tools/make_standalone_toolchain.py \
  --arch ${ANDROID_ARCH} \
  --api ${ANDROID_API} \
  --install-dir ${ANDROID_HOME}/toolchains/${ANDROID_TOOLCHAIN} \
  --force

RUN apt-get install -y python3-pip ca-certificates && pip3 install b2

CMD ["/bin/bash"]
