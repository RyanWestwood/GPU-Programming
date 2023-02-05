cd ../
set working_dir=%cd%
set library_binaries=%working_dir%/library_binaries
set generator="-G Visual Studio 17 2022"

cd test
cmake %generator% -A x64 -DCMAKE_BUILD_TYPE=Release -S ./ -B "build" -DCMAKE_PREFIX_PATH=%library_binaries%
cmake --build build --config Release --parallel
cd build
ctest
pause