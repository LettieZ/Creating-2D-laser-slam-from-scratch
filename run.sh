rosbag play --clock bag_name.bag  #默认/clock话题频率100HZ 指定频率在--clock后增加--hz 200
rosmsg info geometry_msgs/TransformStamped
rospack profile # 让ros找到新的包