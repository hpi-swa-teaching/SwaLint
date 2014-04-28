private
firstAccessedBy: method

	^ self
		firstAccessed: method methodClass allInstVarNames
		by: method