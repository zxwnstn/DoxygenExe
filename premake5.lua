workspace "DoxygenEx"
	configurations
	{
		"Debug",
		"Release"
	}
	startproject = "DoxygenEx"

	platforms
	{
		"x86",
	}
	characterset ("MBCS")


outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

project "DoxygenEx"
	location "DoxygenEx"
	kind "ConsoleApp"
	language "C++"


	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"%{prj.name}/src/**.h",
		"%{prj.name}/src/**.cpp"
	}
	includedirs
	{
		"%{prj.name}/src",
	}

	filter "system:windows"
		cppdialect "C++17"
		staticruntime "On"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "On"
		
	filter "configurations:Release"
		runtime "Debug"
		optimize "On"