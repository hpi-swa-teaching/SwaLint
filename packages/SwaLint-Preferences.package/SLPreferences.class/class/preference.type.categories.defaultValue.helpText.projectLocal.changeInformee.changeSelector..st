pragma-preferences
preference: aPrefName type: aType categories: aArrayOfCategories defaultValue: anObject helpText: aHelpText projectLocal: aBoolean changeInformee: aSymbol changeSelector: anotherSymbol

	| aPreference |
	
	aPreference := SLPragmaPreference new.
	aPreference 
		name: aPrefName
		defaultValue: anObject
		helpString: aHelpText
		localToProject: aBoolean
		categoryList: aArrayOfCategories
		changeInformee: aSymbol
		changeSelector: anotherSymbol
		viewRegistry: (SLPreferences viewRegisteryFor: aType).
		
	^ aPreference.