# Package

version       = "0.1.0"
author        = "Zachary Carter"
description   = "FastNoiseSIMD (https://github.com/Auburns/FastNoiseSIMD) bindings"
license       = "MIT"
backend       = "cpp"

# Dependencies

requires "nim >= 0.18.0"

task test, "Runs the test suite":
  exec "nim cpp -r tests/test1.nim"