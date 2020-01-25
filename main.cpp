#include <stdlib.h>
#include <math.h>
#include "graphics.h"
#include "world.hpp"
#include "resourceGraph.hpp"
#include "util.hpp"
#define WIDTH 900
#define HEIGHT 700
#define DEPTH 32
#include <iostream>
#include "anim.hpp"
#include <SDL.h>
#include "AppWindow.hpp"

World *world;

void handleKeyUpEvent(SDL_Event *event) {
    switch(event->key.keysym.sym) {
        case SDLK_ESCAPE:
            exit(0);
            break;
        default:
            world->viewer->handleKeyUpEvent(event);
            break;
    }
}

void handleKeyDownEvent(SDL_Event *event) {
    world->viewer->handleKeyDownEvent(event);
}

void handleKeyEvent(SDL_Event *event) {
    while(SDL_PollEvent(event)) {
        switch (event->type)
        {
            case SDL_QUIT:
                break;
            case SDL_KEYDOWN:
                return handleKeyDownEvent(event);
                break;
            case SDL_KEYUP:
                return handleKeyUpEvent(event);
                break;
        }
    }
}

void drawWorld(void *args) {
    AppWindow *appWindow = (AppWindow *) args;
    appWindow->update();
}

int main() {


//    if (!(screen = SDL_SetVideoMode(WIDTH, HEIGHT, DEPTH, SDL_RESIZABLE|SDL_HWSURFACE)))
//    {
//        SDL_Quit();
//        exit(EXIT_FAILURE);
//    }




    SDL_Event event;

    AppWindow *appWindow = new AppWindow(NULL, WIDTH, HEIGHT);
    setAnimScreen(appWindow->screen);

    world = new World(256, 256);
    world->generateBots();

    appWindow->world = world;

    //ResourceGraph *resources = new ResourceGraph("resources.txt");
    //resources->print();

    // MAKE EVENT BUS OF TIMERS, things subscribe to world

    IntervalExecutorBus *appWindowDraw = new IntervalExecutorBus(appWindow);
    appWindowDraw->addIntervalExecutor(1/30, drawWorld);



    while(true) {

        //time_t now;
        //time(&now);

        //clearScreen(appWindow->screen);
        world->update();
        //appWindowDraw->world = appWindow;
        appWindowDraw->checkAndRunExecutors();
        //appWindow->update();
        //world->bots[0]->innerWorld->draw(appWindow->screen);
        //updateScreen(appWindow->window);
        handleKeyEvent(&event);
    }
}
