FROM ros:melodic-ros-base-bionic
MAINTAINER Leonardo Edgar

# Install core linux tools
RUN apt-get update && apt-get install -y --no-install-recommends \
	apt-utils lsb-release sudo unzip wget ssh vim curl\
	&& rm -rf /var/lib/apt/lists/*

# Install python catkin tools
RUN apt-get update && apt-get install -y python-catkin-tools --no-install-recommends

# Install Python Unit Tests Library
RUN apt-get update && apt-get install -y python-pytest python-pytest-mock --no-install-recommends
