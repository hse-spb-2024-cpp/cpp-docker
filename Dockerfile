FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

# FIXME: Specify versions
RUN apt-get update \
 && apt-get install --no-install-recommends -y build-essential g++-12 valgrind clang-format-15 clang-tidy-15 cppcheck clang-15 libc++-15-dev libc++abi-15-dev libboost-all-dev netcat-openbsd git make cmake gdb \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
 
