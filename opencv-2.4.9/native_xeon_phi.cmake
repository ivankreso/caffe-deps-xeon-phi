SET(CMAKE_SYSTEM_NAME Linux)
SET(CMAKE_SYSTEM_PROCESSOR k1om)
SET(CMAKE_SYSTEM_VERSION 1)


#SET(_CMAKE_TOOLCHAIN_PREFIX  x86_64-k1om-linux-)

# where is the target environment 
SET(CMAKE_FIND_ROOT_PATH /opt/intel/composer_xe_2013_sp1/lib/mic/)
#SET(CMAKE_FIND_ROOT_PATH /usr/linux-k1om-4.7/linux-k1om)

# search for programs in the build host directories
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# specify the cross compiler
#SET(CMAKE_C_COMPILER icc)
#SET(CMAKE_CXX_COMPILER icpc)
#SET(CMAKE_C_FLAGS -mmic)
#SET(CMAKE_CXX_FLAGS -mmic)
