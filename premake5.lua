project "box2d"
	kind "StaticLib"
	systemversion "latest"
	language "C++"
	cppdialect "C++17"
	staticruntime "On"

	targetdir (bin .. "/%{prj.name}")
	objdir (obj .. "/%{prj.name}")

	files
	{
		"src/**.cpp",
		"src/**.hpp",
		"src/**.h",
		"include/**.h"
	}

	filter "system:windows"

	filter "system:linux"
		pic "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
