window colors
checkForWindowColors
	(self allPreferenceObjects noneSatisfy:  [:aPref | aPref name endsWith: 'WindowColor'])
		ifTrue: [self installBrightWindowColors].