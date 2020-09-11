#!/bin/bash

SCRIPT=$(readlink -f "$0")
SCRIPT_PATH=$(dirname "$SCRIPT")
ROOT_DIR=$SCRIPT_PATH
DATA_DIR=$ROOT_DIR/data
BUILD_DIR=$ROOT_DIR/build

echo "BUILD..."
mkdir -p $BUILD_DIR
cd $BUILD_DIR
cmake ../ -G "Visual Studio 14 2015 Win64" -DCMAKE_CONFIGURATION_TYPES=RelWithDebInfo
cmake --build ./ --config RelWithDebInfo
cd $ROOT_DIR
#echo "RUN..."
#$BUILD_DIR/bin/inception3_basic -u $DATA_DIR/inception_v3.uff -i $DATA_DIR/panda.ppm -l $DATA_DIR/imagenet_slim_labels.txt
