halos
installHaloTheme: themeSymbol
	self installHaloSpecsFromArray: (self perform: themeSymbol).
	(self preferenceAt: #haloTheme) preferenceValue: themeSymbol.
	