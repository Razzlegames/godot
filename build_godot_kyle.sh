#!/bin/bash
mkdir platform/android/java/libs
mkdir platform/android/java/libs/armeabi
nice -n 19 scons platform=x11 && \
nice -n 19 scons platform=android target=release_debug && \
nice -n 19 scons platform=android target=release && \
#ln -fs $PWD/bin/libgodot.android.opt.armv7.neon.so platform/android/java/libs/armeabi/libgodot_android.so && \
cd platform/android/java && ./gradlew build --stacktrace && cd ../../../

