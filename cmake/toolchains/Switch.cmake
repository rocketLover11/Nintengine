if(NOT DEFINED ENV{DEVKITPRO})
    message(FATAL_ERROR "DEVKITPRO is not set. Please install it with the platforms you want to build with.")
elseif(NOT DEFINED ENV{DEVKITA64})
    message(FATAL_ERROR "DEVKITA64 is not set. Please install it.")
endif()

set(DEVKITPRO "$ENV{DEVKITPRO}")
set(DEVKITA64 "$ENV{DEVKITA64}")

include("${DEVKITPRO}/cmake/Switch.cmake")

set(PLATFORM "SWITCH")