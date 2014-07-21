instance creation
newNamed: aSymbol 
	shortDescription: aShortDescription 
	description: aDescription 
	inCategory: aCategorySymbol 
	selector: aMethodSelector
	longRuntime: aBoolean
	plugIn: aSLPlugInClass
	
	^ self new
		plugIn: aSLPlugInClass;
		symbol: aSymbol;
		name: (aShortDescription ifNil: [aSymbol asString]);
		description: (aDescription ifNil: ['no description']);
		category: (aCategorySymbol ifNil: [self defaultCategoryOf: aSLPlugInClass]);
		method: (aMethodSelector ifNil: [(aSymbol, ':') asSymbol]);
		longRuntime: aBoolean.
