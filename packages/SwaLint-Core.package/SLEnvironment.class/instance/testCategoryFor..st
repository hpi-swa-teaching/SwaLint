SwaLint
testCategoryFor: aSymbol

	^ self categoryDict
		at: aSymbol ifAbsentPut: [OrderedCollection new]