class initialization
registerWindowColor
	(Preferences windowColorFor: self name) = Color white
		ifTrue: [ Preferences setWindowColorFor: self name to: (Color r: 0.645 g: 1.0 b: 1.0) ].