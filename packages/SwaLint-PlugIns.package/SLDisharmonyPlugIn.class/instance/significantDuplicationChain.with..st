private
significantDuplicationChain: aSLMethodTestObject with: anotherSLMethodTestObject

	|currentTestIndex currentCompIndex testLines compLines currentClone chainLength|

	testLines := aSLMethodTestObject sourceString lines.
	compLines := anotherSLMethodTestObject sourceString lines.
	(1 to: (testLines size)) do:
		[:testIndex | (1 to: (compLines size)) do:
			[:compIndex |
			currentTestIndex := testIndex.
			currentCompIndex := compIndex.
			chainLength := 0.
			currentClone := self searchCloneIn: testLines from: currentTestIndex
						comparedWith: compLines from: currentCompIndex range: 0.
			currentClone ifNotNil:[chainLength := chainLength + currentClone at: #cloneSize].
			[currentClone notNil] whileTrue: 
				[currentTestIndex := (currentClone at: #testCloneStart) + (currentClone at: #cloneSize).
				currentCompIndex := (currentClone at: #compCloneStart) + (currentClone at: #cloneSize).
				currentClone := self searchCloneIn: testLines from: currentTestIndex
							comparedWith: compLines from: currentCompIndex range: ((SLPreferences preferenceAt: #SmallLineBias) preferenceValue).
				currentClone ifNotNil: [chainLength := chainLength + (currentClone at: #cloneSize)].
				(chainLength > (self class MinimumDuplicationChainLength)) ifTrue: [^true]]]].
	^false