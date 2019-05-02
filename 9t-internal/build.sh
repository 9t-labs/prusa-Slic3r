#!/bin/sh
# run from same directory as script
cd ../
rm -rf cmake-build-release
mkdir cmake-build-release
cd cmake-build-release
cmake .. -DBoost_USE_STATIC_RUNTIME=ON -DCMAKE_BUILD_TYPE=Release -DSLIC3R_STATIC=1 -DSLIC3R_GUI=0 -DSLIC3R_PCH=0
cmake --build $PWD --target slic3r -- -j 8
# build finished

# copy for moving to lambda
rm -r ../copy-to-lambda
mkdir ../copy-to-lambda
cp src/slic3r-console ../copy-to-lambda