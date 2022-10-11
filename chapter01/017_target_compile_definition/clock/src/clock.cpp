#include <iostream>

#include "clock.h"
using namespace std;

clock::clock()
{
#ifdef DEBUG
  cout << "clock construct" << endl;
#endif
}