window colors
installMissingWindowColors
	"Install the factory-provided bright window colors  -- a one-time bootstrap"
	"Preferences installMissingWindowColors"
	
	self windowColorTable do:
		[:aColorSpec | | color |
			color := (Color colorFrom: aColorSpec brightColor).
			self setWindowColorFor: aColorSpec classSymbol to: color]