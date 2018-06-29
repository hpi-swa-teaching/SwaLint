as yet unclassified
unreferencedVariable: aSLClassTestObject

	<slTestName:  'Unreferenced variables'
	description: 'Check for (class and instannce) variables not referenced. If a variable is not used in a class, it should be deleted'
	category: 'Unnecessary code'>
	
	| allSubclasses |
	aSLClassTestObject shouldBeClass.

	allSubclasses := aSLClassTestObject testClass withAllSubclasses.
	aSLClassTestObject testClass instVarNames do: 
		[ :each | 
		allSubclasses 
			detect: [ :class | (class whichSelectorsAccess: each) isEmpty not ]
			ifNone: 
				[ ^self successResult: true ] ].
	aSLClassTestObject testClass isMeta ifFalse: 
		[ aSLClassTestObject testClass classPool associationsDo: 
			[ :each |
		((each value isNil) or: [aSLClassTestObject uses: each]) ifFalse: 
				[ ^self successResult: true] ] ].
	
	^self successResult: false