private
withoutEmptyLines: aString

	^ (aString lines
		reject: [:line | line allSatisfy: [:c| c isSeparator]])
		asStringWithCr
