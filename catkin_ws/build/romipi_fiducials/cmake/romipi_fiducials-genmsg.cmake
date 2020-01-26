# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "romipi_fiducials: 0 messages, 3 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Iromipi_msgs:/home/jacob/catkin_ws/src/romipi_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(romipi_fiducials_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetPose.srv" NAME_WE)
add_custom_target(_romipi_fiducials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "romipi_fiducials" "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetPose.srv" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetVisible.srv" NAME_WE)
add_custom_target(_romipi_fiducials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "romipi_fiducials" "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetVisible.srv" "romipi_msgs/NameList"
)

get_filename_component(_filename "/home/jacob/catkin_ws/src/romipi_fiducials/srv/ResetVisible.srv" NAME_WE)
add_custom_target(_romipi_fiducials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "romipi_fiducials" "/home/jacob/catkin_ws/src/romipi_fiducials/srv/ResetVisible.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(romipi_fiducials
  "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/romipi_fiducials
)
_generate_srv_cpp(romipi_fiducials
  "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetVisible.srv"
  "${MSG_I_FLAGS}"
  "/home/jacob/catkin_ws/src/romipi_msgs/msg/NameList.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/romipi_fiducials
)
_generate_srv_cpp(romipi_fiducials
  "/home/jacob/catkin_ws/src/romipi_fiducials/srv/ResetVisible.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/romipi_fiducials
)

### Generating Module File
_generate_module_cpp(romipi_fiducials
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/romipi_fiducials
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(romipi_fiducials_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(romipi_fiducials_generate_messages romipi_fiducials_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetPose.srv" NAME_WE)
add_dependencies(romipi_fiducials_generate_messages_cpp _romipi_fiducials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetVisible.srv" NAME_WE)
add_dependencies(romipi_fiducials_generate_messages_cpp _romipi_fiducials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jacob/catkin_ws/src/romipi_fiducials/srv/ResetVisible.srv" NAME_WE)
add_dependencies(romipi_fiducials_generate_messages_cpp _romipi_fiducials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(romipi_fiducials_gencpp)
add_dependencies(romipi_fiducials_gencpp romipi_fiducials_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS romipi_fiducials_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(romipi_fiducials
  "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/romipi_fiducials
)
_generate_srv_eus(romipi_fiducials
  "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetVisible.srv"
  "${MSG_I_FLAGS}"
  "/home/jacob/catkin_ws/src/romipi_msgs/msg/NameList.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/romipi_fiducials
)
_generate_srv_eus(romipi_fiducials
  "/home/jacob/catkin_ws/src/romipi_fiducials/srv/ResetVisible.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/romipi_fiducials
)

### Generating Module File
_generate_module_eus(romipi_fiducials
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/romipi_fiducials
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(romipi_fiducials_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(romipi_fiducials_generate_messages romipi_fiducials_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetPose.srv" NAME_WE)
add_dependencies(romipi_fiducials_generate_messages_eus _romipi_fiducials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetVisible.srv" NAME_WE)
add_dependencies(romipi_fiducials_generate_messages_eus _romipi_fiducials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jacob/catkin_ws/src/romipi_fiducials/srv/ResetVisible.srv" NAME_WE)
add_dependencies(romipi_fiducials_generate_messages_eus _romipi_fiducials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(romipi_fiducials_geneus)
add_dependencies(romipi_fiducials_geneus romipi_fiducials_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS romipi_fiducials_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(romipi_fiducials
  "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/romipi_fiducials
)
_generate_srv_lisp(romipi_fiducials
  "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetVisible.srv"
  "${MSG_I_FLAGS}"
  "/home/jacob/catkin_ws/src/romipi_msgs/msg/NameList.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/romipi_fiducials
)
_generate_srv_lisp(romipi_fiducials
  "/home/jacob/catkin_ws/src/romipi_fiducials/srv/ResetVisible.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/romipi_fiducials
)

### Generating Module File
_generate_module_lisp(romipi_fiducials
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/romipi_fiducials
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(romipi_fiducials_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(romipi_fiducials_generate_messages romipi_fiducials_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetPose.srv" NAME_WE)
add_dependencies(romipi_fiducials_generate_messages_lisp _romipi_fiducials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetVisible.srv" NAME_WE)
add_dependencies(romipi_fiducials_generate_messages_lisp _romipi_fiducials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jacob/catkin_ws/src/romipi_fiducials/srv/ResetVisible.srv" NAME_WE)
add_dependencies(romipi_fiducials_generate_messages_lisp _romipi_fiducials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(romipi_fiducials_genlisp)
add_dependencies(romipi_fiducials_genlisp romipi_fiducials_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS romipi_fiducials_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(romipi_fiducials
  "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/romipi_fiducials
)
_generate_srv_nodejs(romipi_fiducials
  "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetVisible.srv"
  "${MSG_I_FLAGS}"
  "/home/jacob/catkin_ws/src/romipi_msgs/msg/NameList.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/romipi_fiducials
)
_generate_srv_nodejs(romipi_fiducials
  "/home/jacob/catkin_ws/src/romipi_fiducials/srv/ResetVisible.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/romipi_fiducials
)

### Generating Module File
_generate_module_nodejs(romipi_fiducials
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/romipi_fiducials
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(romipi_fiducials_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(romipi_fiducials_generate_messages romipi_fiducials_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetPose.srv" NAME_WE)
add_dependencies(romipi_fiducials_generate_messages_nodejs _romipi_fiducials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetVisible.srv" NAME_WE)
add_dependencies(romipi_fiducials_generate_messages_nodejs _romipi_fiducials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jacob/catkin_ws/src/romipi_fiducials/srv/ResetVisible.srv" NAME_WE)
add_dependencies(romipi_fiducials_generate_messages_nodejs _romipi_fiducials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(romipi_fiducials_gennodejs)
add_dependencies(romipi_fiducials_gennodejs romipi_fiducials_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS romipi_fiducials_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(romipi_fiducials
  "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/romipi_fiducials
)
_generate_srv_py(romipi_fiducials
  "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetVisible.srv"
  "${MSG_I_FLAGS}"
  "/home/jacob/catkin_ws/src/romipi_msgs/msg/NameList.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/romipi_fiducials
)
_generate_srv_py(romipi_fiducials
  "/home/jacob/catkin_ws/src/romipi_fiducials/srv/ResetVisible.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/romipi_fiducials
)

### Generating Module File
_generate_module_py(romipi_fiducials
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/romipi_fiducials
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(romipi_fiducials_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(romipi_fiducials_generate_messages romipi_fiducials_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetPose.srv" NAME_WE)
add_dependencies(romipi_fiducials_generate_messages_py _romipi_fiducials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jacob/catkin_ws/src/romipi_fiducials/srv/GetVisible.srv" NAME_WE)
add_dependencies(romipi_fiducials_generate_messages_py _romipi_fiducials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jacob/catkin_ws/src/romipi_fiducials/srv/ResetVisible.srv" NAME_WE)
add_dependencies(romipi_fiducials_generate_messages_py _romipi_fiducials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(romipi_fiducials_genpy)
add_dependencies(romipi_fiducials_genpy romipi_fiducials_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS romipi_fiducials_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/romipi_fiducials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/romipi_fiducials
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(romipi_fiducials_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(romipi_fiducials_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET romipi_msgs_generate_messages_cpp)
  add_dependencies(romipi_fiducials_generate_messages_cpp romipi_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/romipi_fiducials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/romipi_fiducials
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(romipi_fiducials_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(romipi_fiducials_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET romipi_msgs_generate_messages_eus)
  add_dependencies(romipi_fiducials_generate_messages_eus romipi_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/romipi_fiducials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/romipi_fiducials
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(romipi_fiducials_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(romipi_fiducials_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET romipi_msgs_generate_messages_lisp)
  add_dependencies(romipi_fiducials_generate_messages_lisp romipi_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/romipi_fiducials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/romipi_fiducials
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(romipi_fiducials_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(romipi_fiducials_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET romipi_msgs_generate_messages_nodejs)
  add_dependencies(romipi_fiducials_generate_messages_nodejs romipi_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/romipi_fiducials)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/romipi_fiducials\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/romipi_fiducials
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/romipi_fiducials
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/romipi_fiducials/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(romipi_fiducials_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(romipi_fiducials_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET romipi_msgs_generate_messages_py)
  add_dependencies(romipi_fiducials_generate_messages_py romipi_msgs_generate_messages_py)
endif()
