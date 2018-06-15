private
buildNormalizedSource
	| bodyStart bodyWithoutMessageName |
	bodyStart := self startOfMethodBodyIn: self sourceString.
	bodyWithoutMessageName := self sourceString
				allButFirst: (bodyStart min: self sourceString size).
	^ ((bodyWithoutMessageName lines
		collect: [:line | line withBlanksCondensed])
		reject: [:line | line isEmpty])
		asStringWithCr