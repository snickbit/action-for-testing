#!/bin/bash

__LOADED=1
export __LOADED



debug () {
  if [[ "$DEBUG" == "true" ]]; then
    echo -e "\033[0;33m[DEBUG]\033[0m $1"
  fi
}
export -f debug

info() {
  echo -e "\033[0;36m[INFO]\033[0m $1"
}
export -f info

warn() {
  echo -e "\033[0;33m[WARN]\033[0m $1"
}
export -f warn

error() {
  echo -e "\033[0;31m[ERROR]\033[0m $1"
}
export -f error

success () {
  echo -e "\033[0;32m[SUCCESS]\033[0m $1"
}
export -f success

log () {
  echo -e "\033[0;37m[LOG]\033[0m $1"
}
export -f log
