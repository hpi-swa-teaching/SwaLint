private
significantStandaloneExactClone: aSLMethodTestObject with: anotherSLMethodTestObject

	|maxLines testLines compLines currentClone maxCloneSize|
	
	testLines := aSLMethodTestObject sourceString lines.
	compLines := anotherSLMethodTestObject sourceString lines.
	(compLines size > testLines size)
						ifTrue: [maxLines := compLines size]
						ifFalse:	[maxLines := testLines size].
	maxCloneSize := 0.
	(1 to: testLines size) do:
		[:testIndex |(1 to: compLines size) do:
			[:compIndex | currentClone := self searchCloneIn: testLines from: testIndex
							comparedWith: compLines from: compIndex range: maxLines.
			currentClone ifNotNil: [((currentClone at: #cloneSize) >
							(self preference: #SignificantStandaloneExactCloneSize)) ifTrue:
							[^true]]
			]].
	^false