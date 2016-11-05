#!/bin/sh

LOCAL_PATH=`dirname $0`
LOCAL_PATH=`cd $LOCAL_PATH && pwd`

ln -sf libiconv.so $LOCAL_PATH/../../../obj/local/$1/libiconv.so.2
ln -sf libglshim.a $LOCAL_PATH/../../../obj/local/$1/libGL.a
#ln -s ~/s25client/driver/audio/SDL $LOCAL_PATH/../../audioSDL
#ln -s ~/s25client/driver/video/SDL $LOCAL_PATH/../../videoSDL
#ln -s application/s25rttr/drivers/audioSDL ../../audioSDL
#ln -s application/s25rttr/drivers/videoSDL ../../videoSDL

JOBS=1

../setEnvironment-$1.sh sh -c "cd s25client && make --makefile=Makefile-android -j$JOBS" && mv -f s25client/s25rttr_client libapplication-$1.so



