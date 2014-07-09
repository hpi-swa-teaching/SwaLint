preferences
LargeClassLOC

	<slpreference: 'Large class LOC'
	type: #Numeric
	categories: #(Disharmony)
	defaultValue: nil
	helpText: 'Lines of code for large classes. '>
	
	^ LargeClassLOC 
		ifNil: [(((SLPreferences preferenceAt: #ClassLOCAVRG) preferenceValue) + 
			((SLPreferences preferenceAt: #ClassLOCSTDEV) preferenceValue)) * 3].