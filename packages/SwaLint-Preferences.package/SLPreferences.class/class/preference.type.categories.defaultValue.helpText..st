pragma-preferences
preference: aPrefName
	type: aType
	categories: aArrayOfCategories
	defaultValue: anObject
	helpText: aHelpText
	
	^ self 
		preference: aPrefName
		type: aType
		categories: aArrayOfCategories
		defaultValue: anObject
		helpText: aHelpText 
		projectLocal: false
		changeInformee: nil
		changeSelector: nil