accessing
orderBySymbol

	^ self isOrderedByTests
		ifTrue: [#tests]
		ifFalse: [#classes]