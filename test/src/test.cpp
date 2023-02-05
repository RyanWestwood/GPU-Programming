#include <iostream>
#include <cmath>

int main() {
  double x = sqrt(9);
  if (x != 3) {
    std::cerr << "Unexpected result: " << x << std::endl;
    return 1;
  }
  return 0;
}