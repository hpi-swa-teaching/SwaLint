tests
myTest: aMethodTestObject
	|methodNode b|
	aMethodTestObject shouldBeMethod.
	
	methodNode := RBParser parseMethod: (aMethodTestObject sourceCode)." ('method0
	1+2.
	^12')."
	b := false.
	methodNode body statements do: [:statement|
		Transcript show: statement selector.
		Transcript show: ((#(#select:) includes: (statement selector))).
		b := b or: ((#(#select:) includes: (statement selector))).].
	 ^self booleanResult: b
	
