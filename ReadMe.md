# Creating-2D-laser-slam-from-scratch

## 测试

以下为每篇文章对应的节点如何运行，以及对应节点的功能简介
`rospack profile          # 让ros找到新的包` 
`source devel/setup.bash  #设置环境`


## 1 lesson1: 
### 1.1 如何遍历雷达数据
### 1.2 对雷达数据进行简单的特征提取

## 2 lesson2: 
### 2.1 使用PCL进行雷达数据的格式转换
### 2.2 使用PCL的ICP算法计算雷达的帧间坐标变换

## 3 lesson3
### 3.1 使用PL-ICP算法计算雷达的帧间坐标变换
### 3.2 基于PL-ICP的激光里程计

``` 录制一个没有tf的bag文件
    在3个终端中执行如下命令进行新bag的录制；或直接修改TF的odom坐标系,再将Rviz的Fixed Frame设置为odom_plicp
    # 终端1
    cd ~/bagfiles
    roscore
    # 终端2
    rosparam set use_sim_time true    # 使用仿真时间，如果设置为false,则使用walltime
    cd ~/bagfiles
    rosbag play --clock lesson1.bag
    # 终端3
    cd ~/bagfiles
    rosbag record /laser_scan /odom
    # odom_plicp为PL-ICP累加出来的激光雷达里程计；odom为通过小车自身编码器累加的里程计
```
## 4 lesson4
### 4.1 简单的栅格地图的构建
### 4.2 基于GMapping的栅格地图的构建
### 4.3 基于Hector的栅格地图的构建

## 5 lesson5
### 5.1 使用imu以及轮速计进行二维激光雷达数据的运动畸变校正

## 6 lesson6
### 6.1 基于Karto的前端实现
### 6.2 基于sparse-bundle-adjustment的后端优化与回环检测的实现
### 6.3 基于G2O的后端优化的实现
### 6.4 基于Ceres的后端优化的实现
### 6.5 基于GTSAM的后端优化的实现