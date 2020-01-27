//
// Created by ben on 1/24/20.
//

#include "AppWindow.hpp"
#include "util.hpp"


// todo round up this constant and make changable
int scale = 32;

void *workerThread(void *args) {
    while (true)
    {
        AppWindowThread * worker = (AppWindowThread *) args;
        worker->lock("\t\t\tworker waiting for UI THREAD");
        World *world = worker->parent->world;

        if (world != NULL) {
//            // todo, handle remainders
//            cout << "Waiting on world" << endl;
//            cout << "Stopped waiting" << endl;

            int lastBlockIdx = world->width - 1;

            if ((lastBlockIdx - world->viewer->x) * scale >= world->viewer->width) {
                lastBlockIdx = world->viewer->x + world->viewer->width / scale - 1;
            }

            //for(int i = int(viewer->x); (i - viewer->x) * scale < viewer->width && i < width; i++) {

            // width of all the blocks to be displayed
            int totalBlocksWidth = (lastBlockIdx - world->viewer->x);

            // blocks to be drawn by each thread
            int blocksPerThread = totalBlocksWidth / worker->parent->workers.size();
            int startX = worker->idx * blocksPerThread + world->viewer->x;
            startX = max(0, startX);
            int endX = min((worker->idx + 1) * blocksPerThread + world->viewer->x, world->width);
            int startY = max(world->viewer->y, 0);
            int endY = world->height;

            //cout << "drawing" << endl;
            /*
            startX = world->viewer->x;
            startY = world->viewer->y;

            endX = world->width;
            endY = world->height;
             */



            world->draw(SDL_GetWindowSurface(worker->parent->window), startX, startY, endX, endY);
            worker->roundDone = true;
            //cout << "endDrawing" << endl;
        }

        // last worker needs to reset rest of workers for last time and call screen update
        if (worker->parent->allWorkersDone()) {
            worker->parent->resetAllWorkers();
            //cout << "UPDATING" << endl;
            updateScreen(worker->parent->window);

            // clear the screen for next time it is displayed
            worker->parent->clearScreen();
            // cout << "App window has given up world lock" << endl;
            world->unlock("\t\tApp window unlock world");
            //cout << "CLEARING" << endl;
        } else {
            cout << "Not all workers done" << endl;
        }
    }
}

AppWindowThread::AppWindowThread(int idx, AppWindow *parent, int totalThreads) : DynamicResource() {
    this->idx = idx;
    this->parent = parent;

    if(pthread_mutex_init(&updateLock, NULL) != 0) {
        printf("Couldn't create update uiLock\n");
        exit(0);
    }

    if ( pthread_create( &thread, NULL, workerThread, this) != 0) {
        printf("Couldn't create thread for screen\n");
        exit(0);
    }
    roundDone = false;
}



AppWindow::AppWindow(World *world, int width, int height, int threads) {

    screen = NULL;
    window = NULL;
    this->width = width;
    this->height = height;
    this->uiLock = new DynamicResource();
    this->uiLock->lock("\t\t\tapp window lock ui");

    if (SDL_Init(SDL_INIT_VIDEO) < 0 ) exit(EXIT_FAILURE);
    window = SDL_CreateWindow( "Program", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, width, height, SDL_WINDOW_SHOWN );
    if( window == NULL )
    {
        exit( 0 );
    }
    screen = SDL_GetWindowSurface( window );
    if(screen == NULL) {
        exit(0);
    }

    this->world = world;
    for(int i = 0; i < threads; i++) {
        AppWindowThread *worker = new AppWindowThread(i, this, threads);
        this->workers.push_back(worker);
    }
}

void AppWindow::update() {
    world->lock("\t\tapp window lock world");
    //cout << "App window has world lock" << endl;
    for(int i = 0; i < workers.size(); i++) {
        workers[i]->unlock("\t\t\tApp window unlock UI");
    }
}

bool AppWindow::allWorkersDone() {
    for(int i = 0; i < workers.size(); i++) {
        if(!workers[i]->roundDone)
            return false;
    }
    return true;
}

void AppWindow::resetAllWorkers() {
    for(int i = 0; i < workers.size(); i++)
        workers[i]->roundDone = false;
}

void AppWindow::clearScreen() {
    drawRect(screen, 0, 0, width, height, (Color) {0, 0, 0});
}

