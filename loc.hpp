//
// Created by ben on 1/23/20.
//

#ifndef ROBOTS_LOC_HPP
#define ROBOTS_LOC_HPP
#include <string>

using namespace std;

class Loc {
public:
    double x;
    double y;
    Loc(double x, double y);
    Loc(const Loc &other);
    Loc();
    static void setBoundingBox(Loc src, Loc target, Loc& topLeft, Loc& bottomRight);
    static bool sameLoc(Loc loc1, Loc loc2);
    static bool distWithin(Loc loc1, Loc loc2, double dist);
    static double dist(Loc loc1, Loc loc2);
    string toString();
    Loc plus(Loc loc);
};
#endif //ROBOTS_LOC_HPP
