cd ../
set working_dir=%cd%
set external_dir=%working_dir%/external
set library_binaries=%working_dir%/library_binaries
set generator="-G Visual Studio 17 2022"

echo Creating Home for libs
cd %working_dir%
if not exist "library_binaries" mkdir library_binaries
cd external
cmake %generator% -A x64 -DCMAKE_BUILD_TYPE=Release -S %external_dir%/OpenCL -B %external_dir%/OpenCL/build
cmake --build %external_dir%/OpenCL/build --config Release --parallel
cmake --install %external_dir%/OpenCL/build --prefix %library_binaries% --config Release 
cd ../

if not exist "build" mkdir build
cd build
cmake %generator% -A x64 -DCMAKE_BUILD_TYPE=Release -S ./../ -DCMAKE_PREFIX_PATH=%library_binaries%
cmake --build . --config Release --parallel
echo Project built successfully
pause