FROM osrf/ros:kinetic-desktop

RUN apt-get update && apt-get install -y \
        g++ \
        google-mock \
        libboost-all-dev \
        libgflags-dev \
        libgoogle-glog-dev \
        liblua5.2-dev \
        libprotobuf-dev \
        libsuitesparse-dev \
        libwebp-dev \
        ninja-build \
        protobuf-compiler \
        python-sphinx && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /root

RUN git clone https://ceres-solver.googlesource.com/ceres-solver && \
    cd ceres-solver && \
    mkdir build && cd build && \
    cmake .. && \
    make -j"$(nproc)" install

# RUN mkdir -p catkin_ws/src && \
#     cd catkin_ws/src && \
#     git clone https://github.com/googlecartographer/cartographer.git && \
#
# ADD build.sh catkin_ws/src/ros_caffe/build.sh
# RUN ./catkin_ws/src/ros_caffe/build.sh
