//
// Created by ben on 1/24/20.
//

#include "DynamicResource.hpp"
#include <stdlib.h>
#include <stdio.h>

DynamicResource::DynamicResource() {
    //initialize the lock
    if(pthread_mutex_init(&rsrcLock, NULL) != 0) {
        printf("Couldn't create monitor.");
        exit(0);
    }
    if(pthread_cond_init(&cond, NULL) != 0) {
        printf("Couldn't create monitor.");
        exit(0);
    }
    locked = false;
}

void DynamicResource::lock() {
    pthread_mutex_lock(&rsrcLock);
    locked = true;
}

void DynamicResource::unlock() {
    pthread_mutex_unlock(&rsrcLock);
    locked = false;
}


void DynamicResource::wait() {
    pthread_cond_wait(&cond, &rsrcLock);
}

void DynamicResource::carryOn() {
    pthread_cond_signal(&cond);
}