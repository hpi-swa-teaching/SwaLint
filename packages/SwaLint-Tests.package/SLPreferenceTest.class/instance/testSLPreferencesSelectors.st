as yet unclassified
testSLPreferencesSelectors
	
	| aSLPreference |
	
	aSLPreference := SLPreference new.
	aSLPreference name: 'A test name' defaultValue: true helpString: '' localToProject: true categoryList: {} changeInformee: nil changeSelector:  nil viewRegistry: nil.
	
	self assert: aSLPreference selectors equals: 'Atestname'.
	
