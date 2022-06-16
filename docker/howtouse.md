# FAST_LIO

Original repository: https://github.com/hku-mars/FAST_LIO


## Build
```bash
cd FAST_LIO/docker
./build.sh
```

## Run

### On host:
```bash
roscore
```

```bash
rviz -d rviz_cfg/loam_livox.rviz
```

```bash
rosbag play outdoor_Mainbuilding_10hz_2020-12-24-16-38-00.bag
```

outdoor_Mainbuilding_10hz_2020-12-24-16-38-00.bag: https://drive.google.com/drive/folders/1YL5MQVYgAM8oAWUm7e3OGXZBPKkanmY1


### On docker image:
```bash
cd FAST_LIO/docker
./run.sh

roslaunch fast_lio mapping_avia.launch
```

![fast_lio](https://user-images.githubusercontent.com/31344317/174025257-7aa0834b-7fb8-4b49-a0d5-34f5253515a3.gif)
