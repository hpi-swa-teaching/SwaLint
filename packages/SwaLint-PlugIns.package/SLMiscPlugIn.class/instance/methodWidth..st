method tests
methodWidth: aSLMethodTestObject

	| w |
	aSLMethodTestObject shouldBeMethod.
	aSLMethodTestObject sourceCode string linesDo: [ :line |
		w := (w ifNil: [0]) max: line size].
	^ self numericResult: w