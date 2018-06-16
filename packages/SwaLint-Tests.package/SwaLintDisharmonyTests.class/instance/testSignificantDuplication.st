testing
testSignificantDuplication

	| duplicationClass duplicationMethod |.
	
	self resetTestSystem.
	
	duplicationClass := SLClassTestObject newFrom: SLTestSignificantDuplication.
	testSystem addClass: duplicationClass.
	duplicationMethod := duplicationClass instanceMethodForSelector: #aCloneChainMessage.
	
	self assert: 1 equals: ((duplicationMethod resultOf: #significantDuplication:) itemCount).
	self assert: ((duplicationMethod resultOf: #significantDuplication:) items includes:
			(duplicationClass instanceMethodForSelector: #anotherCloneChainMessage))