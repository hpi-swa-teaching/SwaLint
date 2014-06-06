testing
test05SignificantDuplication

	| duplicationClass duplicationMethod |
	
	self configureTestDictionaryForSignificantDuplication.
	
	duplicationClass := SLClassTestObject newFrom: SLTestSignificantDuplication.
	testSystem addClass: duplicationClass.
	duplicationMethod := duplicationClass instanceMethodForSelector: #aCloneChainMessage.
	
	self assert: ((duplicationMethod resultOf: #significantDuplication) itemCount) equals: 1.
	self assert: ((duplicationMethod resultOf: #significantDuplication) items includes:
			(duplicationClass instanceMethodForSelector: #anotherCloneChainMessage))