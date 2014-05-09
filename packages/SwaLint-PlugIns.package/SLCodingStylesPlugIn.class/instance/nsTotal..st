namespace tests
nsTotal: aSLSystemTestObject

	| set |
	aSLSystemTestObject shouldBeSystem.
	set := Set new.
	(aSLSystemTestObject resultOf: #nsDict) valuesDo: [ :each |
		set add: each].
	^ self fewManyResult: set size