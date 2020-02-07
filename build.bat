mkdir .\build
cd .\build
cmake ..\googlemock -DBUILD_SHARED_LIBS=ON
msbuild .\gmock.sln -target:gtest,gtest_main,gmock,gmock_main -p:configuration="debug"
msbuild .\gmock.sln -target:gtest,gtest_main,gmock,gmock_main -p:configuration="release"
cd ..
xcopy /Y build\lib\Debug\*.lib ..\..\output\Debug\bin
xcopy /Y build\bin\Debug\*.dll ..\..\output\Debug\bin
xcopy /Y build\lib\Release\*.lib ..\..\output\Release\bin
xcopy /Y build\bin\Release\*.dll ..\..\output\Release\bin