# Package

version       = "0.1.0"
author        = "Zachary Carter"
description   = "FastNoiseSIMD (https://github.com/Auburns/FastNoiseSIMD) bindings"
license       = "MIT"
backend       = "cpp"

# Dependencies

requires "nim >= 0.18.0"
requires "nimgen >= 0.4.0"

var
  name = "cacophony"
  cmd = when defined(Windows): "cmd /c " else: ""

task setup, "Checkout and generate":
  if gorgeEx(cmd & "nimgen").exitCode != 0:
    withDir(".."):
      exec "nimble install nimgen -y"
  exec cmd & "nimgen " & name & ".cfg"

before install:
  setupTask()

task test, "Runs the test suite":
  exec "nim cpp -r tests/test1.nim"