standard queries
syntaxHighlightingAsYouType
	^ self
		valueOfFlag: #syntaxHighlightingAsYouType
		ifAbsent: [true]