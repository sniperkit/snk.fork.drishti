# Sniperkit-Bot
# - Status: analyzed

macro(drishti_print_env_var)
  get_cmake_property(_variableNames VARIABLES)
  foreach (_variableName ${_variableNames})
    message(STATUS "VARIABLE: ${_variableName}=${${_variableName}}")
  endforeach()
endmacro()
