accessing
category: aSymbol

	^ systemClasses 
		at: aSymbol 
		ifAbsentPut: [OrderedCollection new]