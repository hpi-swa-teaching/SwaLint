tests
significantDuplication: aSLMethodTestObject

	| significantDuplications |

	aSLMethodTestObject ifClassTestChildrenWith: #significantDuplication.
	aSLMethodTestObject shouldBeMethod.

	significantDuplications := aSLMethodTestObject testSystem significantDuplicationUnseenMethods select: [ :each |
			((self significantDuplicationChain: aSLMethodTestObject with: each) or:
			[ self significantStandaloneExactClone: aSLMethodTestObject with: each ])].
	aSLMethodTestObject testSystem significantDuplicationUnseenMethods
		remove: aSLMethodTestObject.
	^ self methodListResult: significantDuplications