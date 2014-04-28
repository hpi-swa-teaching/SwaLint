window colors
installPastelWindowColors
	"Install the factory-provided default pastel window colors for all tools"

	"Preferences installBrightWindowColors"
	self installWindowColorsVia: [:aSpec | aSpec pastelColor]