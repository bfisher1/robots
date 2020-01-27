//
// Created by ben on 1/24/20.
//

#include "DynamicResource.hpp"
#include <stdlib.h>
#include <stdio.h>
#include <iostream>

DynamicResource::DynamicResource() {
    //initialize the uiLock
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

void DynamicResource::lock(std::string locker) {
    std::cout << locker << " WAIT_FOR_LOCK" << std::endl;
    pthread_mutex_lock(&rsrcLock);
    std::cout << locker << " LOCKED" << std::endl;
    locked = true;
}


void DynamicResource::unlock(std::string locker) {
    std::cout << locker << " UNLOCKING" << std::endl;
    pthread_mutex_unlock(&rsrcLock);
    locked = false;
}

/*
void DynamicResource::wait() {
    pthread_cond_wait(&cond, &rsrcLock);
}

void DynamicResource::carryOn() {
    pthread_cond_signal(&cond);
}
*/
