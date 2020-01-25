//
// Created by ben on 1/24/20.
//
#include <pthread.h>

#ifndef ROBOTS_DYNAMICRESOURCE_H
#define ROBOTS_DYNAMICRESOURCE_H


class DynamicResource {
public:
    pthread_mutex_t rsrcLock;
    void lock();
    void unlock();
    bool locked;
    DynamicResource();
};



#endif //ROBOTS_DYNAMICRESOURCE_H
