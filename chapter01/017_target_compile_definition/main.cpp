#include "iostream"
#include "timer.h"

using namespace std;

int main() {
#ifdef DEBUG
  cout << "log in main" << endl;
#endif

  timer temp;
  cout << "Have a good day!" << endl;
}