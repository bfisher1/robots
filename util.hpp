//
// Created by ben on 1/23/20.
//

#ifndef ROBOTS_UTIL_HPP
#define ROBOTS_UTIL_HPP

#include <vector>
#include <string>
using namespace std;
double max(double x, double y);

double min(double x, double y);
double randNorm();
double randRange(double start, double end);
vector<string> *getFileNamesInPath(string dir);
bool stringEndsWith(string str, string end);


#endif //ROBOTS_UTIL_HPP
