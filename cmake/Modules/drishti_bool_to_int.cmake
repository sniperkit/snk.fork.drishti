# Sniperkit-Bot
# - Status: analyzed

function(drishti_bool_to_int option varName)
  if(${option})
    set(${varName} 1 PARENT_SCOPE)
  else()
    set(${varName} 0 PARENT_SCOPE)
  endif()
endfunction()
