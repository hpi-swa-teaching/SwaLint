window colors
checkForWindowColors
	(self allPreferences noneSatisfy:  [:aPref | aPref name endsWith: 'WindowColor'])
		ifTrue: [self installBrightWindowColors].