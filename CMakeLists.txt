cmake_minimum_required(VERSION 3.7)
project(robots)


set(CMAKE_CXX_STANDARD 20)
SET (CMAKE_C_COMPILER             "/usr/bin/clang++")
SET(CMAKE_C_FLAGS                "-Wall -fPIC -g -lstdc++fs -lfglut -Wl,-Bdynamic -LX11 -X11 -pthread -lpthread -O0 -o -lX11 -lm -I/usr/local/include -L/usr/local/lib -lSDL -fPIC")

SET(CFLAGS "-lX11")

find_package(SDL2 REQUIRED)
include_directories(SDL2Test ${SDL2_INCLUDE_DIRS})



add_executable(robots main.cpp graphics.c graphics.h direction.cpp loc.cpp util.cpp util.hpp anim.cpp anim.hpp world.cpp world.hpp perlin.c perlin.h bot.cpp bot.hpp resourceGraph.cpp resourceGraph.hpp navigate.cpp navigate.hpp innerWorld.cpp innerWorld.hpp block.cpp block.hpp timer.cpp timer.hpp explore.cpp explore.hpp path.cpp path.hpp)
target_link_libraries(robots ${SDL2_LIBRARIES} "-lX11" "-lpthread" "-lSDL" )