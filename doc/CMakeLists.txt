IF (NOT WIN32)
  find_package(Doxygen)
  if (DOXYGEN_FOUND)
    include(${CMAKE_SOURCE_DIR}/cmake/Modules/Documentation.cmake)
    file(MAKE_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/sourcecode)
    configure_file (${CMAKE_CURRENT_SOURCE_DIR}/Doxyfile.in ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile @ONLY IMMEDIATE)
    add_custom_target(doc COMMAND ${DOXYGEN_EXECUTABLE} WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR})
    set_directory_properties(PROPERTIES ADDITIONAL_MAKE_CLEAN_FILES ${CMAKE_CURRENT_BINARY_DIR}/sourcecode)
  else (DOXYGEN_FOUND)
    add_custom_target(doc COMMAND ${CMAKE_COMMAND} -E echo "Doxygen not found, make doc is disabled")
    message ("Doxygen not found, disabling 'make doc'")
  endif (DOXYGEN_FOUND)
ENDIF (NOT WIN32)
