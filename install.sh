#!/bin/bash

### Installing Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install python3

brew unlink python
brew install --ignore-dependencies https://raw.githubusercontent.com/Homebrew/homebrew-core/f2a764ef944b1080be64bd88dca9a1d80130c558/Formula/python.rb

brew switch python 3.6.5

python3 --version

cd Desktop

mkdir x_hec_reco
cd x_hec_reco

pip3 install virtualenv

virtualenv reco_env

source reco_env/bin/activate

curl -LOk https://github.com/BenoCharlo/face_reco/archive/master.zip

unzip master.zip
rm -rf master.zip

cd face_reco-master

brew cask install xquartz
brew install gtk+3 boost
brew install dlib
brew install pkg-config
brew install hdf5
pkg-config --libs --cflags dlib-1

pip3 install Cython

pip3 install -r requirements.txt
