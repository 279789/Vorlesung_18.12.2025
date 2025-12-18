# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/home/phil/Programieren/Objektorientierung/repos/Vorlesung_18.12.2025/fetch_demo/build/_deps/stemgraph_cmake_lib-src")
  file(MAKE_DIRECTORY "/home/phil/Programieren/Objektorientierung/repos/Vorlesung_18.12.2025/fetch_demo/build/_deps/stemgraph_cmake_lib-src")
endif()
file(MAKE_DIRECTORY
  "/home/phil/Programieren/Objektorientierung/repos/Vorlesung_18.12.2025/fetch_demo/build/_deps/stemgraph_cmake_lib-build"
  "/home/phil/Programieren/Objektorientierung/repos/Vorlesung_18.12.2025/fetch_demo/build/_deps/stemgraph_cmake_lib-subbuild/stemgraph_cmake_lib-populate-prefix"
  "/home/phil/Programieren/Objektorientierung/repos/Vorlesung_18.12.2025/fetch_demo/build/_deps/stemgraph_cmake_lib-subbuild/stemgraph_cmake_lib-populate-prefix/tmp"
  "/home/phil/Programieren/Objektorientierung/repos/Vorlesung_18.12.2025/fetch_demo/build/_deps/stemgraph_cmake_lib-subbuild/stemgraph_cmake_lib-populate-prefix/src/stemgraph_cmake_lib-populate-stamp"
  "/home/phil/Programieren/Objektorientierung/repos/Vorlesung_18.12.2025/fetch_demo/build/_deps/stemgraph_cmake_lib-subbuild/stemgraph_cmake_lib-populate-prefix/src"
  "/home/phil/Programieren/Objektorientierung/repos/Vorlesung_18.12.2025/fetch_demo/build/_deps/stemgraph_cmake_lib-subbuild/stemgraph_cmake_lib-populate-prefix/src/stemgraph_cmake_lib-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/phil/Programieren/Objektorientierung/repos/Vorlesung_18.12.2025/fetch_demo/build/_deps/stemgraph_cmake_lib-subbuild/stemgraph_cmake_lib-populate-prefix/src/stemgraph_cmake_lib-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/phil/Programieren/Objektorientierung/repos/Vorlesung_18.12.2025/fetch_demo/build/_deps/stemgraph_cmake_lib-subbuild/stemgraph_cmake_lib-populate-prefix/src/stemgraph_cmake_lib-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
