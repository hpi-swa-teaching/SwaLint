testing
test: aTestSymbol on: aObjectArray expectedResults: aResultValueArray debug: aBoolean

	| testObjects |
	testObjects := aObjectArray collect: [ :aClass | aClass as: SLTestObject ].

	self shouldnt: [
		testRunner runOnTests: {aTestSymbol} andTestObjects: testObjects.
	] raise: Error description: 'Error while test execution'.
	
	testObjects withIndexDo: [ :aTestObject :index |
		self printResults: (aTestObject resultOf: aTestSymbol)
			expected: (aResultValueArray at: index) if: aBoolean.
		
		self 
			shouldnt: [aTestObject resultValueOf: aTestSymbol] 
			raise: SLTestError 
			description: 'Test answered error result'.
		
		self assert: 
			(aTestObject resultValueOf: aTestSymbol) = 
			(aResultValueArray at: index)
			description: 'Test answered wrong value'].

