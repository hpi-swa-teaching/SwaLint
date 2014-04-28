window colors
installMissingWindowColors
	"Install the factory-provided bright window colors  -- a one-time bootstrap"
	"Preferences installMissingWindowColors"
	| color |
	self windowColorTable do:
		[:aColorSpec |
			color := (Color colorFrom: aColorSpec brightColor).
			self setWindowColorFor: aColorSpec classSymbol to: color]