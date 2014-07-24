testing
test04SyntheticSignificantDuplicationTest

	| testCloneMethod compCloneMethod testCloneChainMethod compCloneChainMethod |
	
	testCloneMethod := SLMethodTestObject newFrom: (SLTestSignificantDuplication 														lookupSelector: #aCloneMessage).
	compCloneMethod := SLMethodTestObject newFrom: (SLTestSignificantDuplication 														lookupSelector: #anotherCloneMessage).

	self assert: (6) equals: 
		((plugIn searchCloneIn: testCloneMethod sourceString lines from: 1
		comparedWith: compCloneMethod sourceString lines from: 1 range: 7) at: #cloneSize).
		
	self deny:(plugIn significantDuplicationChain: testCloneMethod with: compCloneMethod).
	
	testCloneChainMethod := SLMethodTestObject newFrom: (SLTestSignificantDuplication 														lookupSelector: #aCloneChainMessage).
	compCloneChainMethod := SLMethodTestObject newFrom: (SLTestSignificantDuplication 														lookupSelector: #anotherCloneChainMessage).
	
	self assert:(plugIn significantDuplicationChain: testCloneChainMethod with: compCloneChainMethod)