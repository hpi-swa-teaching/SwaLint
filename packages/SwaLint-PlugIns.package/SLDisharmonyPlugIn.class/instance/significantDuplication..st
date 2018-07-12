tests
significantDuplication: aSLMethodTestObject

	<slTestName: 'Significant Duplication' 
	description: 'A Significant Duplication is either a large standalone clone or a chain of exact clones considered to be one exact clone.'>
	<slTestHidden: nil
	longRuntime: true>

	| significantDuplications |

	aSLMethodTestObject ifClassTestChildrenWith: #significantDuplication:.
	aSLMethodTestObject shouldBeMethod.

	significantDuplications := aSLMethodTestObject testSystem significantDuplicationUnseenMethods select: [ :each |
			((self significantDuplicationChain: aSLMethodTestObject with: each) or:
			[ self significantStandaloneExactClone: aSLMethodTestObject with: each ])].
	aSLMethodTestObject testSystem significantDuplicationUnseenMethods
		remove: aSLMethodTestObject.
	^ self methodListResult: significantDuplications