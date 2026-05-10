if(NOT DEFINED ENV{DEVKITPRO})
    message(FATAL_ERROR "DEVKITPRO is not set. Please install it with the platforms you want to build with.")
elseif(NOT DEFINED ENV{DEVKITARM})
    message(FATAL_ERROR "DEVKITARM is not set. Please install it.")
endif()

set(DEVKITPRO "$ENV{DEVKITPRO}")
set(DEVKITARM "$ENV{DEVKITARM}")

include("${DEVKITPRO}/cmake/3DS.cmake")

set(PLATFORM "N3DS")