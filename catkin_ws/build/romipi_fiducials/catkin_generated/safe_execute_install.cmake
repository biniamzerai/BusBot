execute_process(COMMAND "/home/jacob/catkin_ws/build/romipi_fiducials/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/jacob/catkin_ws/build/romipi_fiducials/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
