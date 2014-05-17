removing
removeClass: aClass into: aValue 
	(environmentDictionaries at: aValue ifAbsent: [SelectorEnvironment new]) 
		removeClass: aClass