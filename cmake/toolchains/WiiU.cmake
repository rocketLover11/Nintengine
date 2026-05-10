if(NOT DEFINED ENV{DEVKITPRO})
    message(FATAL_ERROR "DEVKITPRO is not set. Please install it with the platforms you want to build with.")
elseif(NOT DEFINED ENV{DEVKITPPC})
    message(FATAL_ERROR "DEVKITPPC is not set. Please install it.")
endif()

set(DEVKITPRO "$ENV{DEVKITPRO}")
set(DEVKITPPC "$ENV{DEVKITPPC}")

include("${DEVKITPRO}/wut/share/wut.toolchain.cmake")

set(PLATFORM "WIIU")