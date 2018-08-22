menu parameters
restoreDefaultMenuParameters
	"Restore the four color choices of the original implementors of  
	MorphicMenus"
	" 
	Preferences restoreDefaultMenuParameters
	"
	Parameters
		at: #menuColor
		put: (self menuColor).
	Parameters
		at: #menuBorderColor
		put: (self menuBorderColor).
	Parameters at: #menuBorderWidth put: 2.
	Parameters at: #menuTitleColor put: (self menuTitleColor) twiceDarker.
	Parameters
		at: #menuTitleBorderColor
		put: (self menuTitleBorderColor).
	Parameters at: #menuTitleBorderWidth put: 1.
	Parameters
		at: #menuLineColor
		put: ((Smalltalk at: #UITheme ifAbsent: [])
				ifNil: [(UserInterfaceTheme current get: #borderColor for: #MenuMorph) lighter]
				ifNotNilDo: [:uiTheme | uiTheme current settings menuBorderColor lighter])