private
significantDuplicationChain: aSLMethodTestObject with: anotherSLMethodTestObject

	|currentTestIndex currentCompIndex testLines compLines maxLines currentClone chainLength|

	testLines := aSLMethodTestObject sourceString lines.
	compLines := anotherSLMethodTestObject sourceString lines.
	(compLines size > testLines size)
						ifTrue: [maxLines := compLines size]
						ifFalse:	[maxLines := testLines size].
	(1 to: (testLines size)) do:
		[:testIndex | (1 to: (compLines size)) do:
			[:compIndex |
			currentTestIndex := testIndex.
			currentCompIndex := compIndex.
			chainLength := 0.
			currentClone := self searchCloneIn: testLines from: currentTestIndex
						comparedWith: compLines from: currentCompIndex range: maxLines.
			currentClone ifNotNil:[chainLength := chainLength + 1].
			[currentClone notNil] whileTrue: 
				[currentTestIndex := (currentClone at: #testCloneStart) + (currentClone at: #cloneSize).
				currentCompIndex := (currentClone at: #compCloneStart) + (currentClone at: #cloneSize).
				currentClone := self searchCloneIn: testLines from: currentTestIndex
							comparedWith: compLines from: currentCompIndex range: 3.
				currentClone ifNotNil: [chainLength := chainLength + 1].
				(chainLength > 1) ifTrue: [^true]]]].
	^false