workspace "wordle"
    configurations { "debug", "release" }

    objdir "build/obj/%{cfg.buildcfg}"
    targetdir "build/bin/%{cfg.buildcfg}"

    language "C++"
    cppdialect "C++20"

    filter "configurations:debug"
        defines { "DEBUG" }
        symbols "On"

    filter "configurations:release"
        defines { "NDEBUG" }
        optimize "Speed"


project "wordle-desktop"
    kind "WindowedApp"

    includedirs { "include" }

    buildoptions { "`pkg-config --cflags sfml-graphics`" }

    links { "sfml-graphics" }

    files {
        "include/*.hpp",
        "src/*.cpp",
    }
