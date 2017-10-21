FROM alexisduque/android-ndk-gradle-docker:latest

# https://github.com/aerys/minko/blob/master/doc/tutorial/Compiling_the_SDK_for_Android.md
RUN mkdir -p /opt/android-sdk-linux/ndk && \
  ln -s /opt/android-ndk-r13b /opt/android-sdk-linux/ndk/android-ndk-r13b && \
  ln -s /opt/android-sdk-linux/build-tools/25.0.2/zipalign /opt/android-sdk-linux/tools/zipalign

RUN apt-get update && \
  apt-get install -y python-pip ca-certificates && pip install b2

CMD ["/bin/bash"]
