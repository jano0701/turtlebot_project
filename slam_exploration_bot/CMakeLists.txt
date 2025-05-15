cmake_minimum_required(VERSION 3.0.2)
project(slam_exploration_bot)

## Compile as C++11 (optional für zukünftige C++-Nodes)
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
find_package(catkin REQUIRED COMPONENTS
  rospy
  std_msgs
  geometry_msgs
  nav_msgs
  sensor_msgs
  tf
  message_generation
)

###################################
## Declare ROS messages and services
###################################

add_message_files(
  FILES
  Frontier.msg
  FrontierList.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
)

###################################
## catkin specific configuration ##
###################################

catkin_package(
  CATKIN_DEPENDS message_runtime std_msgs geometry_msgs nav_msgs sensor_msgs tf
)

###########
## Build ##
###########

include_directories(
  ${catkin_INCLUDE_DIRS}
)

#############
## Install ##
#############

catkin_install_python(PROGRAMS
  scripts/frontier_search.py
  scripts/frontier_exploration.py
  scripts/pure_pursuit.py
  scripts/slam_test.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
