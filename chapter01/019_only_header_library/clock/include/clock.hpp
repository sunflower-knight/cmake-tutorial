#pragma once

class clock
{
  clock()
  {
#ifdef DEBUG
            cout << "clock construct" << endl;
#endif
  };
};