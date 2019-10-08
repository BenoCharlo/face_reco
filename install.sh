#!/bin/bash

cd Desktop

curl -LOk https://github.com/BenoCharlo/face_reco/archive/master.zip

unzip master.zip

cd face_reco-master

brew cask install xquartz
brew install gtk+3 boost
brew install dlib
brew install pkg-config
pkg-config --libs --cflags dlib-1
