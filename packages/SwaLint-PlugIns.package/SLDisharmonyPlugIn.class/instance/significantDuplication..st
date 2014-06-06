tests
significantDuplication: aSLMethodTestObject

	|allMethods significantDuplications|

	aSLMethodTestObject ifClassTestChildrenWith: #significantDuplication.
	aSLMethodTestObject shouldBeMethod.
	allMethods := aSLMethodTestObject testSystem allMethods copy.
	allMethods remove: aSLMethodTestObject.
	significantDuplications := allMethods select: 
				[:each | ((self significantDuplicationChain: aSLMethodTestObject with: each) or:
								(self significantStandaloneExactClone: aSLMethodTestObject with: each))].
	^self collectionResult: significantDuplications.