# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "e2e_hpc: 3 messages, 0 services")

set(MSG_I_FLAGS "-Ie2e_hpc:/home/hvnbody/catkin_ws/src/e2e_hpc/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(e2e_hpc_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Door.msg" NAME_WE)
add_custom_target(_e2e_hpc_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "e2e_hpc" "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Door.msg" ""
)

get_filename_component(_filename "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Connection.msg" NAME_WE)
add_custom_target(_e2e_hpc_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "e2e_hpc" "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Connection.msg" ""
)

get_filename_component(_filename "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Ranging.msg" NAME_WE)
add_custom_target(_e2e_hpc_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "e2e_hpc" "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Ranging.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(e2e_hpc
  "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Door.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/e2e_hpc
)
_generate_msg_cpp(e2e_hpc
  "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Connection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/e2e_hpc
)
_generate_msg_cpp(e2e_hpc
  "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Ranging.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/e2e_hpc
)

### Generating Services

### Generating Module File
_generate_module_cpp(e2e_hpc
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/e2e_hpc
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(e2e_hpc_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(e2e_hpc_generate_messages e2e_hpc_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Door.msg" NAME_WE)
add_dependencies(e2e_hpc_generate_messages_cpp _e2e_hpc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Connection.msg" NAME_WE)
add_dependencies(e2e_hpc_generate_messages_cpp _e2e_hpc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Ranging.msg" NAME_WE)
add_dependencies(e2e_hpc_generate_messages_cpp _e2e_hpc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(e2e_hpc_gencpp)
add_dependencies(e2e_hpc_gencpp e2e_hpc_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS e2e_hpc_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(e2e_hpc
  "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Door.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/e2e_hpc
)
_generate_msg_eus(e2e_hpc
  "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Connection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/e2e_hpc
)
_generate_msg_eus(e2e_hpc
  "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Ranging.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/e2e_hpc
)

### Generating Services

### Generating Module File
_generate_module_eus(e2e_hpc
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/e2e_hpc
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(e2e_hpc_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(e2e_hpc_generate_messages e2e_hpc_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Door.msg" NAME_WE)
add_dependencies(e2e_hpc_generate_messages_eus _e2e_hpc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Connection.msg" NAME_WE)
add_dependencies(e2e_hpc_generate_messages_eus _e2e_hpc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Ranging.msg" NAME_WE)
add_dependencies(e2e_hpc_generate_messages_eus _e2e_hpc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(e2e_hpc_geneus)
add_dependencies(e2e_hpc_geneus e2e_hpc_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS e2e_hpc_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(e2e_hpc
  "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Door.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/e2e_hpc
)
_generate_msg_lisp(e2e_hpc
  "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Connection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/e2e_hpc
)
_generate_msg_lisp(e2e_hpc
  "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Ranging.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/e2e_hpc
)

### Generating Services

### Generating Module File
_generate_module_lisp(e2e_hpc
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/e2e_hpc
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(e2e_hpc_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(e2e_hpc_generate_messages e2e_hpc_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Door.msg" NAME_WE)
add_dependencies(e2e_hpc_generate_messages_lisp _e2e_hpc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Connection.msg" NAME_WE)
add_dependencies(e2e_hpc_generate_messages_lisp _e2e_hpc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Ranging.msg" NAME_WE)
add_dependencies(e2e_hpc_generate_messages_lisp _e2e_hpc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(e2e_hpc_genlisp)
add_dependencies(e2e_hpc_genlisp e2e_hpc_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS e2e_hpc_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(e2e_hpc
  "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Door.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/e2e_hpc
)
_generate_msg_nodejs(e2e_hpc
  "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Connection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/e2e_hpc
)
_generate_msg_nodejs(e2e_hpc
  "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Ranging.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/e2e_hpc
)

### Generating Services

### Generating Module File
_generate_module_nodejs(e2e_hpc
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/e2e_hpc
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(e2e_hpc_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(e2e_hpc_generate_messages e2e_hpc_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Door.msg" NAME_WE)
add_dependencies(e2e_hpc_generate_messages_nodejs _e2e_hpc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Connection.msg" NAME_WE)
add_dependencies(e2e_hpc_generate_messages_nodejs _e2e_hpc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Ranging.msg" NAME_WE)
add_dependencies(e2e_hpc_generate_messages_nodejs _e2e_hpc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(e2e_hpc_gennodejs)
add_dependencies(e2e_hpc_gennodejs e2e_hpc_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS e2e_hpc_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(e2e_hpc
  "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Door.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/e2e_hpc
)
_generate_msg_py(e2e_hpc
  "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Connection.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/e2e_hpc
)
_generate_msg_py(e2e_hpc
  "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Ranging.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/e2e_hpc
)

### Generating Services

### Generating Module File
_generate_module_py(e2e_hpc
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/e2e_hpc
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(e2e_hpc_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(e2e_hpc_generate_messages e2e_hpc_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Door.msg" NAME_WE)
add_dependencies(e2e_hpc_generate_messages_py _e2e_hpc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Connection.msg" NAME_WE)
add_dependencies(e2e_hpc_generate_messages_py _e2e_hpc_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hvnbody/catkin_ws/src/e2e_hpc/msg/CustomMsg_Ranging.msg" NAME_WE)
add_dependencies(e2e_hpc_generate_messages_py _e2e_hpc_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(e2e_hpc_genpy)
add_dependencies(e2e_hpc_genpy e2e_hpc_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS e2e_hpc_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/e2e_hpc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/e2e_hpc
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(e2e_hpc_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(e2e_hpc_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/e2e_hpc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/e2e_hpc
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(e2e_hpc_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(e2e_hpc_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/e2e_hpc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/e2e_hpc
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(e2e_hpc_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(e2e_hpc_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/e2e_hpc)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/e2e_hpc
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(e2e_hpc_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(e2e_hpc_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/e2e_hpc)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/e2e_hpc\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/e2e_hpc
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(e2e_hpc_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(e2e_hpc_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
