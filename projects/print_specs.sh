#!/bin/bash -ex
find . -type f -name *.rb -print | grep spec|  xargs  cat