tests
classAMW: aSLClassTestObject

	<slTestName: 'Average Method Weight of a class [AMW]'
	description: 'Answers the Average Method Weight of a class.' >

	| amw methodNumber totalWeight |
	
	methodNumber := (aSLClassTestObject resultOf: #numberOfMethods:) result.
	totalWeight := (aSLClassTestObject resultOf: #weightedMethodCount:) result.
	amw := (methodNumber = 0) ifTrue: [ 0 ]
								   ifFalse: [ totalWeight / methodNumber ].
	
	^ self numericResult: amw withThresholdFor: #MethodCYCLO