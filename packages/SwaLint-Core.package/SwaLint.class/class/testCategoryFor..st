categories
testCategoryFor: aSymbol

	^ self categories
		at: aSymbol ifAbsentPut: [OrderedCollection new]