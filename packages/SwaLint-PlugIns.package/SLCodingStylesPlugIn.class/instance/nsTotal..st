namespace tests
nsTotal: aSLSystemTestObject

	<slTestName: 'Namespace'
	description: 'The detected namespace of a class' >
	<slTestHidden: true
	longRuntime: nil>

	| set |
	aSLSystemTestObject shouldBeSystem.
	set := Set new.
	(aSLSystemTestObject resultOf: #nsDict:) valuesDo: [ :each |
		set add: each].
	^ self fewManyResult: set size