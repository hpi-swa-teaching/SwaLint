tests
testSyntheticSignificantDuplication

	| testSize testCloneMethod compCloneMethod testCloneChainMethod compCloneChainMethod plugIn |
	
	plugIn := self plugInClass new.
	
	testCloneMethod := SLMethodTestObject newFrom: (SLTestSignificantDuplication 														lookupSelector: #aCloneMessage).
	compCloneMethod := SLMethodTestObject newFrom: (SLTestSignificantDuplication 													lookupSelector: #anotherCloneMessage).
	(SLSystemTestObject newFromTestObjects: {testCloneMethod . compCloneMethod})
		testRunner: SLTestRunner new.

	testSize := 0.
	plugIn searchCloneIn: testCloneMethod normalizedSourceLines from: 1
		comparedWith: compCloneMethod normalizedSourceLines from: 1 range: 7
		ifFound: [:clone | testSize := clone cloneSize ].
	self assert: 5 equals: testSize.
		
	self deny:(plugIn significantDuplicationChain: testCloneMethod with: compCloneMethod).
	
	testCloneChainMethod := SLMethodTestObject newFrom: (SLTestSignificantDuplication 												lookupSelector: #aCloneChainMessage).
	compCloneChainMethod := SLMethodTestObject newFrom: (SLTestSignificantDuplication 												lookupSelector: #anotherCloneChainMessage).
	(SLSystemTestObject newFromTestObjects: {testCloneChainMethod . compCloneChainMethod})
		testRunner: SLTestRunner new.

	self assert:(plugIn significantDuplicationChain: testCloneChainMethod
						with: compCloneChainMethod)