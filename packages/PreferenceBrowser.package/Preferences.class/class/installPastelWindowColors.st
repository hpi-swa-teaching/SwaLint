window colors
installPastelWindowColors
	"Install the factory-provided default pastel window colors for all tools"

	"Preferences installPastelWindowColors"
	self installWindowColorsVia: [:aSpec | aSpec pastelColor]