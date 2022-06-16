FROM ros:noetic

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
   git wget nano unzip build-essential libomp-dev python3-pip \
   libmetis-dev ros-noetic-pcl-ros ros-noetic-eigen-conversions \
 && apt-get clean && rm -rf /var/lib/apt/lists/*


WORKDIR /root
RUN git clone https://github.com/Livox-SDK/Livox-SDK.git

WORKDIR /root/Livox-SDK/build
RUN cmake .. && make -j$(nproc) install

RUN mkdir -p /root/catkin_ws/src
WORKDIR /root/catkin_ws/src
RUN /bin/bash -c '. /opt/ros/noetic/setup.bash; catkin_init_workspace'


RUN git clone https://github.com/Livox-SDK/livox_ros_driver.git
COPY . /root/catkin_ws/src/FAST_LIO

WORKDIR /root/catkin_ws
RUN /bin/bash -c '. /opt/ros/noetic/setup.bash; catkin_make -DCMAKE_BUILD_TYPE=Release'

RUN sed -i "6i source \"/root/catkin_ws/devel/setup.bash\"" /ros_entrypoint.sh

WORKDIR /root/catkin_ws/src/FAST_LIO

ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]
