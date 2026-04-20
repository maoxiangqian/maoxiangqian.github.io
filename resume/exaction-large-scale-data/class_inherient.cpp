#include <iostream>

class A {
  void doSomething() {}
  virtual void print() { std::cout << "A::print()" << std::endl; }
  const int a = 0;
  bool b;
  double d;
};

class B : public A {
  virtual void print() { std::cout << "B::print()" << std::endl; }
  int c;
};

class C : public B {
  virtual void print() { std::cout << "C::print()" << std::endl; }
  int e;
};

int main() {
  A a1;
  B b1;
  C c1;
}