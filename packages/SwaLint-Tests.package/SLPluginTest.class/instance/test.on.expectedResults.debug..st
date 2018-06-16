testing
test: aTestSymbol on: aObjectArray expectedResults: aResultValueArray debug: aBoolean

	| testObjects realResult|
	testObjects := aObjectArray collect: [ :aObject |
		aObject isArray
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
		realResult := (aTestObject resultValueOf: aTestSymbol).
		self printResults: (aTestObject resultOf: aTestSymbol)
			expected: (aResultValueArray at: index) if: aBoolean.
		
		self 
			shouldnt: [aTestObject resultValueOf: aTestSymbol] 
			raise: SLTestError 
			description: 'Test answered error result'.
		
		self assert: 
			(aTestObject resultValueOf: aTestSymbol) = 
			(aResultValueArray at: index)
			description: 'Test answered wrong value: ', realResult asString, ' expected: ', (aResultValueArray at: index)].

