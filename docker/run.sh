#!/bin/bash
docker run --net=host -it --rm \
           -v $(realpath ..):/root/catkin_ws/src/FAST_LIO \
           $@ \
           fast_lio
