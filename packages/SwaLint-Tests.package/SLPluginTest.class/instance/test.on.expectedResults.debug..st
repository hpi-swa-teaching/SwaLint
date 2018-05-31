testing
test: aTestSymbol on: aObjectArray expectedResults: aResultValueArray debug: aBoolean

	| testObjects realResult |
	testObjects := aObjectArray collect: [ :aObject |
		aObject isCollection
			ifFalse: [aObject as: SLTestObject]
			ifTrue: [
				| sysobj |
				sysobj := SLSystemTestObject newFromTestObjects: (aObject collect:
					[ :aNestedObject | aNestedObject as: SLTestObject ]).
				sysobj testRunner: testRunner.
				sysobj
			]
	].

	self shouldnt: [
		testRunner runOnTests: {aTestSymbol} andTestObjects: testObjects.
	] raise: Error description: 'Error while test execution'.
	
	testObjects withIndexDo: [ :aTestObject :index |
		realResult := aTestObject resultOf: aTestSymbol.
		self printResults: (aTestObject resultOf: aTestSymbol)
			expected: (aResultValueArray at: index) if: aBoolean.
		
		self 
			shouldnt: [aTestObject resultValueOf: aTestSymbol] 
			raise: SLTestError 
			description: 'Test answered error result'.
		
		self assert: 
			(aTestObject resultValueOf: aTestSymbol) = 
			(aResultValueArray at: index)
			description: 'Test answered wrong value: ', realResult asString].

