themes - small-land
smallLandFonts
	"private - change the fonts to small-land's  
	choices"
	" 
	Preferences smallLandFonts.  
	"
	Preferences bigDisplay
		ifTrue: [^ self smallLandBigFonts].
	Preferences tinyDisplay
		ifTrue: [^ self smallLandTinyFonts].
	self smallLandSmallFonts