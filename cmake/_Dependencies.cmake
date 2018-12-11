#
# cmake/_Dependencies.cmake is generated by `mulle-sde`. Edits will be lost.
#
if( MULLE_TRACE_INCLUDE)
   message( STATUS "# Include \"${CMAKE_CURRENT_LIST_FILE}\"" )
endif()

if( NOT LIBDILL_LIBRARY)
   find_library( LIBDILL_LIBRARY NAMES ${CMAKE_STATIC_LIBRARY_PREFIX}dill${CMAKE_STATIC_LIBRARY_SUFFIX} dill ${CMAKE_STATIC_LIBRARY_PREFIX}libdill${CMAKE_STATIC_LIBRARY_SUFFIX} libdill)
   message( STATUS "LIBDILL_LIBRARY is ${LIBDILL_LIBRARY}")
   #
   # the order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need
   if( LIBDILL_LIBRARY)
      set( DEPENDENCY_LIBRARIES
         ${DEPENDENCY_LIBRARIES}
         ${LIBDILL_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      # temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_LIBDILL_ROOT "${LIBDILL_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_LIBDILL_ROOT "${_TMP_LIBDILL_ROOT}" DIRECTORY)
      #
      # search for DependenciesAndLibraries.cmake to include
      foreach( _TMP_LIBDILL_NAME "dill" "libdill")
         set( _TMP_LIBDILL_DIR "${_TMP_LIBDILL_ROOT}/include/${_TMP_LIBDILL_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( EXISTS "${_TMP_LIBDILL_DIR}/DependenciesAndLibraries.cmake")
            unset( LIBDILL_DEFINITIONS)
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_LIBDILL_DIR}")
            # we only want top level INHERIT_OBJC_LOADERS, so disable them
            if( NOT NO_INHERIT_OBJC_LOADERS)
               set( NO_INHERIT_OBJC_LOADERS OFF)
            endif()
            list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
            set( NO_INHERIT_OBJC_LOADERS ON)
            #
            include( "${_TMP_LIBDILL_DIR}/DependenciesAndLibraries.cmake")
            #
            list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
            list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_LIBDILL_DIR}")
            set( INHERITED_DEFINITIONS
               ${INHERITED_DEFINITIONS}
               ${LIBDILL_DEFINITIONS}
               CACHE INTERNAL "need to cache this"
            )
            break()
         else()
            message( STATUS "${_TMP_LIBDILL_DIR}/DependenciesAndLibraries.cmake not found")
         endif()
      endforeach()
   else()
      message( FATAL_ERROR "LIBDILL_LIBRARY was not found")
   endif()
endif()


if( NOT GLFW_LIBRARY)
   find_library( GLFW_LIBRARY NAMES ${CMAKE_STATIC_LIBRARY_PREFIX}glfw3${CMAKE_STATIC_LIBRARY_SUFFIX} glfw3 ${CMAKE_STATIC_LIBRARY_PREFIX}glfw${CMAKE_STATIC_LIBRARY_SUFFIX} glfw)
   message( STATUS "GLFW_LIBRARY is ${GLFW_LIBRARY}")
   #
   # the order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need
   if( GLFW_LIBRARY)
      set( DEPENDENCY_LIBRARIES
         ${DEPENDENCY_LIBRARIES}
         ${GLFW_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      # temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_GLFW_ROOT "${GLFW_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_GLFW_ROOT "${_TMP_GLFW_ROOT}" DIRECTORY)
      #
      # search for DependenciesAndLibraries.cmake to include
      foreach( _TMP_GLFW_NAME "glfw3" "glfw")
         set( _TMP_GLFW_DIR "${_TMP_GLFW_ROOT}/include/${_TMP_GLFW_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( EXISTS "${_TMP_GLFW_DIR}/DependenciesAndLibraries.cmake")
            unset( GLFW_DEFINITIONS)
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_GLFW_DIR}")
            # we only want top level INHERIT_OBJC_LOADERS, so disable them
            if( NOT NO_INHERIT_OBJC_LOADERS)
               set( NO_INHERIT_OBJC_LOADERS OFF)
            endif()
            list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
            set( NO_INHERIT_OBJC_LOADERS ON)
            #
            include( "${_TMP_GLFW_DIR}/DependenciesAndLibraries.cmake")
            #
            list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
            list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_GLFW_DIR}")
            set( INHERITED_DEFINITIONS
               ${INHERITED_DEFINITIONS}
               ${GLFW_DEFINITIONS}
               CACHE INTERNAL "need to cache this"
            )
            break()
         else()
            message( STATUS "${_TMP_GLFW_DIR}/DependenciesAndLibraries.cmake not found")
         endif()
      endforeach()
   else()
      message( FATAL_ERROR "GLFW_LIBRARY was not found")
   endif()
endif()


if( NOT MULLE_OBJC_LIBRARY)
   find_library( MULLE_OBJC_LIBRARY NAMES ${CMAKE_STATIC_LIBRARY_PREFIX}MulleObjC${CMAKE_STATIC_LIBRARY_SUFFIX} MulleObjC)
   message( STATUS "MULLE_OBJC_LIBRARY is ${MULLE_OBJC_LIBRARY}")
   #
   # the order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need
   if( MULLE_OBJC_LIBRARY)
      set( ALL_LOAD_DEPENDENCY_LIBRARIES
         ${ALL_LOAD_DEPENDENCY_LIBRARIES}
         ${MULLE_OBJC_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      # temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_MULLE_OBJC_ROOT "${MULLE_OBJC_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_MULLE_OBJC_ROOT "${_TMP_MULLE_OBJC_ROOT}" DIRECTORY)
      #
      # search for DependenciesAndLibraries.cmake to include
      foreach( _TMP_MULLE_OBJC_NAME "MulleObjC")
         set( _TMP_MULLE_OBJC_DIR "${_TMP_MULLE_OBJC_ROOT}/include/${_TMP_MULLE_OBJC_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( EXISTS "${_TMP_MULLE_OBJC_DIR}/DependenciesAndLibraries.cmake")
            unset( MULLE_OBJC_DEFINITIONS)
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_MULLE_OBJC_DIR}")
            # we only want top level INHERIT_OBJC_LOADERS, so disable them
            if( NOT NO_INHERIT_OBJC_LOADERS)
               set( NO_INHERIT_OBJC_LOADERS OFF)
            endif()
            list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
            set( NO_INHERIT_OBJC_LOADERS ON)
            #
            include( "${_TMP_MULLE_OBJC_DIR}/DependenciesAndLibraries.cmake")
            #
            list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
            list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_MULLE_OBJC_DIR}")
            set( INHERITED_DEFINITIONS
               ${INHERITED_DEFINITIONS}
               ${MULLE_OBJC_DEFINITIONS}
               CACHE INTERNAL "need to cache this"
            )
            break()
         else()
            message( STATUS "${_TMP_MULLE_OBJC_DIR}/DependenciesAndLibraries.cmake not found")
         endif()
      endforeach()

      # search for objc-loader.inc in include directory
      # this can be turned  off (see above)
      if( NOT NO_INHERIT_OBJC_LOADERS)
         foreach( _TMP_MULLE_OBJC_NAME "MulleObjC")
            set( _TMP_MULLE_OBJC_FILE "${_TMP_MULLE_OBJC_ROOT}/include/${_TMP_MULLE_OBJC_NAME}/objc-loader.inc")
            if( EXISTS "${_TMP_MULLE_OBJC_FILE}")
               set( INHERITED_OBJC_LOADERS
                  ${INHERITED_OBJC_LOADERS}
                  ${_TMP_MULLE_OBJC_FILE}
                  CACHE INTERNAL "need to cache this"
               )
               break()
            endif()
         endforeach()
      endif()
   else()
      message( FATAL_ERROR "MULLE_OBJC_LIBRARY was not found")
   endif()
endif()


if( NOT MULLE_OBJC_COMPAT_LIBRARY)
   find_library( MULLE_OBJC_COMPAT_LIBRARY NAMES ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-objc-compat${CMAKE_STATIC_LIBRARY_SUFFIX} mulle-objc-compat)
   message( STATUS "MULLE_OBJC_COMPAT_LIBRARY is ${MULLE_OBJC_COMPAT_LIBRARY}")
   #
   # the order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need
   if( MULLE_OBJC_COMPAT_LIBRARY)
      set( DEPENDENCY_LIBRARIES
         ${DEPENDENCY_LIBRARIES}
         ${MULLE_OBJC_COMPAT_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      # temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_MULLE_OBJC_COMPAT_ROOT "${MULLE_OBJC_COMPAT_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_MULLE_OBJC_COMPAT_ROOT "${_TMP_MULLE_OBJC_COMPAT_ROOT}" DIRECTORY)
      #
      # search for DependenciesAndLibraries.cmake to include
      foreach( _TMP_MULLE_OBJC_COMPAT_NAME "mulle-objc-compat")
         set( _TMP_MULLE_OBJC_COMPAT_DIR "${_TMP_MULLE_OBJC_COMPAT_ROOT}/include/${_TMP_MULLE_OBJC_COMPAT_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( EXISTS "${_TMP_MULLE_OBJC_COMPAT_DIR}/DependenciesAndLibraries.cmake")
            unset( MULLE_OBJC_COMPAT_DEFINITIONS)
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_MULLE_OBJC_COMPAT_DIR}")
            # we only want top level INHERIT_OBJC_LOADERS, so disable them
            if( NOT NO_INHERIT_OBJC_LOADERS)
               set( NO_INHERIT_OBJC_LOADERS OFF)
            endif()
            list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
            set( NO_INHERIT_OBJC_LOADERS ON)
            #
            include( "${_TMP_MULLE_OBJC_COMPAT_DIR}/DependenciesAndLibraries.cmake")
            #
            list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
            list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_MULLE_OBJC_COMPAT_DIR}")
            set( INHERITED_DEFINITIONS
               ${INHERITED_DEFINITIONS}
               ${MULLE_OBJC_COMPAT_DEFINITIONS}
               CACHE INTERNAL "need to cache this"
            )
            break()
         else()
            message( STATUS "${_TMP_MULLE_OBJC_COMPAT_DIR}/DependenciesAndLibraries.cmake not found")
         endif()
      endforeach()
   else()
      message( FATAL_ERROR "MULLE_OBJC_COMPAT_LIBRARY was not found")
   endif()
endif()
