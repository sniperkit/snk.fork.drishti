# Sniperkit-Bot
# - Status: analyzed

function(drishti_mirror_definition varName)
  if(${varName})
    add_definitions(-D${${varName}}=1)
  else()
    add_definitions(-D${${varName}}=0)
  endif()
endfunction(drishti_mirror_definition)
