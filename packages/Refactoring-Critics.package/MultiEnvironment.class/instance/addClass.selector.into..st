adding
addClass: aClass selector: aSymbol into: aValue 
	(environmentDictionaries at: aValue ifAbsentPut: [SelectorEnvironment new]) 
		addClass: aClass
		selector: aSymbol