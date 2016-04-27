#!/bin/sh
hi() {
  echo hello world
}

ff() {
  find ~ -type f -name "$1*"
}

ft() {
  grep -nr '/Users/samhouston/Desktop' -e "$1"
}
