FROM ubuntu:22.04

ARG DEBIAN_FRONTEND=noninteractive

# FIXME: Specify versions
RUN apt-get update \
 && apt-get install --no-install-recommends -y build-essential g++-12 valgrind clang-format-14 clang-tidy-14 cppcheck clang-14 libc++-14-dev libc++abi-14-dev libboost-all-dev netcat-openbsd git make cmake gdb \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
 