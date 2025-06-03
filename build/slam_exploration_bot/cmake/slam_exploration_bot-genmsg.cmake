# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "slam_exploration_bot: 2 messages, 0 services")

set(MSG_I_FLAGS "-Islam_exploration_bot:/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(slam_exploration_bot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/Frontier.msg" NAME_WE)
add_custom_target(_slam_exploration_bot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slam_exploration_bot" "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/Frontier.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/FrontierList.msg" NAME_WE)
add_custom_target(_slam_exploration_bot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "slam_exploration_bot" "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/FrontierList.msg" "slam_exploration_bot/Frontier:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(slam_exploration_bot
  "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/Frontier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_exploration_bot
)
_generate_msg_cpp(slam_exploration_bot
  "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/FrontierList.msg"
  "${MSG_I_FLAGS}"
  "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/Frontier.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_exploration_bot
)

### Generating Services

### Generating Module File
_generate_module_cpp(slam_exploration_bot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_exploration_bot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(slam_exploration_bot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(slam_exploration_bot_generate_messages slam_exploration_bot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/Frontier.msg" NAME_WE)
add_dependencies(slam_exploration_bot_generate_messages_cpp _slam_exploration_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/FrontierList.msg" NAME_WE)
add_dependencies(slam_exploration_bot_generate_messages_cpp _slam_exploration_bot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(slam_exploration_bot_gencpp)
add_dependencies(slam_exploration_bot_gencpp slam_exploration_bot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS slam_exploration_bot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(slam_exploration_bot
  "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/Frontier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_exploration_bot
)
_generate_msg_eus(slam_exploration_bot
  "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/FrontierList.msg"
  "${MSG_I_FLAGS}"
  "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/Frontier.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_exploration_bot
)

### Generating Services

### Generating Module File
_generate_module_eus(slam_exploration_bot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_exploration_bot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(slam_exploration_bot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(slam_exploration_bot_generate_messages slam_exploration_bot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/Frontier.msg" NAME_WE)
add_dependencies(slam_exploration_bot_generate_messages_eus _slam_exploration_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/FrontierList.msg" NAME_WE)
add_dependencies(slam_exploration_bot_generate_messages_eus _slam_exploration_bot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(slam_exploration_bot_geneus)
add_dependencies(slam_exploration_bot_geneus slam_exploration_bot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS slam_exploration_bot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(slam_exploration_bot
  "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/Frontier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_exploration_bot
)
_generate_msg_lisp(slam_exploration_bot
  "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/FrontierList.msg"
  "${MSG_I_FLAGS}"
  "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/Frontier.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_exploration_bot
)

### Generating Services

### Generating Module File
_generate_module_lisp(slam_exploration_bot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_exploration_bot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(slam_exploration_bot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(slam_exploration_bot_generate_messages slam_exploration_bot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/Frontier.msg" NAME_WE)
add_dependencies(slam_exploration_bot_generate_messages_lisp _slam_exploration_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/FrontierList.msg" NAME_WE)
add_dependencies(slam_exploration_bot_generate_messages_lisp _slam_exploration_bot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(slam_exploration_bot_genlisp)
add_dependencies(slam_exploration_bot_genlisp slam_exploration_bot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS slam_exploration_bot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(slam_exploration_bot
  "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/Frontier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_exploration_bot
)
_generate_msg_nodejs(slam_exploration_bot
  "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/FrontierList.msg"
  "${MSG_I_FLAGS}"
  "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/Frontier.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_exploration_bot
)

### Generating Services

### Generating Module File
_generate_module_nodejs(slam_exploration_bot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_exploration_bot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(slam_exploration_bot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(slam_exploration_bot_generate_messages slam_exploration_bot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/Frontier.msg" NAME_WE)
add_dependencies(slam_exploration_bot_generate_messages_nodejs _slam_exploration_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/FrontierList.msg" NAME_WE)
add_dependencies(slam_exploration_bot_generate_messages_nodejs _slam_exploration_bot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(slam_exploration_bot_gennodejs)
add_dependencies(slam_exploration_bot_gennodejs slam_exploration_bot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS slam_exploration_bot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(slam_exploration_bot
  "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/Frontier.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_exploration_bot
)
_generate_msg_py(slam_exploration_bot
  "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/FrontierList.msg"
  "${MSG_I_FLAGS}"
  "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/Frontier.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_exploration_bot
)

### Generating Services

### Generating Module File
_generate_module_py(slam_exploration_bot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_exploration_bot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(slam_exploration_bot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(slam_exploration_bot_generate_messages slam_exploration_bot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/Frontier.msg" NAME_WE)
add_dependencies(slam_exploration_bot_generate_messages_py _slam_exploration_bot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/kis_projekt/catkin_ws/src/slam_exploration_bot/msg/FrontierList.msg" NAME_WE)
add_dependencies(slam_exploration_bot_generate_messages_py _slam_exploration_bot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(slam_exploration_bot_genpy)
add_dependencies(slam_exploration_bot_genpy slam_exploration_bot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS slam_exploration_bot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_exploration_bot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/slam_exploration_bot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(slam_exploration_bot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(slam_exploration_bot_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_exploration_bot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/slam_exploration_bot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(slam_exploration_bot_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(slam_exploration_bot_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_exploration_bot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/slam_exploration_bot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(slam_exploration_bot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(slam_exploration_bot_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_exploration_bot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/slam_exploration_bot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(slam_exploration_bot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(slam_exploration_bot_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_exploration_bot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_exploration_bot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/slam_exploration_bot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(slam_exploration_bot_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(slam_exploration_bot_generate_messages_py geometry_msgs_generate_messages_py)
endif()
