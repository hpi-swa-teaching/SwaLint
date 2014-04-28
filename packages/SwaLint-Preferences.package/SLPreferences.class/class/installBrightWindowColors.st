window colors
installBrightWindowColors
	"Install the factory-provided default window colors for all tools"

	"Preferences installBrightWindowColors"

	self installWindowColorsVia: [:aSpec | aSpec brightColor]