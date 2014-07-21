instance creation
newNamed: aSymbol 
	shortDescription: aShortDescription 
	description: aDescription 
	
	^ self newNamed: aSymbol 
		shortDescription: aShortDescription 
		description: aDescription 
		inCategory: nil 
		selector: nil
		longRuntime: false
		plugIn: nil
