initialization
initialize
	super initialize.
	self addActionTitled: 'Bright' target: Preferences selector: #installBrightWindowColors arguments: {} balloonText: 'Use standard bright colors for all windows' translated.
	self addActionTitled: 'Pastel' target: Preferences selector: #installPastelWindowColors arguments: {} balloonText: 'Use standard pastel colors for all windows' translated.	
	self addActionTitled: 'Gray' target: Preferences selector: #installUniformWindowColors arguments: {} balloonText: 'Use gray backgrounds for all standard windows' translated.