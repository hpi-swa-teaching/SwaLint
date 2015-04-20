private
buildNormalizedSource

	^ (((self sourceString allButFirst: (self startOfMethodBodyIn: self sourceString)) lines
		collect: [:line | line withBlanksCondensed])
		reject: [:line | line isEmpty])
		asStringWithCr