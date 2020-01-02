qproject "jsoncpp"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/json/allocator.h",
		"include/json/assertions.h",
		"include/json/config.h",
		"include/json/forwards.h",
		"include/json/json.h",
		"include/json/json_features.h",
		"include/json/reader.h",
		"include/json/value.h",
		"include/json/version.h",
		"include/json/write.h"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"