adding
addClass: aClass into: aValue 
	(environmentDictionaries at: aValue ifAbsentPut: [SelectorEnvironment new]) 
		addClass: aClass