cmake_minimum_required(VERSION 3.15)
project(ChainReactionGame)
set(CMAKE_CXX_STANDARD 14)

set(SFML_DIR /home/alg/Documents/SFML-2.5.1/lib/cmake/SFML)
#set(SFML_STATIC_LIBRARIES TRUE)
find_package(SFML 2.4 COMPONENTS system window graphics REQUIRED)

include_directories(${SFML_INCLUDE_DIR} /home/alg/Documents/SFML-2.5.1/include/)


set(ClassFiles Box.cpp Box.h Team.h )
set(Sfml_libraries sfml-graphics sfml-audio )

add_executable(ChainReactionGame main.cpp ${ClassFiles})
add_executable(shapes shapes.cpp Box.cpp Box.h )

target_link_libraries(ChainReactionGame sfml-graphics sfml-audio )
target_link_libraries(shapes sfml-graphics sfml-audio)