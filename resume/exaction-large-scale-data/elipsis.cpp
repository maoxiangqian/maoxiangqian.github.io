#include <iostream>

template <typename... Args> void print(Args... args) {
  ((std::cout << args << "\n"), ...);
  return;
}

int main() { print("Hello", 123, true); }