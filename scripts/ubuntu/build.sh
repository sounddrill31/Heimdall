#!/bin/bash

  # Install dependencies
  sudo apt update
  sudo apt install -y build-essential cmake zlib1g-dev libusb-1.0-0-dev qtbase5-dev

# Clone the Heimdall repository
#if [ ! -d "Heimdall" ]; then
#  git clone https://github.com/Benjamin-Dobell/Heimdall.git
#fi

# Create a new directory for the build
#mkdir -p Heimdall/build
#cd Heimdall/build
mkdir -p build
cd build

# Configure the build for Linux
cmake -DCMAKE_BUILD_TYPE=Release ..

# Build Heimdall for Linux
make

# Configure the build for Windows
#cmake -DCMAKE_C_COMPILER=/usr/bin/x86_64-w64-mingw32-gcc -DCMAKE_CXX_COMPILER=/usr/bin/x86_64-w64-mingw32-g++ ..

# Build Heimdall for Windows
#make

# Configure the build for macOS
#cmake -DCMAKE_SYSTEM_NAME=Darwin ..

# Build Heimdall for macOS
#make