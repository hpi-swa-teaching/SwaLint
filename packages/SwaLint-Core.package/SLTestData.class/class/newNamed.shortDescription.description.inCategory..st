instance creation
newNamed: aSymbol 
	shortDescription: aShortDescription 
	description: aDescription 
	inCategory: aCategorySymbol 
	
	^ self newNamed: aSymbol 
		shortDescription: aShortDescription 
		description: aDescription 
		inCategory: aCategorySymbol 
		selector: nil 
		plugIn: nil
