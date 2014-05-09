tests
newlyAddedServicesRatio: aSLClassTestObject

	| a b |
	a := aSLClassTestObject resultOf: #numberOfAddedServices.
	b := aSLClassTestObject resultOf: #numberOfInstanceMethods.	
	^ (b > 0) 
		ifTrue: [self percentageResult: (a / b)]
		ifFalse: [self integerResult: 0]