window colors
installWindowColorsVia: colorSpecBlock
	"Install windows colors using colorSpecBlock to deliver the color source for each element; the block is handed a WindowColorSpec object"
	"Preferences installBrightWindowColors"
	
	self windowColorTable do:
		[:aColorSpec | | color |
			color := (Color colorFrom: (colorSpecBlock value: aColorSpec)).
			self setWindowColorFor: aColorSpec classSymbol to: color].
