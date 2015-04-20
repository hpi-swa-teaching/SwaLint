standard queries
syntaxHighlightingAsYouTypeAnsiAssignment
	^ self
		valueOfFlag: #syntaxHighlightingAsYouTypeAnsiAssignment
		ifAbsent: [false]