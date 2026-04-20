#define CATCH_CONFIG_MAIN
#include "catch2/catch.hpp"
#include <fmt/core.h>
#include <fmt/format.h>
#include <string>

TEST_CASE("test fmt") {
  std::string name = "world";
  std::string result = fmt::format("Hello, {}!", name);
  REQUIRE(result == "Hello, world!");
}