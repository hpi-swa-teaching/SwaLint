menu parameters
restoreDefaultMenuParameters
	"Restore the four color choices of the original implementors of  
	MorphicMenus"
	" 
	Preferences restoreDefaultMenuParameters
	"
	Parameters
		at: #menuColor
		put: (Color
				r: 0.97
				g: 0.97
				b: 0.97).
	Parameters
		at: #menuBorderColor
		put: (Color
				r: 0.167
				g: 0.167
				b: 1.0).
	Parameters at: #menuBorderWidth put: 2.
	Parameters at: #menuTitleColor put: (Color
			r: 0.4
			g: 0.8
			b: 0.9) twiceDarker.
	Parameters
		at: #menuTitleBorderColor
		put: (Color
				r: 0.333
				g: 0.667
				b: 0.751).
	Parameters at: #menuTitleBorderWidth put: 1.
	Parameters
		at: #menuLineColor
		put: ((Smalltalk at: #UITheme ifAbsent: [])
				ifNil: [(UserInterfaceTheme current get: #borderColor for: #MenuMorph) lighter]
				ifNotNilDo: [:uiTheme | uiTheme current settings menuBorderColor lighter])