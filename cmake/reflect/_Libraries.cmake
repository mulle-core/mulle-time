#
# cmake/reflect/_Libraries.cmake is generated by `mulle-sde reflect`. Edits will be lost.
# Disable generation of this file with:
#   mulle-sde environment  --global set MULLE_SOURCETREE_TO_CMAKE_LIBRARIES_FILE DISABLE

if( MULLE_TRACE_INCLUDE)
   message( STATUS "# Include \"${CMAKE_CURRENT_LIST_FILE}\"" )
endif()

#
# Generated from sourcetree: GL;no-all-load,no-build,no-delete,no-dependency,no-fs,no-header,no-import,no-os-darwin,no-update;
# Disable with: `mulle-sourcetree mark GL no-link`
#
if( NOT ${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
   if( NOT GL_LIBRARY)
      find_library( GL_LIBRARY NAMES GL)
      message( STATUS "GL_LIBRARY is ${GL_LIBRARY}")
      #
      # The order looks ascending, but due to the way this file is read
      # it ends up being descending, which is what we need.
      #
      if( GL_LIBRARY)
         #
         # Add GL_LIBRARY to OS_SPECIFIC_LIBRARIES list.
         # Disable with: `mulle-sourcetree mark GL no-cmakeadd`
         #
         set( OS_SPECIFIC_LIBRARIES
            ${OS_SPECIFIC_LIBRARIES}
            ${GL_LIBRARY}
            CACHE INTERNAL "need to cache this"
         )
         #
         # Inherit ObjC loader and link dependency info.
         # Disable with: `mulle-sourcetree mark GL no-cmakeinherit`
         #
         # // temporarily expand CMAKE_MODULE_PATH
         get_filename_component( _TMP_GL_ROOT "${GL_LIBRARY}" DIRECTORY)
         get_filename_component( _TMP_GL_ROOT "${_TMP_GL_ROOT}" DIRECTORY)
         #
         #
         # Search for "DependenciesAndLibraries.cmake" to include.
         # Disable with: `mulle-sourcetree mark GL no-cmakedependency`
         #
         foreach( _TMP_GL_NAME "GL")
            set( _TMP_GL_DIR "${_TMP_GL_ROOT}/include/${_TMP_GL_NAME}/cmake")
            # use explicit path to avoid "surprises"
            if( EXISTS "${_TMP_GL_DIR}/DependenciesAndLibraries.cmake")
               unset( GL_DEFINITIONS)
               list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_GL_DIR}")
               # we only want top level INHERIT_OBJC_LOADERS, so disable them
               if( NOT NO_INHERIT_OBJC_LOADERS)
                  set( NO_INHERIT_OBJC_LOADERS OFF)
               endif()
               list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
               set( NO_INHERIT_OBJC_LOADERS ON)
               #
               include( "${_TMP_GL_DIR}/DependenciesAndLibraries.cmake")
               #
               list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
               list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
               #
               list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_GL_DIR}")
               set( INHERITED_DEFINITIONS
                  ${INHERITED_DEFINITIONS}
                  ${GL_DEFINITIONS}
                  CACHE INTERNAL "need to cache this"
               )
               break()
            else()
               message( STATUS "${_TMP_GL_DIR}/DependenciesAndLibraries.cmake not found")
            endif()
         endforeach()
      else()
         message( FATAL_ERROR "GL_LIBRARY was not found")
      endif()
   endif()
endif()


#
# Generated from sourcetree: GLU;no-all-load,no-build,no-delete,no-dependency,no-fs,no-header,no-import,no-os-darwin,no-update;
# Disable with: `mulle-sourcetree mark GLU no-link`
#
if( NOT ${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
   if( NOT GLU_LIBRARY)
      find_library( GLU_LIBRARY NAMES GLU)
      message( STATUS "GLU_LIBRARY is ${GLU_LIBRARY}")
      #
      # The order looks ascending, but due to the way this file is read
      # it ends up being descending, which is what we need.
      #
      if( GLU_LIBRARY)
         #
         # Add GLU_LIBRARY to OS_SPECIFIC_LIBRARIES list.
         # Disable with: `mulle-sourcetree mark GLU no-cmakeadd`
         #
         set( OS_SPECIFIC_LIBRARIES
            ${OS_SPECIFIC_LIBRARIES}
            ${GLU_LIBRARY}
            CACHE INTERNAL "need to cache this"
         )
         #
         # Inherit ObjC loader and link dependency info.
         # Disable with: `mulle-sourcetree mark GLU no-cmakeinherit`
         #
         # // temporarily expand CMAKE_MODULE_PATH
         get_filename_component( _TMP_GLU_ROOT "${GLU_LIBRARY}" DIRECTORY)
         get_filename_component( _TMP_GLU_ROOT "${_TMP_GLU_ROOT}" DIRECTORY)
         #
         #
         # Search for "DependenciesAndLibraries.cmake" to include.
         # Disable with: `mulle-sourcetree mark GLU no-cmakedependency`
         #
         foreach( _TMP_GLU_NAME "GLU")
            set( _TMP_GLU_DIR "${_TMP_GLU_ROOT}/include/${_TMP_GLU_NAME}/cmake")
            # use explicit path to avoid "surprises"
            if( EXISTS "${_TMP_GLU_DIR}/DependenciesAndLibraries.cmake")
               unset( GLU_DEFINITIONS)
               list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_GLU_DIR}")
               # we only want top level INHERIT_OBJC_LOADERS, so disable them
               if( NOT NO_INHERIT_OBJC_LOADERS)
                  set( NO_INHERIT_OBJC_LOADERS OFF)
               endif()
               list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
               set( NO_INHERIT_OBJC_LOADERS ON)
               #
               include( "${_TMP_GLU_DIR}/DependenciesAndLibraries.cmake")
               #
               list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
               list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
               #
               list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_GLU_DIR}")
               set( INHERITED_DEFINITIONS
                  ${INHERITED_DEFINITIONS}
                  ${GLU_DEFINITIONS}
                  CACHE INTERNAL "need to cache this"
               )
               break()
            else()
               message( STATUS "${_TMP_GLU_DIR}/DependenciesAndLibraries.cmake not found")
            endif()
         endforeach()
      else()
         message( FATAL_ERROR "GLU_LIBRARY was not found")
      endif()
   endif()
endif()


#
# Generated from sourcetree: X11;no-all-load,no-build,no-delete,no-dependency,no-fs,no-header,no-import,no-os-darwin,no-update;
# Disable with: `mulle-sourcetree mark X11 no-link`
#
if( NOT ${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
   if( NOT X11_LIBRARY)
      find_library( X11_LIBRARY NAMES X11)
      message( STATUS "X11_LIBRARY is ${X11_LIBRARY}")
      #
      # The order looks ascending, but due to the way this file is read
      # it ends up being descending, which is what we need.
      #
      if( X11_LIBRARY)
         #
         # Add X11_LIBRARY to OS_SPECIFIC_LIBRARIES list.
         # Disable with: `mulle-sourcetree mark X11 no-cmakeadd`
         #
         set( OS_SPECIFIC_LIBRARIES
            ${OS_SPECIFIC_LIBRARIES}
            ${X11_LIBRARY}
            CACHE INTERNAL "need to cache this"
         )
         #
         # Inherit ObjC loader and link dependency info.
         # Disable with: `mulle-sourcetree mark X11 no-cmakeinherit`
         #
         # // temporarily expand CMAKE_MODULE_PATH
         get_filename_component( _TMP_X11_ROOT "${X11_LIBRARY}" DIRECTORY)
         get_filename_component( _TMP_X11_ROOT "${_TMP_X11_ROOT}" DIRECTORY)
         #
         #
         # Search for "DependenciesAndLibraries.cmake" to include.
         # Disable with: `mulle-sourcetree mark X11 no-cmakedependency`
         #
         foreach( _TMP_X11_NAME "X11")
            set( _TMP_X11_DIR "${_TMP_X11_ROOT}/include/${_TMP_X11_NAME}/cmake")
            # use explicit path to avoid "surprises"
            if( EXISTS "${_TMP_X11_DIR}/DependenciesAndLibraries.cmake")
               unset( X11_DEFINITIONS)
               list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_X11_DIR}")
               # we only want top level INHERIT_OBJC_LOADERS, so disable them
               if( NOT NO_INHERIT_OBJC_LOADERS)
                  set( NO_INHERIT_OBJC_LOADERS OFF)
               endif()
               list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
               set( NO_INHERIT_OBJC_LOADERS ON)
               #
               include( "${_TMP_X11_DIR}/DependenciesAndLibraries.cmake")
               #
               list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
               list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
               #
               list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_X11_DIR}")
               set( INHERITED_DEFINITIONS
                  ${INHERITED_DEFINITIONS}
                  ${X11_DEFINITIONS}
                  CACHE INTERNAL "need to cache this"
               )
               break()
            else()
               message( STATUS "${_TMP_X11_DIR}/DependenciesAndLibraries.cmake not found")
            endif()
         endforeach()
      else()
         message( FATAL_ERROR "X11_LIBRARY was not found")
      endif()
   endif()
endif()


#
# Generated from sourcetree: Xrandr;no-all-load,no-build,no-delete,no-dependency,no-fs,no-header,no-import,no-os-darwin,no-update;
# Disable with: `mulle-sourcetree mark Xrandr no-link`
#
if( NOT ${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
   if( NOT XRANDR_LIBRARY)
      find_library( XRANDR_LIBRARY NAMES Xrandr)
      message( STATUS "XRANDR_LIBRARY is ${XRANDR_LIBRARY}")
      #
      # The order looks ascending, but due to the way this file is read
      # it ends up being descending, which is what we need.
      #
      if( XRANDR_LIBRARY)
         #
         # Add XRANDR_LIBRARY to OS_SPECIFIC_LIBRARIES list.
         # Disable with: `mulle-sourcetree mark Xrandr no-cmakeadd`
         #
         set( OS_SPECIFIC_LIBRARIES
            ${OS_SPECIFIC_LIBRARIES}
            ${XRANDR_LIBRARY}
            CACHE INTERNAL "need to cache this"
         )
         #
         # Inherit ObjC loader and link dependency info.
         # Disable with: `mulle-sourcetree mark Xrandr no-cmakeinherit`
         #
         # // temporarily expand CMAKE_MODULE_PATH
         get_filename_component( _TMP_XRANDR_ROOT "${XRANDR_LIBRARY}" DIRECTORY)
         get_filename_component( _TMP_XRANDR_ROOT "${_TMP_XRANDR_ROOT}" DIRECTORY)
         #
         #
         # Search for "DependenciesAndLibraries.cmake" to include.
         # Disable with: `mulle-sourcetree mark Xrandr no-cmakedependency`
         #
         foreach( _TMP_XRANDR_NAME "Xrandr")
            set( _TMP_XRANDR_DIR "${_TMP_XRANDR_ROOT}/include/${_TMP_XRANDR_NAME}/cmake")
            # use explicit path to avoid "surprises"
            if( EXISTS "${_TMP_XRANDR_DIR}/DependenciesAndLibraries.cmake")
               unset( XRANDR_DEFINITIONS)
               list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_XRANDR_DIR}")
               # we only want top level INHERIT_OBJC_LOADERS, so disable them
               if( NOT NO_INHERIT_OBJC_LOADERS)
                  set( NO_INHERIT_OBJC_LOADERS OFF)
               endif()
               list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
               set( NO_INHERIT_OBJC_LOADERS ON)
               #
               include( "${_TMP_XRANDR_DIR}/DependenciesAndLibraries.cmake")
               #
               list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
               list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
               #
               list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_XRANDR_DIR}")
               set( INHERITED_DEFINITIONS
                  ${INHERITED_DEFINITIONS}
                  ${XRANDR_DEFINITIONS}
                  CACHE INTERNAL "need to cache this"
               )
               break()
            else()
               message( STATUS "${_TMP_XRANDR_DIR}/DependenciesAndLibraries.cmake not found")
            endif()
         endforeach()
      else()
         message( FATAL_ERROR "XRANDR_LIBRARY was not found")
      endif()
   endif()
endif()


#
# Generated from sourcetree: Xxf86vm;no-all-load,no-build,no-delete,no-dependency,no-fs,no-header,no-import,no-os-darwin,no-update;
# Disable with: `mulle-sourcetree mark Xxf86vm no-link`
#
if( NOT ${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
   if( NOT XXF86VM_LIBRARY)
      find_library( XXF86VM_LIBRARY NAMES Xxf86vm)
      message( STATUS "XXF86VM_LIBRARY is ${XXF86VM_LIBRARY}")
      #
      # The order looks ascending, but due to the way this file is read
      # it ends up being descending, which is what we need.
      #
      if( XXF86VM_LIBRARY)
         #
         # Add XXF86VM_LIBRARY to OS_SPECIFIC_LIBRARIES list.
         # Disable with: `mulle-sourcetree mark Xxf86vm no-cmakeadd`
         #
         set( OS_SPECIFIC_LIBRARIES
            ${OS_SPECIFIC_LIBRARIES}
            ${XXF86VM_LIBRARY}
            CACHE INTERNAL "need to cache this"
         )
         #
         # Inherit ObjC loader and link dependency info.
         # Disable with: `mulle-sourcetree mark Xxf86vm no-cmakeinherit`
         #
         # // temporarily expand CMAKE_MODULE_PATH
         get_filename_component( _TMP_XXF86VM_ROOT "${XXF86VM_LIBRARY}" DIRECTORY)
         get_filename_component( _TMP_XXF86VM_ROOT "${_TMP_XXF86VM_ROOT}" DIRECTORY)
         #
         #
         # Search for "DependenciesAndLibraries.cmake" to include.
         # Disable with: `mulle-sourcetree mark Xxf86vm no-cmakedependency`
         #
         foreach( _TMP_XXF86VM_NAME "Xxf86vm")
            set( _TMP_XXF86VM_DIR "${_TMP_XXF86VM_ROOT}/include/${_TMP_XXF86VM_NAME}/cmake")
            # use explicit path to avoid "surprises"
            if( EXISTS "${_TMP_XXF86VM_DIR}/DependenciesAndLibraries.cmake")
               unset( XXF86VM_DEFINITIONS)
               list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_XXF86VM_DIR}")
               # we only want top level INHERIT_OBJC_LOADERS, so disable them
               if( NOT NO_INHERIT_OBJC_LOADERS)
                  set( NO_INHERIT_OBJC_LOADERS OFF)
               endif()
               list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
               set( NO_INHERIT_OBJC_LOADERS ON)
               #
               include( "${_TMP_XXF86VM_DIR}/DependenciesAndLibraries.cmake")
               #
               list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
               list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
               #
               list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_XXF86VM_DIR}")
               set( INHERITED_DEFINITIONS
                  ${INHERITED_DEFINITIONS}
                  ${XXF86VM_DEFINITIONS}
                  CACHE INTERNAL "need to cache this"
               )
               break()
            else()
               message( STATUS "${_TMP_XXF86VM_DIR}/DependenciesAndLibraries.cmake not found")
            endif()
         endforeach()
      else()
         message( FATAL_ERROR "XXF86VM_LIBRARY was not found")
      endif()
   endif()
endif()


#
# Generated from sourcetree: Xinerama;no-all-load,no-build,no-delete,no-dependency,no-fs,no-header,no-import,no-os-darwin,no-update;
# Disable with: `mulle-sourcetree mark Xinerama no-link`
#
if( NOT ${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
   if( NOT XINERAMA_LIBRARY)
      find_library( XINERAMA_LIBRARY NAMES Xinerama)
      message( STATUS "XINERAMA_LIBRARY is ${XINERAMA_LIBRARY}")
      #
      # The order looks ascending, but due to the way this file is read
      # it ends up being descending, which is what we need.
      #
      if( XINERAMA_LIBRARY)
         #
         # Add XINERAMA_LIBRARY to OS_SPECIFIC_LIBRARIES list.
         # Disable with: `mulle-sourcetree mark Xinerama no-cmakeadd`
         #
         set( OS_SPECIFIC_LIBRARIES
            ${OS_SPECIFIC_LIBRARIES}
            ${XINERAMA_LIBRARY}
            CACHE INTERNAL "need to cache this"
         )
         #
         # Inherit ObjC loader and link dependency info.
         # Disable with: `mulle-sourcetree mark Xinerama no-cmakeinherit`
         #
         # // temporarily expand CMAKE_MODULE_PATH
         get_filename_component( _TMP_XINERAMA_ROOT "${XINERAMA_LIBRARY}" DIRECTORY)
         get_filename_component( _TMP_XINERAMA_ROOT "${_TMP_XINERAMA_ROOT}" DIRECTORY)
         #
         #
         # Search for "DependenciesAndLibraries.cmake" to include.
         # Disable with: `mulle-sourcetree mark Xinerama no-cmakedependency`
         #
         foreach( _TMP_XINERAMA_NAME "Xinerama")
            set( _TMP_XINERAMA_DIR "${_TMP_XINERAMA_ROOT}/include/${_TMP_XINERAMA_NAME}/cmake")
            # use explicit path to avoid "surprises"
            if( EXISTS "${_TMP_XINERAMA_DIR}/DependenciesAndLibraries.cmake")
               unset( XINERAMA_DEFINITIONS)
               list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_XINERAMA_DIR}")
               # we only want top level INHERIT_OBJC_LOADERS, so disable them
               if( NOT NO_INHERIT_OBJC_LOADERS)
                  set( NO_INHERIT_OBJC_LOADERS OFF)
               endif()
               list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
               set( NO_INHERIT_OBJC_LOADERS ON)
               #
               include( "${_TMP_XINERAMA_DIR}/DependenciesAndLibraries.cmake")
               #
               list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
               list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
               #
               list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_XINERAMA_DIR}")
               set( INHERITED_DEFINITIONS
                  ${INHERITED_DEFINITIONS}
                  ${XINERAMA_DEFINITIONS}
                  CACHE INTERNAL "need to cache this"
               )
               break()
            else()
               message( STATUS "${_TMP_XINERAMA_DIR}/DependenciesAndLibraries.cmake not found")
            endif()
         endforeach()
      else()
         message( FATAL_ERROR "XINERAMA_LIBRARY was not found")
      endif()
   endif()
endif()


#
# Generated from sourcetree: Xcursor;no-all-load,no-build,no-delete,no-dependency,no-fs,no-header,no-import,no-os-darwin,no-update;
# Disable with: `mulle-sourcetree mark Xcursor no-link`
#
if( NOT ${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
   if( NOT XCURSOR_LIBRARY)
      find_library( XCURSOR_LIBRARY NAMES Xcursor)
      message( STATUS "XCURSOR_LIBRARY is ${XCURSOR_LIBRARY}")
      #
      # The order looks ascending, but due to the way this file is read
      # it ends up being descending, which is what we need.
      #
      if( XCURSOR_LIBRARY)
         #
         # Add XCURSOR_LIBRARY to OS_SPECIFIC_LIBRARIES list.
         # Disable with: `mulle-sourcetree mark Xcursor no-cmakeadd`
         #
         set( OS_SPECIFIC_LIBRARIES
            ${OS_SPECIFIC_LIBRARIES}
            ${XCURSOR_LIBRARY}
            CACHE INTERNAL "need to cache this"
         )
         #
         # Inherit ObjC loader and link dependency info.
         # Disable with: `mulle-sourcetree mark Xcursor no-cmakeinherit`
         #
         # // temporarily expand CMAKE_MODULE_PATH
         get_filename_component( _TMP_XCURSOR_ROOT "${XCURSOR_LIBRARY}" DIRECTORY)
         get_filename_component( _TMP_XCURSOR_ROOT "${_TMP_XCURSOR_ROOT}" DIRECTORY)
         #
         #
         # Search for "DependenciesAndLibraries.cmake" to include.
         # Disable with: `mulle-sourcetree mark Xcursor no-cmakedependency`
         #
         foreach( _TMP_XCURSOR_NAME "Xcursor")
            set( _TMP_XCURSOR_DIR "${_TMP_XCURSOR_ROOT}/include/${_TMP_XCURSOR_NAME}/cmake")
            # use explicit path to avoid "surprises"
            if( EXISTS "${_TMP_XCURSOR_DIR}/DependenciesAndLibraries.cmake")
               unset( XCURSOR_DEFINITIONS)
               list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_XCURSOR_DIR}")
               # we only want top level INHERIT_OBJC_LOADERS, so disable them
               if( NOT NO_INHERIT_OBJC_LOADERS)
                  set( NO_INHERIT_OBJC_LOADERS OFF)
               endif()
               list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
               set( NO_INHERIT_OBJC_LOADERS ON)
               #
               include( "${_TMP_XCURSOR_DIR}/DependenciesAndLibraries.cmake")
               #
               list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
               list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
               #
               list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_XCURSOR_DIR}")
               set( INHERITED_DEFINITIONS
                  ${INHERITED_DEFINITIONS}
                  ${XCURSOR_DEFINITIONS}
                  CACHE INTERNAL "need to cache this"
               )
               break()
            else()
               message( STATUS "${_TMP_XCURSOR_DIR}/DependenciesAndLibraries.cmake not found")
            endif()
         endforeach()
      else()
         message( FATAL_ERROR "XCURSOR_LIBRARY was not found")
      endif()
   endif()
endif()


#
# Generated from sourcetree: dl;no-all-load,no-build,no-delete,no-dependency,no-fs,no-header,no-import,no-update;
# Disable with: `mulle-sourcetree mark dl no-link`
#
if( NOT DL_LIBRARY)
   find_library( DL_LIBRARY NAMES dl)
   message( STATUS "DL_LIBRARY is ${DL_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( DL_LIBRARY)
      #
      # Add DL_LIBRARY to OS_SPECIFIC_LIBRARIES list.
      # Disable with: `mulle-sourcetree mark dl no-cmakeadd`
      #
      set( OS_SPECIFIC_LIBRARIES
         ${OS_SPECIFIC_LIBRARIES}
         ${DL_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      #
      # Inherit ObjC loader and link dependency info.
      # Disable with: `mulle-sourcetree mark dl no-cmakeinherit`
      #
      # // temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_DL_ROOT "${DL_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_DL_ROOT "${_TMP_DL_ROOT}" DIRECTORY)
      #
      #
      # Search for "DependenciesAndLibraries.cmake" to include.
      # Disable with: `mulle-sourcetree mark dl no-cmakedependency`
      #
      foreach( _TMP_DL_NAME "dl")
         set( _TMP_DL_DIR "${_TMP_DL_ROOT}/include/${_TMP_DL_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( EXISTS "${_TMP_DL_DIR}/DependenciesAndLibraries.cmake")
            unset( DL_DEFINITIONS)
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_DL_DIR}")
            # we only want top level INHERIT_OBJC_LOADERS, so disable them
            if( NOT NO_INHERIT_OBJC_LOADERS)
               set( NO_INHERIT_OBJC_LOADERS OFF)
            endif()
            list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
            set( NO_INHERIT_OBJC_LOADERS ON)
            #
            include( "${_TMP_DL_DIR}/DependenciesAndLibraries.cmake")
            #
            list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
            list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_DL_DIR}")
            set( INHERITED_DEFINITIONS
               ${INHERITED_DEFINITIONS}
               ${DL_DEFINITIONS}
               CACHE INTERNAL "need to cache this"
            )
            break()
         else()
            message( STATUS "${_TMP_DL_DIR}/DependenciesAndLibraries.cmake not found")
         endif()
      endforeach()
   else()
      message( FATAL_ERROR "DL_LIBRARY was not found")
   endif()
endif()


#
# Generated from sourcetree: pthread;no-all-load,no-build,no-delete,no-dependency,no-fs,no-header,no-import,no-update;
# Disable with: `mulle-sourcetree mark pthread no-link`
#
if( NOT PTHREAD_LIBRARY)
   find_library( PTHREAD_LIBRARY NAMES pthread)
   message( STATUS "PTHREAD_LIBRARY is ${PTHREAD_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( PTHREAD_LIBRARY)
      #
      # Add PTHREAD_LIBRARY to OS_SPECIFIC_LIBRARIES list.
      # Disable with: `mulle-sourcetree mark pthread no-cmakeadd`
      #
      set( OS_SPECIFIC_LIBRARIES
         ${OS_SPECIFIC_LIBRARIES}
         ${PTHREAD_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      #
      # Inherit ObjC loader and link dependency info.
      # Disable with: `mulle-sourcetree mark pthread no-cmakeinherit`
      #
      # // temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_PTHREAD_ROOT "${PTHREAD_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_PTHREAD_ROOT "${_TMP_PTHREAD_ROOT}" DIRECTORY)
      #
      #
      # Search for "DependenciesAndLibraries.cmake" to include.
      # Disable with: `mulle-sourcetree mark pthread no-cmakedependency`
      #
      foreach( _TMP_PTHREAD_NAME "pthread")
         set( _TMP_PTHREAD_DIR "${_TMP_PTHREAD_ROOT}/include/${_TMP_PTHREAD_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( EXISTS "${_TMP_PTHREAD_DIR}/DependenciesAndLibraries.cmake")
            unset( PTHREAD_DEFINITIONS)
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_PTHREAD_DIR}")
            # we only want top level INHERIT_OBJC_LOADERS, so disable them
            if( NOT NO_INHERIT_OBJC_LOADERS)
               set( NO_INHERIT_OBJC_LOADERS OFF)
            endif()
            list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
            set( NO_INHERIT_OBJC_LOADERS ON)
            #
            include( "${_TMP_PTHREAD_DIR}/DependenciesAndLibraries.cmake")
            #
            list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
            list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_PTHREAD_DIR}")
            set( INHERITED_DEFINITIONS
               ${INHERITED_DEFINITIONS}
               ${PTHREAD_DEFINITIONS}
               CACHE INTERNAL "need to cache this"
            )
            break()
         else()
            message( STATUS "${_TMP_PTHREAD_DIR}/DependenciesAndLibraries.cmake not found")
         endif()
      endforeach()
   else()
      message( FATAL_ERROR "PTHREAD_LIBRARY was not found")
   endif()
endif()


#
# Generated from sourcetree: m;no-all-load,no-build,no-delete,no-dependency,no-fs,no-header,no-import,no-update;
# Disable with: `mulle-sourcetree mark m no-link`
#
if( NOT M_LIBRARY)
   find_library( M_LIBRARY NAMES m)
   message( STATUS "M_LIBRARY is ${M_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( M_LIBRARY)
      #
      # Add M_LIBRARY to OS_SPECIFIC_LIBRARIES list.
      # Disable with: `mulle-sourcetree mark m no-cmakeadd`
      #
      set( OS_SPECIFIC_LIBRARIES
         ${OS_SPECIFIC_LIBRARIES}
         ${M_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      #
      # Inherit ObjC loader and link dependency info.
      # Disable with: `mulle-sourcetree mark m no-cmakeinherit`
      #
      # // temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_M_ROOT "${M_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_M_ROOT "${_TMP_M_ROOT}" DIRECTORY)
      #
      #
      # Search for "DependenciesAndLibraries.cmake" to include.
      # Disable with: `mulle-sourcetree mark m no-cmakedependency`
      #
      foreach( _TMP_M_NAME "m")
         set( _TMP_M_DIR "${_TMP_M_ROOT}/include/${_TMP_M_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( EXISTS "${_TMP_M_DIR}/DependenciesAndLibraries.cmake")
            unset( M_DEFINITIONS)
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_M_DIR}")
            # we only want top level INHERIT_OBJC_LOADERS, so disable them
            if( NOT NO_INHERIT_OBJC_LOADERS)
               set( NO_INHERIT_OBJC_LOADERS OFF)
            endif()
            list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
            set( NO_INHERIT_OBJC_LOADERS ON)
            #
            include( "${_TMP_M_DIR}/DependenciesAndLibraries.cmake")
            #
            list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
            list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_M_DIR}")
            set( INHERITED_DEFINITIONS
               ${INHERITED_DEFINITIONS}
               ${M_DEFINITIONS}
               CACHE INTERNAL "need to cache this"
            )
            break()
         else()
            message( STATUS "${_TMP_M_DIR}/DependenciesAndLibraries.cmake not found")
         endif()
      endforeach()
   else()
      message( FATAL_ERROR "M_LIBRARY was not found")
   endif()
endif()


#
# Generated from sourcetree: z;no-all-load,no-build,no-cmakeinherit,no-delete,no-dependency,no-fs,no-header,no-import,no-share,no-update;
# Disable with: `mulle-sourcetree mark z no-link`
#
if( NOT Z_LIBRARY)
   find_library( Z_LIBRARY NAMES z)
   message( STATUS "Z_LIBRARY is ${Z_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( Z_LIBRARY)
      #
      # Add Z_LIBRARY to OS_SPECIFIC_LIBRARIES list.
      # Disable with: `mulle-sourcetree mark z no-cmakeadd`
      #
      set( OS_SPECIFIC_LIBRARIES
         ${OS_SPECIFIC_LIBRARIES}
         ${Z_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      # intentionally left blank
   else()
      message( FATAL_ERROR "Z_LIBRARY was not found")
   endif()
endif()


#
# Generated from sourcetree: bz2;no-all-load,no-build,no-cmakeinherit,no-delete,no-dependency,no-fs,no-header,no-import,no-share,no-update;
# Disable with: `mulle-sourcetree mark bz2 no-link`
#
if( NOT BZ2_LIBRARY)
   find_library( BZ2_LIBRARY NAMES bz2)
   message( STATUS "BZ2_LIBRARY is ${BZ2_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( BZ2_LIBRARY)
      #
      # Add BZ2_LIBRARY to OS_SPECIFIC_LIBRARIES list.
      # Disable with: `mulle-sourcetree mark bz2 no-cmakeadd`
      #
      set( OS_SPECIFIC_LIBRARIES
         ${OS_SPECIFIC_LIBRARIES}
         ${BZ2_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      # intentionally left blank
   else()
      message( FATAL_ERROR "BZ2_LIBRARY was not found")
   endif()
endif()


#
# Generated from sourcetree: png;no-all-load,no-build,no-cmakeinherit,no-delete,no-dependency,no-fs,no-header,no-import,no-share,no-update;
# Disable with: `mulle-sourcetree mark png no-link`
#
if( NOT PNG_LIBRARY)
   find_library( PNG_LIBRARY NAMES png)
   message( STATUS "PNG_LIBRARY is ${PNG_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( PNG_LIBRARY)
      #
      # Add PNG_LIBRARY to OS_SPECIFIC_LIBRARIES list.
      # Disable with: `mulle-sourcetree mark png no-cmakeadd`
      #
      set( OS_SPECIFIC_LIBRARIES
         ${OS_SPECIFIC_LIBRARIES}
         ${PNG_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      # intentionally left blank
   else()
      message( FATAL_ERROR "PNG_LIBRARY was not found")
   endif()
endif()


#
# Generated from sourcetree: harfbuzz;no-all-load,no-build,no-cmakeinherit,no-delete,no-dependency,no-fs,no-header,no-import,no-share,no-update;
# Disable with: `mulle-sourcetree mark harfbuzz no-link`
#
if( NOT HARFBUZZ_LIBRARY)
   find_library( HARFBUZZ_LIBRARY NAMES harfbuzz)
   message( STATUS "HARFBUZZ_LIBRARY is ${HARFBUZZ_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( HARFBUZZ_LIBRARY)
      #
      # Add HARFBUZZ_LIBRARY to OS_SPECIFIC_LIBRARIES list.
      # Disable with: `mulle-sourcetree mark harfbuzz no-cmakeadd`
      #
      set( OS_SPECIFIC_LIBRARIES
         ${OS_SPECIFIC_LIBRARIES}
         ${HARFBUZZ_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      # intentionally left blank
   else()
      message( FATAL_ERROR "HARFBUZZ_LIBRARY was not found")
   endif()
endif()
