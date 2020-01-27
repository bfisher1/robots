//
// Created by ben on 1/24/20.
//
#include <SDL.h>
#include <pthread.h>
#include <vector>
#include "world.hpp"

#ifndef ROBOTS_APPWINDOW_HPP
#define ROBOTS_APPWINDOW_HPP

class AppWindow;

class AppWindowThread : public DynamicResource {
    public:
        int idx;
        pthread_t thread;
        pthread_mutex_t updateLock;
        AppWindow *parent;
        bool roundDone;

        AppWindowThread(int idx, AppWindow *parent, int totalThreads);
};

class AppWindow {
public:
    SDL_Window *window;
    SDL_Surface  *screen;
    World *world;
    int width, height;
    std::vector <AppWindowThread*> workers;
    DynamicResource *uiLock;
    // only support for 1 thread right now
    AppWindow(World *world, int width, int height, int threads=1);
    void clearScreen();
    void update();
    void resetAllWorkers();
    bool allWorkersDone();
};


#endif //ROBOTS_APPWINDOW_HPP
