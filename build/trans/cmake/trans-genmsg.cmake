# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "trans: 3 messages, 0 services")

set(MSG_I_FLAGS "-Itrans:/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(trans_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/input.msg" NAME_WE)
add_custom_target(_trans_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trans" "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/input.msg" ""
)

get_filename_component(_filename "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/output.msg" NAME_WE)
add_custom_target(_trans_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trans" "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/output.msg" ""
)

get_filename_component(_filename "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/arm_joint_angles.msg" NAME_WE)
add_custom_target(_trans_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "trans" "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/arm_joint_angles.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(trans
  "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trans
)
_generate_msg_cpp(trans
  "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trans
)
_generate_msg_cpp(trans
  "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/arm_joint_angles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trans
)

### Generating Services

### Generating Module File
_generate_module_cpp(trans
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trans
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(trans_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(trans_generate_messages trans_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/input.msg" NAME_WE)
add_dependencies(trans_generate_messages_cpp _trans_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/output.msg" NAME_WE)
add_dependencies(trans_generate_messages_cpp _trans_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/arm_joint_angles.msg" NAME_WE)
add_dependencies(trans_generate_messages_cpp _trans_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trans_gencpp)
add_dependencies(trans_gencpp trans_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trans_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(trans
  "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trans
)
_generate_msg_eus(trans
  "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trans
)
_generate_msg_eus(trans
  "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/arm_joint_angles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trans
)

### Generating Services

### Generating Module File
_generate_module_eus(trans
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trans
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(trans_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(trans_generate_messages trans_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/input.msg" NAME_WE)
add_dependencies(trans_generate_messages_eus _trans_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/output.msg" NAME_WE)
add_dependencies(trans_generate_messages_eus _trans_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/arm_joint_angles.msg" NAME_WE)
add_dependencies(trans_generate_messages_eus _trans_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trans_geneus)
add_dependencies(trans_geneus trans_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trans_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(trans
  "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trans
)
_generate_msg_lisp(trans
  "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trans
)
_generate_msg_lisp(trans
  "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/arm_joint_angles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trans
)

### Generating Services

### Generating Module File
_generate_module_lisp(trans
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trans
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(trans_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(trans_generate_messages trans_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/input.msg" NAME_WE)
add_dependencies(trans_generate_messages_lisp _trans_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/output.msg" NAME_WE)
add_dependencies(trans_generate_messages_lisp _trans_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/arm_joint_angles.msg" NAME_WE)
add_dependencies(trans_generate_messages_lisp _trans_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trans_genlisp)
add_dependencies(trans_genlisp trans_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trans_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(trans
  "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trans
)
_generate_msg_nodejs(trans
  "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trans
)
_generate_msg_nodejs(trans
  "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/arm_joint_angles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trans
)

### Generating Services

### Generating Module File
_generate_module_nodejs(trans
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trans
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(trans_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(trans_generate_messages trans_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/input.msg" NAME_WE)
add_dependencies(trans_generate_messages_nodejs _trans_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/output.msg" NAME_WE)
add_dependencies(trans_generate_messages_nodejs _trans_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/arm_joint_angles.msg" NAME_WE)
add_dependencies(trans_generate_messages_nodejs _trans_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trans_gennodejs)
add_dependencies(trans_gennodejs trans_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trans_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(trans
  "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trans
)
_generate_msg_py(trans
  "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/output.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trans
)
_generate_msg_py(trans
  "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/arm_joint_angles.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trans
)

### Generating Services

### Generating Module File
_generate_module_py(trans
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trans
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(trans_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(trans_generate_messages trans_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/input.msg" NAME_WE)
add_dependencies(trans_generate_messages_py _trans_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/output.msg" NAME_WE)
add_dependencies(trans_generate_messages_py _trans_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/emnet/Desktop/Robotics/arm_ws/src/trans/msg/arm_joint_angles.msg" NAME_WE)
add_dependencies(trans_generate_messages_py _trans_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(trans_genpy)
add_dependencies(trans_genpy trans_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS trans_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trans)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/trans
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(trans_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trans)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/trans
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(trans_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trans)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/trans
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(trans_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trans)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/trans
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(trans_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trans)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trans\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/trans
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(trans_generate_messages_py std_msgs_generate_messages_py)
endif()