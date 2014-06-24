private
searchCloneIn: testLines from: testIndex comparedWith: compLines from: compIndex range: range

	|testCloneStart compCloneStart cloneSize maxTestIndex maxCompIndex |
	
	((testIndex > testLines size) or: (compIndex > compLines size)) ifTrue: [^nil].
	maxTestIndex := testIndex + range.
	(maxTestIndex > testLines size) ifTrue: [maxTestIndex := testLines size].
	maxCompIndex := compIndex + range.
	(maxCompIndex > compLines size) ifTrue: [maxCompIndex := compLines size].
	
	(testIndex to: maxTestIndex) do: 
		[:currentIndex| (compIndex to: maxCompIndex) do:
			[:currentCompIndex | ((testLines at: currentIndex) = (compLines at: currentCompIndex)) ifTrue:
				[cloneSize := 1.
				testCloneStart := currentIndex.
				compCloneStart := currentCompIndex.
				[self lineIn: testLines at: currentIndex + cloneSize 
					equals: compLines at: currentCompIndex + cloneSize] whileTrue:
						[cloneSize := cloneSize + 1].
				(cloneSize > (self preference: #MinimumExactCloneSize)) ifTrue:
										[^Dictionary newFrom: 
										{(#cloneSize -> cloneSize).
										(#testCloneStart -> testCloneStart).
										(#compCloneStart -> compCloneStart).}]]]].
	^nil