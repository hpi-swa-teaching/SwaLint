pragma-preferences
isPreferencePragma: aPragma

	^ (aPragma keyword == #slpreference:type:categories:defaultValue:helpText:) or: 
		(aPragma keyword == #slpreference:type:categories:defaultValue:helpText:projectLocal:changeInformee:changeSelector:)