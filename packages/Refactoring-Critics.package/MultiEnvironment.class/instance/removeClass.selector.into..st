removing
removeClass: aClass selector: aSelector into: aValue 
	(environmentDictionaries at: aValue ifAbsentPut: [SelectorEnvironment new]) 
		removeClass: aClass
		selector: aSelector