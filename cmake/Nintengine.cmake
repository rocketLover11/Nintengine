if(NOT DEFINED PLATFORM)
    message(FATAL_ERROR
        "PLATFORM is not set.\n"
        "Configure with a Nintengine toolchain file:\n"
        "  cmake -B build -DCMAKE_TOOLCHAIN_FILE=cmake/toolchains/<Platform>.cmake"
    )
endif()

if(PLATFORM STREQUAL "SWITCH")
    set(RENDERER "SDL2")
elseif(PLATFORM STREQUAL "WIIU")
    set(RENDERER "SDL2")
elseif(PLATFORM STREQUAL "N3DS")
    set(RENDERER "CITRO")
elseif(PLATFORM STREQUAL "WII")
    set(RENDERER "GRRLIB")
elseif(PLATFORM STREQUAL "GAMECUBE")
    set(RENDERER "LIBOGC")
endif()

message(STATUS "Platform: ${PLATFORM}")
message(STATUS "Renderer: ${RENDERER}")