mkdir -p build
cd build
cmake ../googlemock -DBUILD_SHARED_LIBS=ON
make
cd ..
cp -rf build/lib/*.so ../../output/Debug/lib
cp -rf build/lib/*.so ../../output/Release/lib
