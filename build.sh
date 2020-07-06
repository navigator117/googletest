scl enable devtoolset-7
mkdir -p build
cd build
cmake ../googlemock -DBUILD_SHARED_LIBS=ON
make
cd ..
mkdir -p ../../output/Debug/lib
mkdir -p ../../output/Release/lib
cp -rf build/lib/*.so ../../output/Debug/lib
cp -rf build/lib/*.so ../../output/Release/lib
