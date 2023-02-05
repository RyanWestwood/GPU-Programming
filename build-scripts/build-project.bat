cd ../
set working_dir=%cd%
set library_binaries=%working_dir%/library_binaries
set generator="-G Visual Studio 17 2022"

if not exist "build" mkdir build
cd build
cmake %generator% -A x64 -DCMAKE_BUILD_TYPE=Release -S ./../ -DCMAKE_PREFIX_PATH=%library_binaries%
cmake --build . --config Release --parallel
echo Project built successfully
pause