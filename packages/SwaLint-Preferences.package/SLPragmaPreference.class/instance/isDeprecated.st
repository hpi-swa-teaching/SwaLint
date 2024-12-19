testing
isDeprecated

	^ self isObsolete or: [(provider class lookupSelector: getter) isDeprecated
		or: [(provider class lookupSelector: setter) isDeprecated]]