tests
weightOfClass: aSLClassTestObject

	<slTestName: 'Weight of Class [WOC]'
	description: 'The number of "functional" methods divided by the total number of members.' >

	| a b |
	a := aSLClassTestObject resultOf: #numberOfAccessorMethods:.
	b := aSLClassTestObject resultOf: #numberOfInstanceMethods:.	
	^ self numericResult: ((a > 1) ifTrue: [b/a-1] ifFalse: [b])