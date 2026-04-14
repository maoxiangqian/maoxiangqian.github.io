#include <iostream>
#include <mutex>
#include <thread>

std::mutex mtx;

void counting(int n) {
  for (int i = n; i >= 0; i--) {
    std::lock_guard<std::mutex> lock(mtx);
    std::cout << std::this_thread::get_id() << ": " << i << std::endl;
    std::this_thread::sleep_for(std::chrono::milliseconds(1000));
  }
}

int main() {
  std::thread t1(counting, 5);
  std::thread t2(counting, 3);
  std::thread t3(counting, 4);
  t1.join();
  t2.join();
  t3.join();
}