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

void clearScreen(SDL_Surface *screen) {
    drawRect(screen, 0, 0, WIDTH, HEIGHT, (Color) {0, 0, 0});
}

int main() {
    SDL_Surface *screen = NULL;
    SDL_Window* window = NULL;
    SDL_Event event;

    if (SDL_Init(SDL_INIT_VIDEO) < 0 ) exit(EXIT_FAILURE);

//    if (!(screen = SDL_SetVideoMode(WIDTH, HEIGHT, DEPTH, SDL_RESIZABLE|SDL_HWSURFACE)))
//    {
//        SDL_Quit();
//        exit(EXIT_FAILURE);
//    }

    window = SDL_CreateWindow( "Program", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, WIDTH, HEIGHT, SDL_WINDOW_SHOWN );
    if( window == NULL )
    {
        exit( 0 );
    }
    screen = SDL_GetWindowSurface( window );
    if(screen == NULL) {
        exit(0);
    }
    setAnimScreen(screen);

    world = new World(256, 256);
    world->generateBots();

    //ResourceGraph *resources = new ResourceGraph("resources.txt");
    //resources->print();

    // MAKE EVENT BUS OF TIMERS, things subscribe to world

    while(true) {
        //Get window surface


        //Fill the surface white
       // SDL_FillRect( screen, NULL, SDL_MapRGB( screen->format, 0xFF, 0xFF, 0xFF ) );

        clearScreen(screen);
        world->update();
        //world->draw(screen);
        world->bots[0]->innerWorld->draw(screen);
        //updateScreen(window);
        handleKeyEvent(&event);
    }

    //Destroy window
    SDL_DestroyWindow( window );

    //Quit SDL subsystems
    SDL_Quit();
}
